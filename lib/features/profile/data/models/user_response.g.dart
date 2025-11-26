// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      success: json['success'] as bool,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  id: json['id'] as String,
  name: json['name'] as String,
  city: json['city'] as String,
  country: json['country'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  ratingAvg: json['ratingAvg'] as num,
  reputationScore: (json['reputationScore'] as num).toInt(),
  isVerified: json['isVerified'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  lastActive: DateTime.parse(json['lastActive'] as String),
  itemsCount: (json['itemsCount'] as num).toInt(),
  ratingsCount: (json['ratingsCount'] as num).toInt(),
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'city': instance.city,
  'country': instance.country,
  'avatarUrl': instance.avatarUrl,
  'ratingAvg': instance.ratingAvg,
  'reputationScore': instance.reputationScore,
  'isVerified': instance.isVerified,
  'createdAt': instance.createdAt.toIso8601String(),
  'lastActive': instance.lastActive.toIso8601String(),
  'itemsCount': instance.itemsCount,
  'ratingsCount': instance.ratingsCount,
};
