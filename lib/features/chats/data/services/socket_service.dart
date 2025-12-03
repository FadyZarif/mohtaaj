// lib/features/chats/data/services/socket_service.dart

import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../../../../core/helpers/cache_helper.dart';

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;
  SocketService._internal();

  IO.Socket? _socket;
  bool _isConnected = false;
  final _connectionController = StreamController<bool>.broadcast();

  // Event Streams
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

  bool get isConnected => _isConnected;
  IO.Socket? get socket => _socket;

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
    if (_socket != null && _isConnected) return;

    final token = await CacheHelper.getSecureData(key: 'accessToken');
    if (token == null) return;

    _socket = IO.io(
      'https://mohtaaj.onrender.com',
      IO.OptionBuilder()
          .setTransports(['websocket', 'polling'])
          .setAuth({'token': token})
          .disableAutoConnect()
          .build(),
    );

    _setupListeners();
    _socket!.connect();
  }

  void _setupListeners() {
    // Connection Events
    _socket!.onConnect((_) {
      _isConnected = true;
      _connectionController.add(true);
      print('✅ Socket Connected');
    });

    _socket!.onDisconnect((_) {
      _isConnected = false;
      _connectionController.add(false);
      print('❌ Socket Disconnected');
    });

    _socket!.onConnectError((error) {
      print('🔴 Connection Error: $error');
    });

    // Auth Events
    _socket!.on('connected', (data) {
      print('✅ Connected: $data');
    });

    _socket!.on('auth_invalid', (data) {
      _authInvalidController.add(data);
    });

    _socket!.on('token_expiring_soon', (data) {
      _tokenExpiringController.add(data);
    });

    // Message Events
    _socket!.on('new_message', (data) {
      _newMessageController.add(data);
    });

    _socket!.on('message_sent', (data) {
      _messageSentController.add(data);
    });

    _socket!.on('new_message_notification', (data) {
      _messageNotificationController.add(data);
    });

    // Typing Events
    _socket!.on('user_typing', (data) {
      _userTypingController.add(data);
    });

    // Read Events
    _socket!.on('messages_read', (data) {
      _messagesReadController.add(data);
    });

    _socket!.on('marked_read', (data) {
      print('✅ Marked as read: $data');
    });

    // Online Status Events
    _socket!.on('user_online', (data) {
      _userOnlineController.add(data);
    });

    _socket!.on('user_offline', (data) {
      _userOfflineController.add(data);
    });

    _socket!.on('online_statuses', (data) {
      _onlineStatusesController.add(data);
    });

    // Error Events
    _socket!.on('error', (data) {
      print('🔴 Socket Error: $data');
    });
  }

  // Emit Events
  void joinChat(String chatId) {
    _socket?.emit('join_chat', {'chatId': chatId});
  }

  void leaveChat(String chatId) {
    _socket?.emit('leave_chat', {'chatId': chatId});
  }

  void sendMessage(String chatId, String body, {String type = 'text', String? imageUrl}) {
    final data = {
      'chatId': chatId,
      'body': body,
      'type': type,
    };
    if (imageUrl != null) data['imageUrl'] = imageUrl;
    _socket?.emit('send_message', data);
  }

  void typing(String chatId, bool isTyping) {
    _socket?.emit('typing', {'chatId': chatId, 'isTyping': isTyping});
  }

  void markRead(String chatId) {
    _socket?.emit('mark_read', {'chatId': chatId});
  }

  void checkOnline(List<String> userIds) {
    _socket?.emit('check_online', {'userIds': userIds});
  }

  void disconnect() {
    _socket?.disconnect();
    _socket = null;
    _isConnected = false;
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