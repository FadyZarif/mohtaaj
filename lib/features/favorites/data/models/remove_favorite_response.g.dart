// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoveFavoriteResponse _$RemoveFavoriteResponseFromJson(
  Map<String, dynamic> json,
) => _RemoveFavoriteResponse(
  success: json['success'] as bool,
  data: RemoveFavoriteData.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$RemoveFavoriteResponseToJson(
  _RemoveFavoriteResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_RemoveFavoriteData _$RemoveFavoriteDataFromJson(Map<String, dynamic> json) =>
    _RemoveFavoriteData(message: json['message'] as String);

Map<String, dynamic> _$RemoveFavoriteDataToJson(_RemoveFavoriteData instance) =>
    <String, dynamic>{'message': instance.message};
