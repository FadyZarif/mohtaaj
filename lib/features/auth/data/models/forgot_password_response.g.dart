// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => _ForgotPasswordResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  messageKey: json['messageKey'] as String,
);

Map<String, dynamic> _$ForgotPasswordResponseToJson(
  _ForgotPasswordResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'messageKey': instance.messageKey,
};
