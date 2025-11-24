// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckFavoriteResponse _$CheckFavoriteResponseFromJson(
  Map<String, dynamic> json,
) => _CheckFavoriteResponse(
  success: json['success'] as bool,
  data: CheckFavoriteData.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$CheckFavoriteResponseToJson(
  _CheckFavoriteResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_CheckFavoriteData _$CheckFavoriteDataFromJson(Map<String, dynamic> json) =>
    _CheckFavoriteData(
      itemId: json['itemId'] as String,
      isFavorited: json['isFavorited'] as bool,
    );

Map<String, dynamic> _$CheckFavoriteDataToJson(_CheckFavoriteData instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'isFavorited': instance.isFavorited,
    };
