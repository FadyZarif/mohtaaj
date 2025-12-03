// lib/features/chats/logic/chat_room/chat_room_cubit.dart

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/models/chat_model.dart';
import '../../data/services/socket_service.dart';
import 'chat_room_state.dart';

class ChatRoomCubit extends Cubit<ChatRoomState> {
  final ApiService _apiService;
  final SocketService _socketService;
  final String chatId;

  ChatModel? _currentChat;
  List<MessageModel> _messages = [];
  String? _currentUserId;
  String? _otherUserId;
  bool _isTyping = false;
  Timer? _typingTimer;

  StreamSubscription? _newMessageSub;
  StreamSubscription? _messageSentSub;
  StreamSubscription? _userTypingSub;
  StreamSubscription? _messagesReadSub;
  StreamSubscription? _userOnlineSub;
  StreamSubscription? _userOfflineSub;
  StreamSubscription? _onlineStatusesSub;

  ChatRoomCubit(
      this._apiService,
      this._socketService,
      this.chatId,
      ) : super(const ChatRoomState.initial());

  Future<void> init(String userId) async {
    _currentUserId = userId;
    emit(const ChatRoomState.loading());

    // Join chat room
    _socketService.joinChat(chatId);

    // Load chat details & messages
    await _loadChatAndMessages();

    // Setup socket listeners
    _setupSocketListeners();

    // Check online status
    if (_otherUserId != null) {
      _socketService.checkOnline([_otherUserId!]);
    }
  }

