class FcmRegisterTokenRequest {
  final String token;
  final String? deviceType;
  final String? deviceId;

  FcmRegisterTokenRequest({
    required this.token,
    this.deviceType,
    this.deviceId,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{'token': token};
    if (deviceType != null) map['deviceType'] = deviceType;
    if (deviceId != null) map['deviceId'] = deviceId;
    return map;
  }
}

class FcmUpdateTokenRequest {
  final String oldToken;
  final String newToken;
  final String? deviceType;
  final String? deviceId;

  FcmUpdateTokenRequest({
    required this.oldToken,
    required this.newToken,
    this.deviceType,
    this.deviceId,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'oldToken': oldToken,
      'newToken': newToken,
    };
    if (deviceType != null) map['deviceType'] = deviceType;
    if (deviceId != null) map['deviceId'] = deviceId;
    return map;
  }
}

class FcmDeleteTokenRequest {
  final String token;

  FcmDeleteTokenRequest({required this.token});

  Map<String, dynamic> toJson() => {'token': token};
}

class FcmTokenModel {
  final String id;
  final String deviceType;
  final String? deviceId;
  final bool isValid;
  final String? lastUsedAt;
  final String createdAt;

  FcmTokenModel({
    required this.id,
    required this.deviceType,
    this.deviceId,
    required this.isValid,
    this.lastUsedAt,
    required this.createdAt,
  });

  factory FcmTokenModel.fromJson(Map<String, dynamic> json) {
    return FcmTokenModel(
      id: json['id'] as String,
      deviceType: json['deviceType'] as String,
      deviceId: json['deviceId'] as String?,
      isValid: json['isValid'] as bool,
      lastUsedAt: json['lastUsedAt'] as String?,
      createdAt: json['createdAt'] as String,
    );
  }
}

class FcmRegisterTokenResponse {
  final bool success;
  final String? message;
  final FcmTokenModel data;

  FcmRegisterTokenResponse({
    required this.success,
    this.message,
    required this.data,
  });

  factory FcmRegisterTokenResponse.fromJson(Map<String, dynamic> json) {
    return FcmRegisterTokenResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: FcmTokenModel.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}

class FcmTokensResponse {
  final bool success;
  final List<FcmTokenModel> tokens;
  final int count;

  FcmTokensResponse({
    required this.success,
    required this.tokens,
    required this.count,
  });

  factory FcmTokensResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return FcmTokensResponse(
      success: json['success'] as bool,
      tokens: (data['tokens'] as List)
          .map((e) => FcmTokenModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: data['count'] as int,
    );
  }
}

class FcmDeleteAllResponse {
  final bool success;
  final int? deletedCount;

  FcmDeleteAllResponse({required this.success, this.deletedCount});

  factory FcmDeleteAllResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>?;
    return FcmDeleteAllResponse(
      success: json['success'] as bool,
      deletedCount: data?['deletedCount'] as int?,
    );
  }
}
