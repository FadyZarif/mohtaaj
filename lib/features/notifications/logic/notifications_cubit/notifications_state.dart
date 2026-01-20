import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/notification_model.dart';

part 'notifications_state.freezed.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default([]) List<NotificationModel> notifications,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    @Default(1) int currentPage,
    @Default(true) bool hasMore,
    @Default(0) int unreadCount,
    @Default(false) bool showUnreadOnly,
  }) = _NotificationsState;
}
