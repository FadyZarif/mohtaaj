import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required bool success,
    // required String message,
    required LoginData data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

}

@freezed
abstract class LoginData with _$LoginData {
  const factory LoginData({
    // لو الـ API بيرجع "user" عادي مش محتاج JsonKey
    required UserModel user,
    required TokensModel tokens,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

}

@freezed
abstract class TokensModel with _$TokensModel {
  const factory TokensModel({
    // لو الـ API بيرجع access_token و refresh_token:
    // @JsonKey(name: 'access_token') required String accessToken,
    // @JsonKey(name: 'refresh_token') required String refreshToken,
    required String accessToken,
    required String refreshToken,
  }) = _TokensModel;

  factory TokensModel.fromJson(Map<String, dynamic> json) =>
      _$TokensModelFromJson(json);

}
