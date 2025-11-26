// features/user_profile/data/models/user_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required bool success,
    required UserData data,
    required String timestamp,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required String id,
    required String name,
    required String city,
    required String country,
    String? avatarUrl,
    required num ratingAvg,
    required int reputationScore,
    required bool isVerified,
    required DateTime createdAt,
    required DateTime lastActive,
    required int itemsCount,
    required int ratingsCount,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}