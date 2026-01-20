import 'package:json_annotation/json_annotation.dart';
import 'notification_model.dart';

part 'notifications_response.g.dart';

@JsonSerializable()
class NotificationsResponse {
  final bool success;
  final List<NotificationModel> data;
  final NotificationsMeta meta;

  NotificationsResponse({
    required this.success,
    required this.data,
    required this.meta,
  });

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsResponseToJson(this);
}

@JsonSerializable()
class NotificationsMeta {
  final int page;
  final int limit;
  final int total;
  final int totalPages;
  final int unreadCount;

  NotificationsMeta({
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
    required this.unreadCount,
  });

  factory NotificationsMeta.fromJson(Map<String, dynamic> json) =>
      _$NotificationsMetaFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsMetaToJson(this);
}
