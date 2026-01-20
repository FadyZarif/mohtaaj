// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unread_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnreadCountResponse _$UnreadCountResponseFromJson(Map<String, dynamic> json) =>
    UnreadCountResponse(
      success: json['success'] as bool,
      data: UnreadCountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnreadCountResponseToJson(
  UnreadCountResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

UnreadCountData _$UnreadCountDataFromJson(Map<String, dynamic> json) =>
    UnreadCountData(unreadCount: (json['unreadCount'] as num).toInt());

Map<String, dynamic> _$UnreadCountDataToJson(UnreadCountData instance) =>
    <String, dynamic>{'unreadCount': instance.unreadCount};
