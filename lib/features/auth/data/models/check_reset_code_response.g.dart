// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_reset_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckResetCodeResponse _$CheckResetCodeResponseFromJson(
  Map<String, dynamic> json,
) => _CheckResetCodeResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  messageKey: json['messageKey'] as String,
  data: CheckResetCodeData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CheckResetCodeResponseToJson(
  _CheckResetCodeResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'messageKey': instance.messageKey,
  'data': instance.data,
};

_CheckResetCodeData _$CheckResetCodeDataFromJson(Map<String, dynamic> json) =>
    _CheckResetCodeData(
      resetToken: json['resetToken'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CheckResetCodeDataToJson(_CheckResetCodeData instance) =>
    <String, dynamic>{
      'resetToken': instance.resetToken,
      'email': instance.email,
      'name': instance.name,
    };
