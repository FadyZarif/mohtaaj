// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RateUserRequest _$RateUserRequestFromJson(Map<String, dynamic> json) =>
    _RateUserRequest(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      itemId: json['itemId'] as String,
    );

Map<String, dynamic> _$RateUserRequestToJson(_RateUserRequest instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
      'itemId': instance.itemId,
    };
