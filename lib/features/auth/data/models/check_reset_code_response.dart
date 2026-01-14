// lib/features/auth/data/models/check_reset_code_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_reset_code_response.freezed.dart';
part 'check_reset_code_response.g.dart';

@freezed
abstract class CheckResetCodeResponse with _$CheckResetCodeResponse {
  const factory CheckResetCodeResponse({
    required bool success,
    required String message,
    required String messageKey,
    required CheckResetCodeData data,
  }) = _CheckResetCodeResponse;

  factory CheckResetCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckResetCodeResponseFromJson(json);
}

@freezed
abstract class CheckResetCodeData with _$CheckResetCodeData {
  const factory CheckResetCodeData({
    required String resetToken,
    required String email,
    required String name,
  }) = _CheckResetCodeData;

  factory CheckResetCodeData.fromJson(Map<String, dynamic> json) =>
      _$CheckResetCodeDataFromJson(json);
}