  Future<void> _loadChatAndMessages() async {
    try {
      // Load chat details
      final chatResponse = await _apiService.getChatById(chatId);
      _currentChat = chatResponse.data;
      _otherUserId = _currentChat!.buyerId == _currentUserId
          ? _currentChat!.sellerId
          : _currentChat!.buyerId;

      // Load messages
      final messagesResponse = await _apiService.getMessages(chatId, limit: 50);
      _messages = messagesResponse.data.reversed.toList();

      emit(ChatRoomState.success(
        chat: _currentChat!,
        messages: _messages,
        isOtherUserOnline: false,
        isOtherUserTyping: false,
      ));

      // Mark as read
      _socketService.markRead(chatId);
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message ?? 'فشل تحميل المحادثة'));
    }
  }

  void _setupSocketListeners() {
    // New message received
    _newMessageSub = _socketService.newMessageStream.listen((data) {
      final message = MessageModel.fromJson(data['message']);
      if (message.chatId == chatId) {
        _messages.add(message);
        _emitSuccessState();

        // Mark as read
        _socketService.markRead(chatId);
      }
    });

    // Message sent confirmation
    _messageSentSub = _socketService.messageSentStream.listen((data) {
      final message = MessageModel.fromJson(data['message']);
      if (message.chatId == chatId) {
        // Update optimistic message with real data
        final index = _messages.indexWhere(
              (m) => m.isOptimistic && m.body == message.body,
        );
        if (index != -1) {
          _messages[index] = message;
          _emitSuccessState();
        }
      }
    });

    // User typing
    _userTypingSub = _socketService.userTypingStream.listen((data) {
      if (data['chatId'] == chatId && data['userId'] != _currentUserId) {
        _isTyping = data['isTyping'] ?? false;
        _emitSuccessState();
      }
    });

    // Messages read
    _messagesReadSub = _socketService.messagesReadStream.listen((data) {
      if (data['chatId'] == chatId) {
        // Update all unread messages to read
        for (var i = 0; i < _messages.length; i++) {
          if (_messages[i].senderId == _currentUserId && _messages[i].readAt == null) {
            _messages[i] = _messages[i].copyWith(readAt: DateTime.now());
          }
        }
        _emitSuccessState();
      }
    });

    // User online
    _userOnlineSub = _socketService.userOnlineStream.listen((data) {
      if (data['userId'] == _otherUserId) {
        _emitSuccessState(isOnline: true);
      }
    });

    // User offline
    _userOfflineSub = _socketService.userOfflineStream.listen((data) {
      if (data['userId'] == _otherUserId) {
        _emitSuccessState(isOnline: false);
      }
    });

    // Online statuses response
    _onlineStatusesSub = _socketService.onlineStatusesStream.listen((data) {
      final statuses = data['statuses'] as List;
      final userStatus = statuses.firstWhere(
            (s) => s['userId'] == _otherUserId,
        orElse: () => null,
      );
      if (userStatus != null) {
        _emitSuccessState(isOnline: userStatus['isOnline'] ?? false);
      }
    });
  }

  void sendMessage(String body) {
    if (body.trim().isEmpty) return;

    // Optimistic UI update
    final optimisticMessage = MessageModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      chatId: chatId,
      senderId: _currentUserId!,
      body: body,
      type: MessageType.text,
      createdAt: DateTime.now(),
      isOptimistic: true,
    );

    _messages.add(optimisticMessage);
    _emitSuccessState();

    // Send via socket
    _socketService.sendMessage(chatId, body);
  }

  void sendImageMessage(String imageUrl, String body) {
    // Optimistic UI update
    final optimisticMessage = MessageModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      chatId: chatId,
      senderId: _currentUserId!,
      body: body,
      type: MessageType.image,
      imageUrl: imageUrl,
      createdAt: DateTime.now(),
      isOptimistic: true,
    );

    _messages.add(optimisticMessage);
    _emitSuccessState();

    // Send via socket
    _socketService.sendMessage(chatId, body, type: 'image', imageUrl: imageUrl);
  }

  void onTextChanged(String text) {
    // Emit typing event
    _socketService.typing(chatId, true);

    // Cancel previous timer
    _typingTimer?.cancel();

    // Stop typing after 2 seconds
    _typingTimer = Timer(const Duration(seconds: 2), () {
      _socketService.typing(chatId, false);
    });
  }

  Future<void> editMessage(String messageId, String newBody) async {
    emit(const ChatRoomState.editingMessage());

    try {
      final response = await _apiService.editMessage(
        messageId,
        EditMessageRequest(body: newBody),
      );

      final index = _messages.indexWhere((m) => m.id == messageId);
      if (index != -1) {
        _messages[index] = response.data;
        _emitSuccessState();
      }
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message ?? 'فشل تعديل الرسالة'));
      _emitSuccessState(); // Return to success state
    }
  }

  Future<void> deleteMessage(String messageId) async {
    try {
      await _apiService.deleteMessage(messageId);
      _messages.removeWhere((m) => m.id == messageId);
      _emitSuccessState();
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message ?? 'فشل حذف الرسالة'));
      _emitSuccessState();
    }
  }

  Future<void> loadMoreMessages() async {
    if (_messages.isEmpty) return;

    try {
      final oldestMessage = _messages.first;
      final response = await _apiService.getMessages(
        chatId,
        limit: 50,
        before: oldestMessage.createdAt.toIso8601String(),
      );

      final newMessages = response.data.reversed.toList();
      _messages.insertAll(0, newMessages);
      _emitSuccessState();
    } catch (e) {
      // Ignore error for pagination
    }
  }

  void _emitSuccessState({bool? isOnline}) {
    if (_currentChat == null) return;

    final currentState = state;
    final currentOnlineStatus = currentState.maybeWhen(
      success: (_, __, isOnline, ___) => isOnline,
      orElse: () => false,
    );

    emit(ChatRoomState.success(
      chat: _currentChat!,
      messages: List.from(_messages),
      isOtherUserOnline: isOnline ?? currentOnlineStatus,
      isOtherUserTyping: _isTyping,
    ));
  }

  @override
  Future<void> close() {
    // Leave chat room
    _socketService.leaveChat(chatId);

    // Stop typing
    _typingTimer?.cancel();
    _socketService.typing(chatId, false);

    // Cancel subscriptions
    _newMessageSub?.cancel();
    _messageSentSub?.cancel();
    _userTypingSub?.cancel();
    _messagesReadSub?.cancel();
    _userOnlineSub?.cancel();
    _userOfflineSub?.cancel();
    _onlineStatusesSub?.cancel();

    return super.close();
  }
}