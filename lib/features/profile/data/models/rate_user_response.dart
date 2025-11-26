// features/user_profile/data/models/rate_user_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_user_response.freezed.dart';
part 'rate_user_response.g.dart';

@freezed
abstract class RateUserResponse with _$RateUserResponse {
  const factory RateUserResponse({
    required bool success,
    required RateUserData data,
    required String timestamp,
  }) = _RateUserResponse;

  factory RateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RateUserResponseFromJson(json);
}

@freezed
abstract class RateUserData with _$RateUserData {
  const factory RateUserData({
    required String id,
    required int rating,
    String? comment,
    required DateTime createdAt,
    required RatingUser fromUser,
  }) = _RateUserData;

  factory RateUserData.fromJson(Map<String, dynamic> json) =>
      _$RateUserDataFromJson(json);
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