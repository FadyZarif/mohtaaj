import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_preferences_model.freezed.dart';
part 'fcm_preferences_model.g.dart';

// ========================== Response Model ==========================

@freezed
abstract class FcmPreferencesModel with _$FcmPreferencesModel {
  const factory FcmPreferencesModel({
    required String id,
    required String userId,
    // General
    required bool pushEnabled,
    required bool emailEnabled,
    // Quiet Hours
    required bool quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    required String timezone,
    // Notification Types
    required bool newMessageEnabled,
    required bool newOfferEnabled,
    required bool offerAcceptedEnabled,
    required bool offerRejectedEnabled,
    required bool itemFavoritedEnabled,
    required bool newRatingEnabled,
    required bool badgeEarnedEnabled,
    required bool challengeEnabled,
    required bool pointsEarnedEnabled,
    required bool requestFulfilledEnabled,
    required bool systemEnabled,
    required bool marketingEnabled,
    // Timestamps
    required String createdAt,
    required String updatedAt,
  }) = _FcmPreferencesModel;

  factory FcmPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$FcmPreferencesModelFromJson(json);
}

// ========================== Nested Data ==========================

@freezed
abstract class FcmPreferencesData with _$FcmPreferencesData {
  const factory FcmPreferencesData({
    required FcmPreferencesModel preferences,
  }) = _FcmPreferencesData;

  factory FcmPreferencesData.fromJson(Map<String, dynamic> json) =>
      _$FcmPreferencesDataFromJson(json);
}

// ========================== Response ==========================

/// Used by: GET, PUT, POST enable-all, POST disable-all, POST reset
@freezed
abstract class FcmPreferencesResponse with _$FcmPreferencesResponse {
  const factory FcmPreferencesResponse({
    required bool success,
    String? message,
    required FcmPreferencesData data,
  }) = _FcmPreferencesResponse;

  factory FcmPreferencesResponse.fromJson(Map<String, dynamic> json) =>
      _$FcmPreferencesResponseFromJson(json);
}

// ========================== Update Request ==========================

@freezed
abstract class FcmUpdatePreferencesRequest with _$FcmUpdatePreferencesRequest {
  const factory FcmUpdatePreferencesRequest({
    @JsonKey(includeIfNull: false) bool? newMessage,
    @JsonKey(includeIfNull: false) bool? newOffer,
    @JsonKey(includeIfNull: false) bool? offerAccepted,
    @JsonKey(includeIfNull: false) bool? offerRejected,
    @JsonKey(includeIfNull: false) bool? newBadge,
    @JsonKey(includeIfNull: false) bool? challengeCompleted,
    @JsonKey(includeIfNull: false) bool? newRating,
    @JsonKey(includeIfNull: false) bool? itemFavorited,
    @JsonKey(includeIfNull: false) bool? systemAnnouncement,
    @JsonKey(includeIfNull: false) bool? marketing,
  }) = _FcmUpdatePreferencesRequest;

  factory FcmUpdatePreferencesRequest.fromJson(Map<String, dynamic> json) =>
      _$FcmUpdatePreferencesRequestFromJson(json);
}
