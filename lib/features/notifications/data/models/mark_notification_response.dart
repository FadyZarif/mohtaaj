import 'package:json_annotation/json_annotation.dart';
import 'notification_model.dart';

part 'mark_notification_response.g.dart';

@JsonSerializable()
class MarkNotificationResponse {
  final bool success;
  final NotificationModel data;
  final String message;

  MarkNotificationResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  factory MarkNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkNotificationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarkNotificationResponseToJson(this);
}

@JsonSerializable()
class MarkAllNotificationsResponse {
  final bool success;
  final MarkAllData data;
  final String message;

  MarkAllNotificationsResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  factory MarkAllNotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkAllNotificationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarkAllNotificationsResponseToJson(this);
}

@JsonSerializable()
class MarkAllData {
  final int markedCount;

  MarkAllData({required this.markedCount});

  factory MarkAllData.fromJson(Map<String, dynamic> json) =>
      _$MarkAllDataFromJson(json);

  Map<String, dynamic> toJson() => _$MarkAllDataToJson(this);
}
