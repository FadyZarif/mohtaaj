// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddFavoriteResponse _$AddFavoriteResponseFromJson(Map<String, dynamic> json) =>
    _AddFavoriteResponse(
      success: json['success'] as bool,
      data: AddFavoriteData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$AddFavoriteResponseToJson(
  _AddFavoriteResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_AddFavoriteData _$AddFavoriteDataFromJson(Map<String, dynamic> json) =>
    _AddFavoriteData(
      favorite: FavoriteRecord.fromJson(
        json['favorite'] as Map<String, dynamic>,
      ),
      message: json['message'] as String,
    );

Map<String, dynamic> _$AddFavoriteDataToJson(_AddFavoriteData instance) =>
    <String, dynamic>{
      'favorite': instance.favorite,
      'message': instance.message,
    };

_FavoriteRecord _$FavoriteRecordFromJson(Map<String, dynamic> json) =>
    _FavoriteRecord(
      userId: json['userId'] as String,
      itemId: json['itemId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$FavoriteRecordToJson(_FavoriteRecord instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'itemId': instance.itemId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
