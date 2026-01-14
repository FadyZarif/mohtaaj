// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordRequest _$ResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => _ResetPasswordRequest(
  resetToken: json['resetToken'] as String,
  password: json['password'] as String,
  passwordConfirm: json['passwordConfirm'] as String,
);

Map<String, dynamic> _$ResetPasswordRequestToJson(
  _ResetPasswordRequest instance,
) => <String, dynamic>{
  'resetToken': instance.resetToken,
  'password': instance.password,
  'passwordConfirm': instance.passwordConfirm,
};
