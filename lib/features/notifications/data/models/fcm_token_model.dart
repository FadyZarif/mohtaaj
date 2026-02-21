import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_token_model.freezed.dart';
part 'fcm_token_model.g.dart';

// ========================== Requests ==========================

@freezed
abstract class FcmRegisterTokenRequest with _$FcmRegisterTokenRequest {
  const factory FcmRegisterTokenRequest({
    required String token,
    @JsonKey(includeIfNull: false) String? deviceType,
    @JsonKey(includeIfNull: false) String? deviceId,
  }) = _FcmRegisterTokenRequest;

  factory FcmRegisterTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$FcmRegisterTokenRequestFromJson(json);
}

@freezed
abstract class FcmUpdateTokenRequest with _$FcmUpdateTokenRequest {
  const factory FcmUpdateTokenRequest({
    required String oldToken,
    required String newToken,
    @JsonKey(includeIfNull: false) String? deviceType,
    @JsonKey(includeIfNull: false) String? deviceId,
  }) = _FcmUpdateTokenRequest;

  factory FcmUpdateTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$FcmUpdateTokenRequestFromJson(json);
}

@freezed
abstract class FcmDeleteTokenRequest with _$FcmDeleteTokenRequest {
  const factory FcmDeleteTokenRequest({
    required String token,
  }) = _FcmDeleteTokenRequest;

  factory FcmDeleteTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$FcmDeleteTokenRequestFromJson(json);
}

// ========================== Nested Data Models ==========================

/// data field in register/update response: { id, deviceType, isValid }
@freezed
abstract class FcmTokenData with _$FcmTokenData {
  const factory FcmTokenData({
    required String id,
    required String deviceType,
    required bool isValid,
  }) = _FcmTokenData;

  factory FcmTokenData.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenDataFromJson(json);
}

/// Full token model returned inside getMyFcmTokens list
@freezed
abstract class FcmTokenModel with _$FcmTokenModel {
  const factory FcmTokenModel({
    required String id,
    required String deviceType,
    String? deviceId,
    required bool isValid,
    String? lastUsedAt,
    String? createdAt,
  }) = _FcmTokenModel;

  factory FcmTokenModel.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenModelFromJson(json);
}

/// data field in getMyFcmTokens response: { tokens, count }
@freezed
abstract class FcmTokensData with _$FcmTokensData {
  const factory FcmTokensData({
    required List<FcmTokenModel> tokens,
    required int count,
  }) = _FcmTokensData;

  factory FcmTokensData.fromJson(Map<String, dynamic> json) =>
      _$FcmTokensDataFromJson(json);
}

/// data field in deleteAllFcmTokens response: { deletedCount }
@freezed
abstract class FcmDeleteAllData with _$FcmDeleteAllData {
  const factory FcmDeleteAllData({
    int? deletedCount,
  }) = _FcmDeleteAllData;

  factory FcmDeleteAllData.fromJson(Map<String, dynamic> json) =>
      _$FcmDeleteAllDataFromJson(json);
}

// ========================== Responses ==========================

/// POST /fcm/tokens  &  PUT /fcm/tokens
@freezed
abstract class FcmTokenResponse with _$FcmTokenResponse {
  const factory FcmTokenResponse({
    required bool success,
    String? message,
    required FcmTokenData data,
  }) = _FcmTokenResponse;

  factory FcmTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenResponseFromJson(json);
}

/// DELETE /fcm/tokens  (data is always {})
@freezed
abstract class FcmDeleteTokenResponse with _$FcmDeleteTokenResponse {
  const factory FcmDeleteTokenResponse({
    required bool success,
    String? message,
  }) = _FcmDeleteTokenResponse;

  factory FcmDeleteTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$FcmDeleteTokenResponseFromJson(json);
}

/// DELETE /fcm/tokens/all
@freezed
abstract class FcmDeleteAllTokensResponse with _$FcmDeleteAllTokensResponse {
  const factory FcmDeleteAllTokensResponse({
    required bool success,
    String? message,
    required FcmDeleteAllData data,
  }) = _FcmDeleteAllTokensResponse;

  factory FcmDeleteAllTokensResponse.fromJson(Map<String, dynamic> json) =>
      _$FcmDeleteAllTokensResponseFromJson(json);
}

/// GET /fcm/tokens
@freezed
abstract class FcmTokensResponse with _$FcmTokensResponse {
  const factory FcmTokensResponse({
    required bool success,
    String? message,
    required FcmTokensData data,
  }) = _FcmTokensResponse;

  factory FcmTokensResponse.fromJson(Map<String, dynamic> json) =>
      _$FcmTokensResponseFromJson(json);
}
