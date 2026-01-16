// lib/features/chats/logic/chat_room/chat_room_cubit.dart

import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../items/data/models/close_item_request.dart';
import '../../../profile/data/models/rate_user_request.dart';
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
  bool _isClosingItem = false;
  bool _isRatingUser = false;
  bool _hasRatedSeller = false;

  StreamSubscription? _newMessageSub;
  StreamSubscription? _messageSentSub;
  StreamSubscription? _userTypingSub;
  StreamSubscription? _messagesReadSub;
  StreamSubscription? _userOnlineSub;
  StreamSubscription? _userOfflineSub;
  StreamSubscription? _onlineStatusesSub;

  ChatRoomCubit(this._apiService, this._socketService, this.chatId)
    : super(const ChatRoomState.initial());

  Future<void> init(String currentUserId) async {
    _currentUserId = currentUserId;
    _otherUserId = null;

    if (kDebugMode) {
      print('🔄 Initializing chat room: $chatId');
    }

    // ✅ Mark as read via API
    try {
      await _markChatAsReadViaAPI();
    } catch (e) {
      if (kDebugMode) {
        print('⚠️ Failed to mark as read: $e');
      }
    }

    // Load chat and messages first (don't block on socket)
    await _loadChatAndMessages();

    // Try to connect socket in background
    _connectSocketAndJoin();
  }

  /// Connect socket and join chat room (non-blocking)
  Future<void> _connectSocketAndJoin() async {
    try {
      // If not connected, try to reconnect
      if (!_socketService.isConnected) {
        if (kDebugMode) {
          print('⏳ Socket not connected, trying to connect...');
        }
        await _socketService.connect();

        // Wait for connection with timeout
        int attempts = 0;
        while (!_socketService.isConnected && attempts < 6) {
          await Future.delayed(const Duration(milliseconds: 500));
          attempts++;
        }
      }

      if (_socketService.isConnected) {
        if (kDebugMode) {
          print('✅ Socket connected - joining chat');
        }
        _socketService.joinChat(chatId);
        _setupSocketListeners();
      } else {
        if (kDebugMode) {
          print('⚠️ Socket not connected - real-time updates disabled');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Socket connection error: $e');
      }
    }
  }

  Future<void> _markChatAsReadViaAPI() async {
    try {
      // استخدم الـ socket event
      if (_socketService.isConnected) {
        _socketService.markRead(chatId);
        if (kDebugMode) {
          print('✅ Marked as read via socket');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error marking as read: $e');
      }
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

      // ✅ canRate from API - if false and user is actual buyer, means already rated
      final canRate = _currentChat!.item?.canRate ?? false;
      final isActualBuyer = _currentChat!.item?.buyerId == _currentUserId;
      _hasRatedSeller = isActualBuyer && !canRate;

      emit(
        ChatRoomState.success(
          chat: _currentChat!,
          messages: _messages,
          isOtherUserOnline: false,
          isOtherUserTyping: false,
          hasRatedSeller: _hasRatedSeller,
        ),
      );

      // ✅ Mark as read - بس لو فيه رسائل من الطرف الآخر
      final hasUnreadMessages = _messages.any(
        (msg) => msg.senderId != _currentUserId && msg.readAt == null,
      );

      if (hasUnreadMessages) {
        if (kDebugMode) {
          print('📖 Marking unread messages as read');
        }
        _socketService.markRead(chatId);
      } else {
        if (kDebugMode) {
          print('ℹ️ No unread messages from other user');
        }
      }
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message));
    }
  }

  void _setupSocketListeners() {
    // Message sent confirmation
    _messageSentSub = _socketService.messageSentStream.listen((data) {
      if (kDebugMode) {
        print('📤 Message sent confirmation: $data');
      }

      final message = MessageModel.fromJson(data['message']);

      if (message.chatId == chatId) {
        if (kDebugMode) {
          print('✅ Replacing optimistic message with confirmed message');
        }

        final index = _messages.indexWhere(
          (m) =>
              m.isOptimistic &&
              m.body == message.body &&
              m.type == message.type,
        );

        if (index != -1) {
          _messages = [
            ..._messages.sublist(0, index),
            message,
            ..._messages.sublist(index + 1),
          ];
          _emitSuccessState();
          if (kDebugMode) {
            print('✅ Optimistic message replaced');
          }
        } else {
          if (kDebugMode) {
            print('⚠️ Optimistic message not found, adding new message');
          }
          _messages = [..._messages, message];
          _emitSuccessState();
        }
      }
    });

    // New message received
    _newMessageSub = _socketService.newMessageStream.listen((data) {
      if (kDebugMode) {
        print('📩 Socket event received: $data');
      }

      final eventType = data['type'] as String?;

      if (eventType == 'message_edited') {
        // ✅ Handle edited message
        if (kDebugMode) {
          print('✏️ Handling edited message');
        }
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
          if (kDebugMode) {
            print('✅ Message edited in UI');
          }
        } else {
          if (kDebugMode) {
            print('⚠️ Message not found for edit: $messageId');
          }
        }
      } else if (eventType == 'message_deleted') {
        // ✅ Handle deleted message
        if (kDebugMode) {
          print('🗑️ Handling deleted message');
        }
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
          if (kDebugMode) {
            print('✅ Message marked as deleted in UI');
          }
        } else {
          if (kDebugMode) {
            print('⚠️ Message not found for delete: $messageId');
          }
        }
      } else {
        // ✅ Handle new message
        final message = MessageModel.fromJson(data['message']);

        if (message.chatId == chatId && message.senderId != _currentUserId) {
          if (kDebugMode) {
            print('✅ Adding received message from other user');
          }
          _messages = [..._messages, message];
          _emitSuccessState();

          _socketService.markRead(chatId);
          if (kDebugMode) {
            print('✅ Marked as read');
          }
        } else if (message.senderId == _currentUserId) {
          if (kDebugMode) {
            print(
              'ℹ️ Ignoring my own message (already handled by message_sent)',
            );
          }
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
      if (kDebugMode) {
        print('📖 Messages read event received: $data');
      }

      if (data['chatId'] == chatId) {
        if (kDebugMode) {
          print('✅ Updating read receipts for my messages');
        }

        _messages = _messages.map((msg) {
          if (msg.senderId == _currentUserId && msg.readAt == null) {
            if (kDebugMode) {
              print('✓✓ Marking message as read: ${msg.id}');
            }
            return msg.copyWith(readAt: DateTime.now());
          }
          return msg;
        }).toList();

        _emitSuccessState();
        if (kDebugMode) {
          print('✅ Read receipts updated in UI');
        }
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

  /*
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
*/
  void sendMessage(String body) {
    if (body.trim().isEmpty) return;

    if (kDebugMode) {
      print('📝 Sending message: $body');
    }

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

    if (kDebugMode) {
      print('➕ Adding optimistic message');
    }

    // ✅ اعمل list جديدة تماماً
    _messages = [..._messages, optimisticMessage];

    if (kDebugMode) {
      print('Messages count after add: ${_messages.length}');
    }

    _emitSuccessState();
    if (kDebugMode) {
      print('✅ State emitted with optimistic message');
    }

    // Send via socket
    _socketService.sendMessage(chatId, body);
    if (kDebugMode) {
      print('📡 Message sent via socket');
    }
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
      if (kDebugMode) {
        print('❌ Error picking image from gallery: $e');
      }
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
      if (kDebugMode) {
        print('❌ Error picking image from camera: $e');
      }
      emit(ChatRoomState.error('فشل التقاط الصورة'));
      _emitSuccessState();
    }
  }

  // ✅ أضف Method - Send Image Message
  Future<void> _sendImageMessage(File imageFile) async {
    try {
      if (kDebugMode) {
        print('📤 Uploading image...');
      }
      // emit(const ChatRoomState.uploadingImage());

      // 1. Upload image
      final uploadResponse = await _apiService.uploadImage(
        imageFile,
        'chat-images',
      );

      final imageUrl = uploadResponse.data.url;
      if (kDebugMode) {
        print('✅ Image uploaded: $imageUrl');
      }

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

      if (kDebugMode) {
        print('➕ Adding optimistic image message');
      }
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
        if (kDebugMode) {
          print('📡 Image message sent via socket');
        }
      } else {
        if (kDebugMode) {
          print('⚠️ Socket not connected, reconnecting...');
        }
        await _socketService.connect();

        await Future.delayed(const Duration(milliseconds: 500));

        if (_socketService.isConnected) {
          _socketService.sendMessage(
            chatId,
            '📷',
            type: 'image',
            imageUrl: imageUrl,
          );
          if (kDebugMode) {
            print('✅ Reconnected - Image message sent via socket');
          }
        } else {
          if (kDebugMode) {
            print('❌ Failed to reconnect');
          }
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
      if (kDebugMode) {
        print('❌ Error sending image: $e');
      }
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message));
      _emitSuccessState();
    }
  }

  void setTyping(bool isTyping) {
    if (_socketService.isConnected) {
      _socketService.typing(chatId, isTyping);
      if (kDebugMode) {
        print('⌨️ Typing: $isTyping');
      }
    } else {
      if (kDebugMode) {
        print('❌ Cannot send typing - socket not connected');
      }
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
      emit(ChatRoomState.error(error.message));
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
      emit(ChatRoomState.error(error.message));
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
      if (kDebugMode) {
        print('Error loading more messages: $e');
      }
    }
  }

  void _emitSuccessState({bool? isOnline}) {
    if (_currentChat == null) {
      if (kDebugMode) {
        print('❌ Cannot emit state: _currentChat is null');
      }
      return;
    }

    final currentState = state;
    final currentOnlineStatus = currentState.maybeWhen(
      success: (_, _, isOnline, _, __, ___, ____) => isOnline,
      orElse: () => false,
    );

    if (kDebugMode) {
      print('📤 Emitting success state with ${_messages.length} messages');
    }

    // ✅ استخدم spread operator عشان تضمن list جديدة
    emit(
      ChatRoomState.success(
        chat: _currentChat!,
        messages: [..._messages], // ✅ هنا المهم
        isOtherUserOnline: isOnline ?? currentOnlineStatus,
        isOtherUserTyping: _isTyping,
        isClosingItem: _isClosingItem,
        isRatingUser: _isRatingUser,
        hasRatedSeller: _hasRatedSeller,
      ),
    );
  }

  /// Close item and mark as sold to the buyer in this chat
  Future<void> closeItemAsSold() async {
    if (_currentChat?.item == null) {
      if (kDebugMode) {
        print('❌ Cannot close item: No item in chat');
      }
      return;
    }

    _isClosingItem = true;
    _emitSuccessState();

    try {
      final request = CloseItemRequest(buyerId: _currentChat!.buyerId);
      await _apiService.closeItem(_currentChat!.item!.id, request);

      // Update local chat item status and buyerId
      _currentChat = _currentChat!.copyWith(
        item: _currentChat!.item!.copyWith(
          status: 'closed',
          buyerId: _currentChat!.buyerId, // ✅ تحديد المشتري الفعلي
        ),
      );

      _isClosingItem = false;
      _emitSuccessState();

      // Send a message to notify about the sale
      final buyerName = _currentChat!.buyer.name;
      final itemTitle = _currentChat!.item!.title;
      sendMessage('تم إتمام عملية البيع بنجاح للمشتري $buyerName على "$itemTitle"');

      if (kDebugMode) {
        print('✅ Item closed successfully');
      }
    } catch (e) {
      _isClosingItem = false;
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message));
      _emitSuccessState();
      if (kDebugMode) {
        print('❌ Error closing item: $e');
      }
    }
  }

  /// Rate the seller (for buyer after item is sold)
  Future<void> rateSeller(int rating, String? comment) async {
    if (_currentChat == null) {
      if (kDebugMode) {
        print('❌ Cannot rate: No chat');
      }
      return;
    }

    _isRatingUser = true;
    _emitSuccessState();

    try {
      await _apiService.rateUser(
        _currentChat!.sellerId,
        RateUserRequest(
          rating: rating,
          comment: comment,
          itemId: _currentChat!.item!.id,
        ),
      );

      _isRatingUser = false;
      _hasRatedSeller = true;
      _emitSuccessState();

      if (kDebugMode) {
        print('✅ Seller rated successfully');
      }
    } catch (e) {
      _isRatingUser = false;
      final error = ApiErrorHandler.handle(e);
      emit(ChatRoomState.error(error.message));
      _emitSuccessState();
      if (kDebugMode) {
        print('❌ Error rating seller: $e');
      }
    }
  }

  /// Check if current user is the seller
  bool get isCurrentUserSeller => _currentChat?.sellerId == _currentUserId;

  /// Check if current user is the buyer
  bool get isCurrentUserBuyer => _currentChat?.buyerId == _currentUserId;

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
