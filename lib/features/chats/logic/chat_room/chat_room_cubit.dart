// lib/features/chats/logic/chat_room/chat_room_cubit.dart

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
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

  Future<void> init(String currentUserId) async {
    _currentUserId = currentUserId;
    _otherUserId = null;

    print('🔄 Initializing chat room: $chatId');

    // ✅ Mark as read via API
    try {
      await _markChatAsReadViaAPI();
    } catch (e) {
      print('⚠️ Failed to mark as read: $e');
    }

    // Wait for socket connection
    if (!_socketService.isConnected) {
      print('⏳ Waiting for socket to connect...');
      await Future.delayed(const Duration(milliseconds: 500));

      int attempts = 0;
      while (!_socketService.isConnected && attempts < 10) {
        await Future.delayed(const Duration(milliseconds: 500));
        attempts++;
      }

      if (!_socketService.isConnected) {
        print('❌ Socket connection timeout');
        emit(const ChatRoomState.error('فشل الاتصال بالخادم'));
        return;
      }
    }

    print('✅ Socket connected - joining chat');

    // Join chat room
    _socketService.joinChat(chatId);

    // Setup socket listeners
    _setupSocketListeners();

    // Load chat and messages
    await _loadChatAndMessages();
  }

  Future<void> _markChatAsReadViaAPI() async {
    try {
      // استخدم الـ socket event
      if (_socketService.isConnected) {
        _socketService.markRead(chatId);
        print('✅ Marked as read via socket');
      }
    } catch (e) {
      print('❌ Error marking as read: $e');
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
      _messages = messagesResponse.data;

      emit(ChatRoomState.success(
        chat: _currentChat!,
        messages: _messages,
        isOtherUserOnline: false,
        isOtherUserTyping: false,
      ));

      // ✅ Mark as read - بس لو فيه رسائل من الطرف الآخر
      final hasUnreadMessages = _messages.any(
            (msg) => msg.senderId != _currentUserId && msg.readAt == null,
      );

      if (hasUnreadMessages) {
        print('📖 Marking unread messages as read');
        _socketService.markRead(chatId);
      } else {
        print('ℹ️ No unread messages from other user');
      }
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message ?? 'فشل تحميل المحادثة'));
    }
  }

  void _setupSocketListeners() {
    // Message sent confirmation
    _messageSentSub = _socketService.messageSentStream.listen((data) {
      print('📤 Message sent confirmation: $data');

      final message = MessageModel.fromJson(data['message']);

      if (message.chatId == chatId) {
        print('✅ Replacing optimistic message with confirmed message');

        final index = _messages.indexWhere((m) =>
        m.isOptimistic && m.body == message.body && m.type == message.type);

        if (index != -1) {
          _messages = [
            ..._messages.sublist(0, index),
            message,
            ..._messages.sublist(index + 1),
          ];
          _emitSuccessState();
          print('✅ Optimistic message replaced');
        } else {
          print('⚠️ Optimistic message not found, adding new message');
          _messages = [..._messages, message];
          _emitSuccessState();
        }
      }
    });

    // New message received
    _newMessageSub = _socketService.newMessageStream.listen((data) {
      print('📩 Socket event received: $data');

      final eventType = data['type'] as String?;

      if (eventType == 'message_edited') {
        // ✅ Handle edited message
        print('✏️ Handling edited message');
        final messageData = data['message'];
        final messageId = messageData['id'] as String;

        final index = _messages.indexWhere((m) => m.id == messageId);
        if (index != -1) {
          final updatedMessage = MessageModel.fromJson(messageData);

          _messages = [
            ..._messages.sublist(0, index),
            updatedMessage,
            ..._messages.sublist(index + 1),
          ];

          _emitSuccessState();
          print('✅ Message edited in UI');
        } else {
          print('⚠️ Message not found for edit: $messageId');
        }
      } else if (eventType == 'message_deleted') {
        // ✅ Handle deleted message
        print('🗑️ Handling deleted message');
        final messageData = data['message'];
        final messageId = messageData['id'] as String;

        final index = _messages.indexWhere((m) => m.id == messageId);
        if (index != -1) {
          final deletedMessage = MessageModel.fromJson(messageData);

          _messages = [
            ..._messages.sublist(0, index),
            deletedMessage,
            ..._messages.sublist(index + 1),
          ];

          _emitSuccessState();
          print('✅ Message marked as deleted in UI');
        } else {
          print('⚠️ Message not found for delete: $messageId');
        }
      } else {
        // ✅ Handle new message
        final message = MessageModel.fromJson(data['message']);

        if (message.chatId == chatId && message.senderId != _currentUserId) {
          print('✅ Adding received message from other user');
          _messages = [..._messages, message];
          _emitSuccessState();

          _socketService.markRead(chatId);
          print('✅ Marked as read');
        } else if (message.senderId == _currentUserId) {
          print('ℹ️ Ignoring my own message (already handled by message_sent)');
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
      print('📖 Messages read event received: $data');

      if (data['chatId'] == chatId) {
        print('✅ Updating read receipts for my messages');

        _messages = _messages.map((msg) {
          if (msg.senderId == _currentUserId && msg.readAt == null) {
            print('✓✓ Marking message as read: ${msg.id}');
            return msg.copyWith(readAt: DateTime.now());
          }
          return msg;
        }).toList();

        _emitSuccessState();
        print('✅ Read receipts updated in UI');
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

  void _handleEditedMessage(Map<String, dynamic> data) {
    print('✏️ Handling edited message');

    final messageData = data['message'];
    final messageId = messageData['id'] as String;

    final index = _messages.indexWhere((m) => m.id == messageId);
    if (index != -1) {
      final updatedMessage = MessageModel.fromJson(messageData);

      _messages = [
        ..._messages.sublist(0, index),
        updatedMessage,
        ..._messages.sublist(index + 1),
      ];

      _emitSuccessState();
      print('✅ Message edited in UI');
    }
  }

  void _handleDeletedMessage(Map<String, dynamic> data) {
    print('🗑️ Handling deleted message');

    final messageData = data['message'];
    final messageId = messageData['id'] as String;

    final index = _messages.indexWhere((m) => m.id == messageId);
    if (index != -1) {
      final deletedMessage = MessageModel.fromJson(messageData);

      _messages = [
        ..._messages.sublist(0, index),
        deletedMessage, // ✅ نخلي الرسالة موجودة لكن isDeleted = true
        ..._messages.sublist(index + 1),
      ];

      _emitSuccessState();
      print('✅ Message marked as deleted in UI');
    }
  }

  void sendMessage(String body) {
    if (body.trim().isEmpty) return;

    print('📝 Sending message: $body');

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

    print('➕ Adding optimistic message');

    // ✅ اعمل list جديدة تماماً
    _messages = [..._messages, optimisticMessage];

    print('Messages count after add: ${_messages.length}');

    _emitSuccessState();
    print('✅ State emitted with optimistic message');

    // Send via socket
    _socketService.sendMessage(chatId, body);
    print('📡 Message sent via socket');
  }

  final ImagePicker _imagePicker = ImagePicker();
  // ✅ أضف Method - Pick from Gallery
  Future<void> pickImageFromGallery() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 85,
      );

      if (image != null) {
        final file = File(image.path);
        await _sendImageMessage(file);
      }
    } catch (e) {
      print('❌ Error picking image from gallery: $e');
      emit(ChatRoomState.error('فشل اختيار الصورة'));
      _emitSuccessState();
    }
  }

  // ✅ أضف Method - Pick from Camera
  Future<void> pickImageFromCamera() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 85,
      );

      if (image != null) {
        final file = File(image.path);
        await _sendImageMessage(file);
      }
    } catch (e) {
      print('❌ Error picking image from camera: $e');
      emit(ChatRoomState.error('فشل التقاط الصورة'));
      _emitSuccessState();
    }
  }

  // ✅ أضف Method - Send Image Message
  Future<void> _sendImageMessage(File imageFile) async {
    try {
      print('📤 Uploading image...');
      // emit(const ChatRoomState.uploadingImage());

      // 1. Upload image
      final uploadResponse = await _apiService.uploadImage(
        imageFile,
        'chat-images',
      );

      final imageUrl = uploadResponse.data.url;
      print('✅ Image uploaded: $imageUrl');

      // 2. Create optimistic message
      final optimisticMessage = MessageModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        chatId: chatId,
        senderId: _currentUserId!,
        body: '📷', // Empty body for image-only messages
        type: MessageType.image,
        imageUrl: imageUrl,
        createdAt: DateTime.now(),
        isOptimistic: true,
      );

      print('➕ Adding optimistic image message');
      _messages = [..._messages, optimisticMessage];
      _emitSuccessState();

      // 3. Send via Socket
      if (_socketService.isConnected) {
        _socketService.sendMessage(
          chatId,
          '📷',
          type: 'image',
          imageUrl: imageUrl,
        );
        print('📡 Image message sent via socket');
      } else {
        print('⚠️ Socket not connected, reconnecting...');
        await _socketService.connect();

        await Future.delayed(const Duration(milliseconds: 500));

        if (_socketService.isConnected) {
          _socketService.sendMessage(
            chatId,
            '📷',
            type: 'image',
            imageUrl: imageUrl,
          );
          print('✅ Reconnected - Image message sent via socket');
        } else {
          print('❌ Failed to reconnect');
        }
      }

        // 4. Auto scroll to bottom
        // Future.delayed(const Duration(milliseconds: 100), () {
        //   if (_scrollController.hasClients) {
        //     _scrollController.animateTo(
        //       0,
        //       duration: const Duration(milliseconds: 300),
        //       curve: Curves.easeOut,
        //     );
        //   }
        // });
    } catch (e) {
      print('❌ Error sending image: $e');
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message ?? 'فشل إرسال الصورة'));
      _emitSuccessState();
    }
  }

  void setTyping(bool isTyping) {
    if (_socketService.isConnected) {
      _socketService.typing(chatId, isTyping);
      print('⌨️ Typing: $isTyping');
    } else {
      print('❌ Cannot send typing - socket not connected');
    }
  }

