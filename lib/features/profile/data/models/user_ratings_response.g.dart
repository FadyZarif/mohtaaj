// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ratings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRatingsResponse _$UserRatingsResponseFromJson(Map<String, dynamic> json) =>
    _UserRatingsResponse(
      success: json['success'] as bool,
      data: UserRatingsData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$UserRatingsResponseToJson(
  _UserRatingsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_UserRatingsData _$UserRatingsDataFromJson(Map<String, dynamic> json) =>
    _UserRatingsData(
      ratings: (json['ratings'] as List<dynamic>)
          .map((e) => UserRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: RatingsMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRatingsDataToJson(_UserRatingsData instance) =>
    <String, dynamic>{'ratings': instance.ratings, 'meta': instance.meta};

_UserRating _$UserRatingFromJson(Map<String, dynamic> json) => _UserRating(
  id: json['id'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  fromUser: RatingUser.fromJson(json['fromUser'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserRatingToJson(_UserRating instance) =>
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

_RatingsMeta _$RatingsMetaFromJson(Map<String, dynamic> json) => _RatingsMeta(
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$RatingsMetaToJson(_RatingsMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
    };
