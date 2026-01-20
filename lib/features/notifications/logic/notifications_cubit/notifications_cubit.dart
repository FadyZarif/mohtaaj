import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final ApiService _apiService;

  NotificationsCubit(this._apiService) : super(const NotificationsState());

  // Load initial notifications
  Future<void> loadNotifications() async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final response = await _apiService.getNotifications(
        page: 1,
        limit: 20,
        unreadOnly: state.showUnreadOnly,
      );

      emit(state.copyWith(
        notifications: response.data,
        isLoading: false,
        currentPage: response.meta.page,
        hasMore: response.meta.page < response.meta.totalPages,
        unreadCount: response.meta.unreadCount,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(isLoading: false, error: errorMessage));
    }
  }

  // Load more notifications (pagination)
  Future<void> loadMoreNotifications() async {
    if (!state.hasMore || state.isLoadingMore) return;

    emit(state.copyWith(isLoadingMore: true));

    try {
      final nextPage = state.currentPage + 1;
      final response = await _apiService.getNotifications(
        page: nextPage,
        limit: 20,
        unreadOnly: state.showUnreadOnly,
      );

      emit(state.copyWith(
        notifications: [...state.notifications, ...response.data],
        isLoadingMore: false,
        currentPage: response.meta.page,
        hasMore: response.meta.page < response.meta.totalPages,
        unreadCount: response.meta.unreadCount,
      ));
    } catch (error) {
      emit(state.copyWith(isLoadingMore: false));
    }
  }

  // Toggle unread filter
  Future<void> toggleUnreadFilter() async {
    emit(state.copyWith(showUnreadOnly: !state.showUnreadOnly));
    await loadNotifications();
  }

  // Get unread count
  Future<void> getUnreadCount() async {
    try {
      final response = await _apiService.getNotificationsUnreadCount();
      emit(state.copyWith(unreadCount: response.data.unreadCount));
    } catch (error) {
      // Silent fail for unread count
    }
  }

  // Mark notification as read
  Future<void> markAsRead(String notificationId) async {
    try {
      await _apiService.markNotificationAsRead(notificationId);

      // Update local state
      final updatedNotifications = state.notifications.map((notification) {
        if (notification.id == notificationId) {
          return notification.copyWith(read: true);
        }
        return notification;
      }).toList();

      final newUnreadCount =
          state.unreadCount > 0 ? state.unreadCount - 1 : 0;

      emit(state.copyWith(
        notifications: updatedNotifications,
        unreadCount: newUnreadCount,
      ));
    } catch (error) {
      // Silent fail
    }
  }

  // Mark all as read
  Future<void> markAllAsRead() async {
    try {
      await _apiService.markAllNotificationsAsRead();

      // Update local state
      final updatedNotifications = state.notifications
          .map((notification) => notification.copyWith(read: true))
          .toList();

      emit(state.copyWith(
        notifications: updatedNotifications,
        unreadCount: 0,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(error: errorMessage));
    }
  }

  // Delete notification
  Future<void> deleteNotification(String notificationId) async {
    try {
      await _apiService.deleteNotification(notificationId);

      // Remove from local state
      final updatedNotifications = state.notifications
          .where((notification) => notification.id != notificationId)
          .toList();

      // Decrease unread count if notification was unread
      final deletedNotification = state.notifications
          .firstWhere((notification) => notification.id == notificationId);
      final newUnreadCount = !deletedNotification.read && state.unreadCount > 0
          ? state.unreadCount - 1
          : state.unreadCount;

      emit(state.copyWith(
        notifications: updatedNotifications,
        unreadCount: newUnreadCount,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(error: errorMessage));
    }
  }

  // Delete all read notifications
  Future<void> deleteAllReadNotifications() async {
    try {
      await _apiService.deleteAllReadNotifications();

      // Remove read notifications from local state
      final updatedNotifications = state.notifications
          .where((notification) => !notification.read)
          .toList();

      emit(state.copyWith(notifications: updatedNotifications));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(error: errorMessage));
    }
  }

  // Refresh notifications
  Future<void> refresh() async {
    emit(const NotificationsState());
    await loadNotifications();
  }
}
