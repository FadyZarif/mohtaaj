import 'package:json_annotation/json_annotation.dart';

part 'delete_notification_response.g.dart';

@JsonSerializable()
class DeleteNotificationResponse {
  final bool success;
  final String message;

  DeleteNotificationResponse({
    required this.success,
    required this.message,
  });

  factory DeleteNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteNotificationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteNotificationResponseToJson(this);
}

@JsonSerializable()
class DeleteAllReadNotificationsResponse {
  final bool success;
  final DeleteAllData data;
  final String message;

  DeleteAllReadNotificationsResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  factory DeleteAllReadNotificationsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteAllReadNotificationsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeleteAllReadNotificationsResponseToJson(this);
}

@JsonSerializable()
class DeleteAllData {
  final int deletedCount;

  DeleteAllData({required this.deletedCount});

  factory DeleteAllData.fromJson(Map<String, dynamic> json) =>
      _$DeleteAllDataFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteAllDataToJson(this);
}
