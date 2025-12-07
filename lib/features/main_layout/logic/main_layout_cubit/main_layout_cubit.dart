import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/services/auth_service.dart';
import '../../../chats/data/models/chat_model.dart';
import '../../../chats/data/services/socket_service.dart';
import 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  final AuthService _authService;
  final ApiService _apiService;
  final SocketService _socketService;

  StreamSubscription? _messageNotificationSub;

  MainLayoutCubit(
      this._authService,
      this._apiService,
      this._socketService,
      ) : super(const MainLayoutState()) {
    _setupSocketListener();
  }

  /// Initialize - Load unread count
  Future<void> init() async {
    final isLoggedIn = await _authService.isLoggedIn();
    if (isLoggedIn) {
      await loadUnreadCount();
    }
  }

  /// Load unread count from API
  Future<void> loadUnreadCount() async {
    try {
      final CountResponse response = await _apiService.getUnreadCount();
      emit(state.copyWith(unreadChatsCount: response.data.totalUnread));
      print('📊 Unread count loaded: ${response.data.totalUnread}');
    } catch (e) {
      print('❌ Error loading unread count: $e');
    }
  }

  /// Setup socket listener for new messages
  void _setupSocketListener() {
    _messageNotificationSub = _socketService.messageNotificationStream.listen((data) {
      print('🔔 New message notification - incrementing badge');
      // Increment unread count
      final newCount = state.unreadChatsCount + 1;
      emit(state.copyWith(unreadChatsCount: newCount));
      print('📊 Unread count updated: $newCount');
    });
  }

  /// Change current tab
  void changeTab(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  /// Check if user is guest
  Future<bool> isGuest() async {
    return !(await _authService.isLoggedIn());
  }

  /// Update unread chats count
  void updateUnreadChatsCount(int count) {
    emit(state.copyWith(unreadChatsCount: count));
  }

  /// Reset to home tab
  void resetToHome() {
    emit(state.copyWith(currentIndex: 0));
  }
}
