// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyEmailResponse _$VerifyEmailResponseFromJson(Map<String, dynamic> json) =>
    _VerifyEmailResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      messageKey: json['messageKey'] as String,
      data: VerifyEmailData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$VerifyEmailResponseToJson(
  _VerifyEmailResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'messageKey': instance.messageKey,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_VerifyEmailData _$VerifyEmailDataFromJson(Map<String, dynamic> json) =>
    _VerifyEmailData(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      tokens: TokensModel.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyEmailDataToJson(_VerifyEmailData instance) =>
    <String, dynamic>{'user': instance.user, 'tokens': instance.tokens};
