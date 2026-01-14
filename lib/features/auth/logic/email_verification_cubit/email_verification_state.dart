// lib/features/auth/logic/email_verification/email_verification_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_state.freezed.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.initial() = _Initial;

  // Verifying code
  const factory EmailVerificationState.verifying() = _Verifying;

  // Success - email verified, got tokens
  const factory EmailVerificationState.verified({
    required String message,
  }) = _Verified;

  // Resending code
  const factory EmailVerificationState.resendingCode() = _ResendingCode;
  const factory EmailVerificationState.codeResent({
    required String message,
  }) = _CodeResent;

  // Error
  const factory EmailVerificationState.error(String message) = _Error;
}