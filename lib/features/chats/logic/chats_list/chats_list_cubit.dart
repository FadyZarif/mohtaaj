// lib/features/chats/logic/chats_list/chats_list_cubit.dart

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/chat_model.dart';
import '../../data/services/socket_service.dart';
import 'chats_list_state.dart';
import '../../../../core/networking/api_service.dart';

class ChatsListCubit extends Cubit<ChatsListState> {
  final ApiService _apiService;
  final SocketService _socketService;

  List<ChatModel> _allChats = [];
  ChatFilterType _currentFilter = ChatFilterType.all;
  String? _currentUserId;
  StreamSubscription? _messageNotificationSub;
  StreamSubscription? _newMessageSub;

  ChatsListCubit(this._apiService, this._socketService)
      : super(const ChatsListState.initial());

  Future<void> loadChats({String? userId}) async {
    _currentUserId = userId;
    emit(const ChatsListState.loading());

    try {
      final response = await _apiService.getChats(page: 1, limit: 100);
      _allChats = response.data;
      _applyFilter();
      _listenToSocketEvents();
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      emit(ChatsListState.error(error.message ?? 'حدث خطأ'));
    }
  }

  void _listenToSocketEvents() {
    // Listen to new message notifications
    _messageNotificationSub = _socketService.messageNotificationStream.listen((data) {
      final chatId = data['chatId'] as String;
      final index = _allChats.indexWhere((c) => c.id == chatId);

      if (index != -1) {
        final message = data['message'];
        final updatedChat = _allChats[index].copyWith(
          lastMsg: message['body'],
          lastMsgType: MessageType.values.firstWhere(
                (e) => e.name == message['type'],
            orElse: () => MessageType.text,
          ),
          unreadCount: (_allChats[index].unreadCount ?? 0) + 1,
          updatedAt: DateTime.parse(message['createdAt']),
        );

        _allChats[index] = updatedChat;
        _allChats.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
        _applyFilter();
      }
    });

    // Listen to messages in opened chats (to update last message)
    _newMessageSub = _socketService.newMessageStream.listen((data) {
      final message = data['message'];
      final chatId = message['chatId'] as String;
      final index = _allChats.indexWhere((c) => c.id == chatId);

      if (index != -1) {
        final updatedChat = _allChats[index].copyWith(
          lastMsg: message['body'],
          lastMsgType: MessageType.values.firstWhere(
                (e) => e.name == message['type'],
            orElse: () => MessageType.text,
          ),
          updatedAt: DateTime.parse(message['createdAt']),
        );

        _allChats[index] = updatedChat;
        _allChats.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
        _applyFilter();
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
        filtered = _allChats.where((c) => c.sellerId == _currentUserId).toList();
        break;
      case ChatFilterType.all:
      default:
        filtered = _allChats;
    }

    emit(ChatsListState.success(filtered, _currentFilter));
  }

  void searchChats(String query) {
    if (query.isEmpty) {
      _applyFilter();
      return;
    }

    final filtered = _allChats.where((chat) {
      final otherUser = chat.buyerId == _currentUserId ? chat.seller : chat.buyer;
      final itemTitle = chat.item?.title ?? '';

      return otherUser.name.toLowerCase().contains(query.toLowerCase()) ||
          itemTitle.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(ChatsListState.success(filtered, _currentFilter));
  }

  void markChatAsRead(String chatId) {
    final index = _allChats.indexWhere((c) => c.id == chatId);
    if (index != -1) {
      _allChats[index] = _allChats[index].copyWith(unreadCount: 0);
      _applyFilter();
    }
  }

  @override
  Future<void> close() {
    _messageNotificationSub?.cancel();
    _newMessageSub?.cancel();
    return super.close();
  }
}