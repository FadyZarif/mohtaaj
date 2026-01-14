// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_reset_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckResetCodeRequest _$CheckResetCodeRequestFromJson(
  Map<String, dynamic> json,
) => _CheckResetCodeRequest(
  email: json['email'] as String,
  resetCode: json['resetCode'] as String,
);

Map<String, dynamic> _$CheckResetCodeRequestToJson(
  _CheckResetCodeRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'resetCode': instance.resetCode,
};
