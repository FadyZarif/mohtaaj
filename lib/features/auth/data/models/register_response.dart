import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';
import 'tokens_model.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
abstract class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required bool success,
    required RegisterData data,
    required String timestamp,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
abstract class RegisterData with _$RegisterData {
  const factory RegisterData({
    required UserModel user,
    required TokensModel tokens,
  }) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}