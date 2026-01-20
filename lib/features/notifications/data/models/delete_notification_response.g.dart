// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteNotificationResponse _$DeleteNotificationResponseFromJson(
  Map<String, dynamic> json,
) => DeleteNotificationResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$DeleteNotificationResponseToJson(
  DeleteNotificationResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};

DeleteAllReadNotificationsResponse _$DeleteAllReadNotificationsResponseFromJson(
  Map<String, dynamic> json,
) => DeleteAllReadNotificationsResponse(
  success: json['success'] as bool,
  data: DeleteAllData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
);

Map<String, dynamic> _$DeleteAllReadNotificationsResponseToJson(
  DeleteAllReadNotificationsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

DeleteAllData _$DeleteAllDataFromJson(Map<String, dynamic> json) =>
    DeleteAllData(deletedCount: (json['deletedCount'] as num).toInt());

Map<String, dynamic> _$DeleteAllDataToJson(DeleteAllData instance) =>
    <String, dynamic>{'deletedCount': instance.deletedCount};
