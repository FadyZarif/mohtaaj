// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteCountResponse _$FavoriteCountResponseFromJson(
  Map<String, dynamic> json,
) => _FavoriteCountResponse(
  success: json['success'] as bool,
  data: FavoriteCountData.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$FavoriteCountResponseToJson(
  _FavoriteCountResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_FavoriteCountData _$FavoriteCountDataFromJson(Map<String, dynamic> json) =>
    _FavoriteCountData(
      itemId: json['itemId'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$FavoriteCountDataToJson(_FavoriteCountData instance) =>
    <String, dynamic>{'itemId': instance.itemId, 'count': instance.count};
