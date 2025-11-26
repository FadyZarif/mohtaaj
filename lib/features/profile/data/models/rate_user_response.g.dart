// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RateUserResponse _$RateUserResponseFromJson(Map<String, dynamic> json) =>
    _RateUserResponse(
      success: json['success'] as bool,
      data: RateUserData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$RateUserResponseToJson(_RateUserResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_RateUserData _$RateUserDataFromJson(Map<String, dynamic> json) =>
    _RateUserData(
      id: json['id'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromUser: RatingUser.fromJson(json['fromUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RateUserDataToJson(_RateUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt.toIso8601String(),
      'fromUser': instance.fromUser,
    };

_RatingUser _$RatingUserFromJson(Map<String, dynamic> json) => _RatingUser(
  id: json['id'] as String,
  name: json['name'] as String,
  avatarUrl: json['avatarUrl'] as String?,
);

Map<String, dynamic> _$RatingUserToJson(_RatingUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
