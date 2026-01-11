// lib/features/auth/logic/login_cubit/login_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;

  // ✅ Success - user verified and logged in
  const factory LoginState.success(String message) = Success;

  // ✅ NEW - needs email verification
  const factory LoginState.needsVerification({
    required String email,
    required String message,
  }) = NeedsVerification;

  const factory LoginState.error(String error) = Error;
}