// lib/features/auth/data/models/verify_email_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';
import 'tokens_model.dart';

part 'verify_email_response.freezed.dart';
part 'verify_email_response.g.dart';

@freezed
abstract class VerifyEmailResponse with _$VerifyEmailResponse {
  const factory VerifyEmailResponse({
    required bool success,
    required String message,
    required String messageKey,
    required VerifyEmailData data,
    required String timestamp,
  }) = _VerifyEmailResponse;

  factory VerifyEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailResponseFromJson(json);
}

@freezed
abstract class VerifyEmailData with _$VerifyEmailData {
  const factory VerifyEmailData({
    required UserModel user,
    required TokensModel tokens,
  }) = _VerifyEmailData;

  factory VerifyEmailData.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailDataFromJson(json);
}