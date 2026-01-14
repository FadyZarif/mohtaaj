// lib/features/auth/logic/register_cubit/register_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.detectingLocation() = _DetectingLocation;
  const factory RegisterState.locationDetected({
    required String city,
    required String country,
    required String phoneCountryCode,
  }) = LocationDetected;
  const factory RegisterState.locationError(String error) = _LocationError;

  // ✅ Update success - add email for verification flow
  const factory RegisterState.success({
    required String email,
    required String message,
  }) = Success;

  const factory RegisterState.error(String error) = _Error;
}