// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FcmRegisterTokenRequest _$FcmRegisterTokenRequestFromJson(
  Map<String, dynamic> json,
) => _FcmRegisterTokenRequest(
  token: json['token'] as String,
  deviceType: json['deviceType'] as String?,
  deviceId: json['deviceId'] as String?,
);

Map<String, dynamic> _$FcmRegisterTokenRequestToJson(
  _FcmRegisterTokenRequest instance,
) => <String, dynamic>{
  'token': instance.token,
  'deviceType': ?instance.deviceType,
  'deviceId': ?instance.deviceId,
};

_FcmUpdateTokenRequest _$FcmUpdateTokenRequestFromJson(
  Map<String, dynamic> json,
) => _FcmUpdateTokenRequest(
  oldToken: json['oldToken'] as String,
  newToken: json['newToken'] as String,
  deviceType: json['deviceType'] as String?,
  deviceId: json['deviceId'] as String?,
);

Map<String, dynamic> _$FcmUpdateTokenRequestToJson(
  _FcmUpdateTokenRequest instance,
) => <String, dynamic>{
  'oldToken': instance.oldToken,
  'newToken': instance.newToken,
  'deviceType': ?instance.deviceType,
  'deviceId': ?instance.deviceId,
};

_FcmDeleteTokenRequest _$FcmDeleteTokenRequestFromJson(
  Map<String, dynamic> json,
) => _FcmDeleteTokenRequest(token: json['token'] as String);

Map<String, dynamic> _$FcmDeleteTokenRequestToJson(
  _FcmDeleteTokenRequest instance,
) => <String, dynamic>{'token': instance.token};

_FcmTokenData _$FcmTokenDataFromJson(Map<String, dynamic> json) =>
    _FcmTokenData(
      id: json['id'] as String,
      deviceType: json['deviceType'] as String,
      isValid: json['isValid'] as bool,
    );

Map<String, dynamic> _$FcmTokenDataToJson(_FcmTokenData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceType': instance.deviceType,
      'isValid': instance.isValid,
    };

_FcmTokenModel _$FcmTokenModelFromJson(Map<String, dynamic> json) =>
    _FcmTokenModel(
      id: json['id'] as String,
      deviceType: json['deviceType'] as String,
      deviceId: json['deviceId'] as String?,
      isValid: json['isValid'] as bool,
      lastUsedAt: json['lastUsedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$FcmTokenModelToJson(_FcmTokenModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceType': instance.deviceType,
      'deviceId': instance.deviceId,
      'isValid': instance.isValid,
      'lastUsedAt': instance.lastUsedAt,
      'createdAt': instance.createdAt,
    };

_FcmTokensData _$FcmTokensDataFromJson(Map<String, dynamic> json) =>
    _FcmTokensData(
      tokens: (json['tokens'] as List<dynamic>)
          .map((e) => FcmTokenModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$FcmTokensDataToJson(_FcmTokensData instance) =>
    <String, dynamic>{'tokens': instance.tokens, 'count': instance.count};

_FcmDeleteAllData _$FcmDeleteAllDataFromJson(Map<String, dynamic> json) =>
    _FcmDeleteAllData(deletedCount: (json['deletedCount'] as num?)?.toInt());

Map<String, dynamic> _$FcmDeleteAllDataToJson(_FcmDeleteAllData instance) =>
    <String, dynamic>{'deletedCount': instance.deletedCount};

_FcmTokenResponse _$FcmTokenResponseFromJson(Map<String, dynamic> json) =>
    _FcmTokenResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: FcmTokenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FcmTokenResponseToJson(_FcmTokenResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_FcmDeleteTokenResponse _$FcmDeleteTokenResponseFromJson(
  Map<String, dynamic> json,
) => _FcmDeleteTokenResponse(
  success: json['success'] as bool,
  message: json['message'] as String?,
);

Map<String, dynamic> _$FcmDeleteTokenResponseToJson(
  _FcmDeleteTokenResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};

_FcmDeleteAllTokensResponse _$FcmDeleteAllTokensResponseFromJson(
  Map<String, dynamic> json,
) => _FcmDeleteAllTokensResponse(
  success: json['success'] as bool,
  message: json['message'] as String?,
  data: FcmDeleteAllData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FcmDeleteAllTokensResponseToJson(
  _FcmDeleteAllTokensResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_FcmTokensResponse _$FcmTokensResponseFromJson(Map<String, dynamic> json) =>
    _FcmTokensResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: FcmTokensData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FcmTokensResponseToJson(_FcmTokensResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