/*
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
*/

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
        _messages = [
          ..._messages.sublist(0, index),
          response.data,
          ..._messages.sublist(index + 1),
        ];
        _emitSuccessState();

        // ✅ Emit socket event (optional - الـ API بيعمل broadcast)
        // _socketService.emit('edit_message', {'messageId': messageId, 'body': newBody});
      }
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message ?? 'فشل تعديل الرسالة'));
      _emitSuccessState();
    }
  }

  Future<void> deleteMessage(String messageId) async {
    try {
      await _apiService.deleteMessage(messageId);

      // ✅ بدل ما نشيل الرسالة - نحدثها لـ isDeleted
      final index = _messages.indexWhere((m) => m.id == messageId);
      if (index != -1) {
        _messages = [
          ..._messages.sublist(0, index),
          _messages[index].copyWith(
            isDeleted: true,
            body: '', // ✅ نفضي الـ body
          ),
          ..._messages.sublist(index + 1),
        ];
      }

      _emitSuccessState();

      // ✅ Emit socket event (optional - الـ API بيعمل broadcast)
      // _socketService.emit('delete_message', {'messageId': messageId});
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

      // ✅ خليها زي ما هي - شيل .reversed
      final newMessages = response.data; // ✅ شيل .reversed.toList()

      // ✅ حط الرسائل الجديدة (الأقدم) في الأول
      _messages = [...newMessages, ..._messages];

      _emitSuccessState();
    } catch (e) {
      print('Error loading more messages: $e');
    }
  }

  void _emitSuccessState({bool? isOnline}) {
    if (_currentChat == null) {
      print('❌ Cannot emit state: _currentChat is null');
      return;
    }

    final currentState = state;
    final currentOnlineStatus = currentState.maybeWhen(
      success: (_, __, isOnline, ___) => isOnline,
      orElse: () => false,
    );

    print('📤 Emitting success state with ${_messages.length} messages');

    // ✅ استخدم spread operator عشان تضمن list جديدة
    emit(ChatRoomState.success(
      chat: _currentChat!,
      messages: [..._messages], // ✅ هنا المهم
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