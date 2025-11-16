import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.detectingLocation() = DetectingLocation;
  const factory RegisterState.locationDetected({
    required String city,
    required String country,
  }) = LocationDetected;
  const factory RegisterState.locationError(String error) = LocationError;
  const factory RegisterState.success(String message) = Success;
  const factory RegisterState.error(String error) = Error;
}
