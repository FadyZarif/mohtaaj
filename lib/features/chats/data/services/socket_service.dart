// lib/features/chats/data/services/socket_service.dart

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../../../../core/helpers/cache_helper.dart';

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;
  SocketService._internal();

  IO.Socket? _socket;
  bool _isConnected = false;

  // Controllers
  final _connectionController = StreamController<bool>.broadcast();
  final _newMessageController = StreamController<Map<String, dynamic>>.broadcast();
  final _messageSentController = StreamController<Map<String, dynamic>>.broadcast();
  final _messageNotificationController = StreamController<Map<String, dynamic>>.broadcast();
  final _userTypingController = StreamController<Map<String, dynamic>>.broadcast();
  final _messagesReadController = StreamController<Map<String, dynamic>>.broadcast();
  final _userOnlineController = StreamController<Map<String, dynamic>>.broadcast();
  final _userOfflineController = StreamController<Map<String, dynamic>>.broadcast();
  final _onlineStatusesController = StreamController<Map<String, dynamic>>.broadcast();
  final _authInvalidController = StreamController<Map<String, dynamic>>.broadcast();
  final _tokenExpiringController = StreamController<Map<String, dynamic>>.broadcast();

  // Getters
  bool get isConnected => _isConnected;
  Stream<bool> get connectionStream => _connectionController.stream;
  Stream<Map<String, dynamic>> get newMessageStream => _newMessageController.stream;
  Stream<Map<String, dynamic>> get messageSentStream => _messageSentController.stream;
  Stream<Map<String, dynamic>> get messageNotificationStream => _messageNotificationController.stream;
  Stream<Map<String, dynamic>> get userTypingStream => _userTypingController.stream;
  Stream<Map<String, dynamic>> get messagesReadStream => _messagesReadController.stream;
  Stream<Map<String, dynamic>> get userOnlineStream => _userOnlineController.stream;
  Stream<Map<String, dynamic>> get userOfflineStream => _userOfflineController.stream;
  Stream<Map<String, dynamic>> get onlineStatusesStream => _onlineStatusesController.stream;
  Stream<Map<String, dynamic>> get authInvalidStream => _authInvalidController.stream;
  Stream<Map<String, dynamic>> get tokenExpiringStream => _tokenExpiringController.stream;

  Future<void> connect() async {
    if (_socket != null && _isConnected) {
      if (kDebugMode) {
        print('ℹ️ Socket already connected');
      }
      return;
    }

    try {
      if (kDebugMode) {
        print('🔌 Getting token...');
      }
      final token = await CacheHelper.getSecureData(key: 'accessToken');

      if (token == null || token.isEmpty) {
        if (kDebugMode) {
          print('❌ No token found');
        }
        return;
      }

      if (kDebugMode) {
        print('✅ Token found, connecting...');
      }

      _socket = IO.io(
        'https://mohtaaj.onrender.com',
        IO.OptionBuilder()
            .setTransports(['websocket', 'polling'])
            .setAuth({'token': token})
            .enableAutoConnect()
            .enableReconnection()
            .setReconnectionAttempts(5)
            .setReconnectionDelay(1000)
            .build(),
      );

      _setupListeners();
      _socket!.connect();

      if (kDebugMode) {
        print('🚀 Socket connection initiated');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Socket connection error: $e');
      }
    }
  }

  void _setupListeners() {
    // Connection
    _socket!.onConnect((_) {
      _isConnected = true;
      _connectionController.add(true);
      if (kDebugMode) {
        print('✅ Socket Connected');
      }
    });

    _socket!.onDisconnect((_) {
      _isConnected = false;
      _connectionController.add(false);
      if (kDebugMode) {
        print('❌ Socket Disconnected');
      }
    });

    _socket!.onConnectError((error) {
      if (kDebugMode) {
        print('🔴 Connection Error: $error');
      }
    });

    // Auth
    _socket!.on('connected', (data) {
      if (kDebugMode) {
        print('🔗 [Socket] connected: $data');
      }
    });

    _socket!.on('auth_invalid', (data) {
      if (kDebugMode) {
        print('🚫 [Socket] auth_invalid: $data');
      }
      _authInvalidController.add(data);
    });

    _socket!.on('token_expiring_soon', (data) {
      if (kDebugMode) {
        print('⚠️ [Socket] token_expiring_soon: $data');
      }
      _tokenExpiringController.add(data);
    });

    // Messages
    _socket!.on('new_message', (data) {
      if (kDebugMode) {
        print('📩 [Socket] new_message: $data');
      }
      _newMessageController.add(data);
    });

    _socket!.on('message_sent', (data) {
      if (kDebugMode) {
        print('📤 [Socket] message_sent: $data');
      }
      _messageSentController.add(data);
    });

    _socket!.on('new_message_notification', (data) {
      if (kDebugMode) {
        print('🔔 [Socket] new_message_notification: $data');
      }
      _messageNotificationController.add(data);
    });

    // ✅ Edit/Delete Events
    _socket!.on('message_edited', (data) {
      if (kDebugMode) {
        print('✏️ [Socket] message_edited: $data');
      }
      _newMessageController.add({
        'type': 'message_edited',
        'message': data['message'],
      });
    });

    _socket!.on('message_deleted', (data) {
      if (kDebugMode) {
        print('🗑️ [Socket] message_deleted: $data');
      }
      _newMessageController.add({
        'type': 'message_deleted',
        'message': data['message'],
      });
    });

    // Typing
    _socket!.on('user_typing', (data) {
      if (kDebugMode) {
        print('⌨️ [Socket] user_typing: $data');
      }
      _userTypingController.add(data);
    });

    // Read
    _socket!.on('messages_read', (data) {
      if (kDebugMode) {
        print('📖 [Socket] messages_read: $data');
      }
      _messagesReadController.add(data);
    });

    _socket!.on('marked_read', (data) {
      if (kDebugMode) {
        print('✅ [Socket] marked_read: $data');
      }
      _messagesReadController.add({
        'chatId': data['chatId'],
        'userId': data['userId'],
        'timestamp': data['timestamp'],
      });
    });

    // Online Status
    _socket!.on('user_online', (data) {
      if (kDebugMode) {
        print('🟢 [Socket] user_online: $data');
      }
      _userOnlineController.add(data);
    });

    _socket!.on('user_offline', (data) {
      if (kDebugMode) {
        print('⚫ [Socket] user_offline: $data');
      }
      _userOfflineController.add(data);
    });

    _socket!.on('online_statuses', (data) {
      if (kDebugMode) {
        print('📊 [Socket] online_statuses: $data');
      }
      _onlineStatusesController.add(data);
    });

    // Error
    _socket!.on('error', (data) {
      if (kDebugMode) {
        print('🔴 [Socket] error: $data');
      }
    });
  }

  // Emit Events
  void joinChat(String chatId) {
    if (_isConnected) {
      _socket?.emit('join_chat', {'chatId': chatId});
      if (kDebugMode) {
        print('🏠 Joined chat: $chatId');
      }
    } else {
      if (kDebugMode) {
        print('❌ Cannot join - not connected');
      }
    }
  }

  void leaveChat(String chatId) {
    if (_isConnected) {
      _socket?.emit('leave_chat', {'chatId': chatId});
      if (kDebugMode) {
        print('🚪 Left chat: $chatId');
      }
    }
  }

  void sendMessage(String chatId, String body, {String type = 'text', String? imageUrl}) {
    if (_isConnected) {
      final data = {
        'chatId': chatId,
        'body': body,
        'type': type,
      };
      if (imageUrl != null) data['imageUrl'] = imageUrl;

      _socket?.emit('send_message', data);
      if (kDebugMode) {
        print('📤 Sending message: $data');
      }
    } else {
      if (kDebugMode) {
        print('❌ Cannot send - not connected');
      }
    }
  }

  void typing(String chatId, bool isTyping) {
    if (_isConnected) {
      _socket?.emit('typing', {'chatId': chatId, 'isTyping': isTyping});
      if (kDebugMode) {
        print('⌨️ Typing: $isTyping in $chatId');
      }
    }
  }

  void markRead(String chatId) {
    if (_isConnected) {
      _socket?.emit('mark_read', {'chatId': chatId});
      if (kDebugMode) {
        print('✅ Mark read: $chatId');
      }
    }
  }

  void checkOnline(List<String> userIds) {
    if (_isConnected) {
      _socket?.emit('check_online', {'userIds': userIds});
      if (kDebugMode) {
        print('🔍 Check online: $userIds');
      }
    }
  }

  void disconnect() {
    if (kDebugMode) {
      print('🔌 Disconnecting...');
    }
    _socket?.disconnect();
    _socket?.dispose();
    _socket = null;
    _isConnected = false;
    if (kDebugMode) {
      print('❌ Disconnected');
    }
  }

  void dispose() {
    _connectionController.close();
    _newMessageController.close();
    _messageSentController.close();
    _messageNotificationController.close();
    _userTypingController.close();
    _messagesReadController.close();
    _userOnlineController.close();
    _userOfflineController.close();
    _onlineStatusesController.close();
    _authInvalidController.close();
    _tokenExpiringController.close();
    disconnect();
  }
}