// features/user_profile/data/models/user_ratings_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_ratings_response.freezed.dart';
part 'user_ratings_response.g.dart';

@freezed
abstract class UserRatingsResponse with _$UserRatingsResponse {
  const factory UserRatingsResponse({
    required bool success,
    required UserRatingsData data,
    required String timestamp,
  }) = _UserRatingsResponse;

  factory UserRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRatingsResponseFromJson(json);
}

@freezed
abstract class UserRatingsData with _$UserRatingsData {
  const factory UserRatingsData({
    required List<UserRating> ratings,
    required RatingsMeta meta,
  }) = _UserRatingsData;

  factory UserRatingsData.fromJson(Map<String, dynamic> json) =>
      _$UserRatingsDataFromJson(json);
}

@freezed
abstract class UserRating with _$UserRating {
  const factory UserRating({
    required String id,
    required int rating,
    String? comment,
    required DateTime createdAt,
    required RatingUser fromUser,
  }) = _UserRating;

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
}

@freezed
abstract class RatingUser with _$RatingUser {
  const factory RatingUser({
    required String id,
    required String name,
    String? avatarUrl,
  }) = _RatingUser;

  factory RatingUser.fromJson(Map<String, dynamic> json) =>
      _$RatingUserFromJson(json);
}

@freezed
abstract class RatingsMeta with _$RatingsMeta {
  const factory RatingsMeta({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _RatingsMeta;

  factory RatingsMeta.fromJson(Map<String, dynamic> json) =>
      _$RatingsMetaFromJson(json);
}