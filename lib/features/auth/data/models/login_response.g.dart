// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      success: json['success'] as bool,
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_LoginData _$LoginDataFromJson(Map<String, dynamic> json) => _LoginData(
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
  tokens: TokensModel.fromJson(json['tokens'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginDataToJson(_LoginData instance) =>
    <String, dynamic>{'user': instance.user, 'tokens': instance.tokens};
