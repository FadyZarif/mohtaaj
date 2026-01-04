// lib/features/chats/logic/chats_list/chats_list_cubit.dart

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/chat_model.dart';
import '../../data/services/socket_service.dart';
import 'chats_list_state.dart';
import '../../../../core/networking/api_service.dart';

class ChatsListCubit extends Cubit<ChatsListState> {
  final ApiService _apiService;
  final SocketService _socketService;
  final Function(int)? onTotalUnreadChanged;

  List<ChatModel> _allChats = [];
  ChatFilterType _currentFilter = ChatFilterType.all;
  String? _currentUserId;
  StreamSubscription? _messageNotificationSub;
  StreamSubscription? _messagesReadSub;

  // ✅ أضف set للـ de-duplication
  final Set<String> _processedMessageIds = {};

  ChatsListCubit(
    this._apiService,
    this._socketService, {
    this.onTotalUnreadChanged,
  }) : super(const ChatsListState.initial());

  Future<void> loadChats({String? userId}) async {
    _currentUserId = userId;
    emit(const ChatsListState.loading());

    try {
      final response = await _apiService.getChats(page: 1, limit: 100);
      _allChats = List<ChatModel>.from(response.data);

      _applyFilter();
      _listenToSocketEvents();
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatsListState.error(error.message));
    }
  }

  void _listenToSocketEvents() {
    // ✅ Cancel any existing subscriptions
    _messageNotificationSub?.cancel();
    _messagesReadSub?.cancel();

    // Listen to new message notifications
    _messageNotificationSub = _socketService.messageNotificationStream.listen((
      data,
    ) {
      try {
        if (kDebugMode) {
          print('🔔 Message notification received: $data');
        }

        final chatId = data['chatId'] as String?;
        if (chatId == null) {
          if (kDebugMode) {
            print('⚠️ chatId is null, skipping');
          }
          return;
        }

        final message = data['message'];
        if (message == null) {
          if (kDebugMode) {
            print('⚠️ message is null, skipping');
          }
          return;
        }

        final messageId = message['id'] as String?;
        if (messageId == null) {
          if (kDebugMode) {
            print('⚠️ messageId is null, skipping');
          }
          return;
        }

        // ✅ Check if already processed
        if (_processedMessageIds.contains(messageId)) {
          if (kDebugMode) {
            print('⚠️ Message already processed: $messageId, skipping');
          }
          return;
        }

        // ✅ Add to processed set
        _processedMessageIds.add(messageId);

        // ✅ Keep only last 100 IDs
        if (_processedMessageIds.length > 100) {
          final toRemove = _processedMessageIds.length - 100;
          _processedMessageIds.removeAll(
            _processedMessageIds.take(toRemove).toList(),
          );
        }

        final index = _allChats.indexWhere((c) => c.id == chatId);

        if (index != -1) {
          final sender = message['sender'];
          final senderId = sender != null ? sender['id'] as String? : null;

          if (senderId == null) {
            if (kDebugMode) {
              print('⚠️ senderId is null, skipping');
            }
            return;
          }

          final chat = _allChats[index];
          final isBuyer = chat.buyerId == _currentUserId;

          print('📊 Processing message: $messageId');
          if (kDebugMode) {
            print('   Current user: $_currentUserId');
            print('   Is buyer: $isBuyer');
            print('   Sender: $senderId');
            print('   Should increment: ${senderId != _currentUserId}');
          }

          final updatedChat = chat.copyWith(
            lastMsg: message['body'] as String? ?? '',
            lastMsgType: MessageType.values.firstWhere(
              (e) => e.name == (message['type'] as String?),
              orElse: () => MessageType.text,
            ),
            updatedAt: data['timestamp'] != null
                ? DateTime.parse(data['timestamp'] as String)
                : DateTime.now(),
            unreadCountBuyer: isBuyer && senderId != _currentUserId
                ? chat.unreadCountBuyer + 1
                : chat.unreadCountBuyer,
            unreadCountSeller: !isBuyer && senderId != _currentUserId
                ? chat.unreadCountSeller + 1
                : chat.unreadCountSeller,
          );

          _allChats = List<ChatModel>.from(_allChats);
          _allChats[index] = updatedChat;
          _allChats.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));

          _applyFilter();

          if (kDebugMode) {
            print('✅ Unread count updated for chat: $chatId');
            print('   Buyer unread: ${updatedChat.unreadCountBuyer}');
            print('   Seller unread: ${updatedChat.unreadCountSeller}');
          }
        } else {
          if (kDebugMode) {
            print('⚠️ Chat not found: $chatId');
          }
        }
      } catch (e, stackTrace) {
        if (kDebugMode) {
          print('❌ Error in message notification listener: $e');
          print('Stack trace: $stackTrace');
          print('Data: $data');
        }
      }
    });

    // Listen to marked_read
    _messagesReadSub = _socketService.messagesReadStream.listen((data) {
      try {
        final chatId = data['chatId'] as String?;
        if (chatId == null) {
          if (kDebugMode) {
            print('⚠️ chatId is null in marked_read');
          }
          return;
        }

        if (kDebugMode) {
          print('📖 Messages marked as read for chat: $chatId');
        }
        markChatAsRead(chatId);
      } catch (e) {
        print('❌ Error in marked_read listener: $e');
      }
    });
  }

  void changeFilter(ChatFilterType filter) {
    _currentFilter = filter;
    _applyFilter();
  }

  void _applyFilter() {
    if (_currentUserId == null) {
      emit(ChatsListState.success(_allChats, _currentFilter));
      return;
    }

    List<ChatModel> filtered;
    switch (_currentFilter) {
      case ChatFilterType.buying:
        filtered = _allChats.where((c) => c.buyerId == _currentUserId).toList();
        break;
      case ChatFilterType.selling:
        filtered = _allChats
            .where((c) => c.sellerId == _currentUserId)
            .toList();
        break;
      case ChatFilterType.all:
        filtered = _allChats;
    }

    // ✅ Always emit new list
    emit(
      ChatsListState.success(List<ChatModel>.from(filtered), _currentFilter),
    );

    // Notify total unread
    _notifyTotalUnread();
  }

  void _notifyTotalUnread() {
    if (onTotalUnreadChanged != null && _currentUserId != null) {
      final total = _allChats.fold<int>(0, (sum, chat) {
        final isBuyer = chat.buyerId == _currentUserId;
        final unread = isBuyer ? chat.unreadCountBuyer : chat.unreadCountSeller;
        return sum + unread;
      });

      onTotalUnreadChanged!(total);
      if (kDebugMode) {
        print('📊 Total unread: $total');
      }
    }
  }

  void searchChats(String query) {
    if (query.isEmpty) {
      _applyFilter();
      return;
    }

    final filtered = _allChats.where((chat) {
      final otherUser = chat.buyerId == _currentUserId
          ? chat.seller
          : chat.buyer;
      final itemTitle = chat.item?.title ?? '';

      return otherUser.name.toLowerCase().contains(query.toLowerCase()) ||
          itemTitle.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(ChatsListState.success(filtered, _currentFilter));
  }

  void markChatAsRead(String chatId) {
    final index = _allChats.indexWhere((c) => c.id == chatId);
    if (index != -1) {
      final chat = _allChats[index];
      final isBuyer = chat.buyerId == _currentUserId;

      _allChats = List<ChatModel>.from(_allChats);
      _allChats[index] = chat.copyWith(
        unreadCountBuyer: isBuyer ? 0 : chat.unreadCountBuyer,
        unreadCountSeller: !isBuyer ? 0 : chat.unreadCountSeller,
      );
      _applyFilter();
      print('✅ Chat marked as read: $chatId');
    }
  }

  @override
  Future<void> close() {
    _messageNotificationSub?.cancel();
    _messagesReadSub?.cancel();
    return super.close();
  }
}
