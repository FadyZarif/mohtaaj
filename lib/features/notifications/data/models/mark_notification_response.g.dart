// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkNotificationResponse _$MarkNotificationResponseFromJson(
  Map<String, dynamic> json,
) => MarkNotificationResponse(
  success: json['success'] as bool,
  data: NotificationModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
);

Map<String, dynamic> _$MarkNotificationResponseToJson(
  MarkNotificationResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

MarkAllNotificationsResponse _$MarkAllNotificationsResponseFromJson(
  Map<String, dynamic> json,
) => MarkAllNotificationsResponse(
  success: json['success'] as bool,
  data: MarkAllData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
);

Map<String, dynamic> _$MarkAllNotificationsResponseToJson(
  MarkAllNotificationsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

MarkAllData _$MarkAllDataFromJson(Map<String, dynamic> json) =>
    MarkAllData(markedCount: (json['markedCount'] as num).toInt());

Map<String, dynamic> _$MarkAllDataToJson(MarkAllData instance) =>
    <String, dynamic>{'markedCount': instance.markedCount};
