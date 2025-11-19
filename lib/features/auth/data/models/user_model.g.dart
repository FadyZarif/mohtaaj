// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  city: json['city'] as String,
  country: json['country'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  ratingAvg: (json['ratingAvg'] as num?)?.toDouble() ?? 0.0,
  reputationScore: (json['reputationScore'] as num?)?.toDouble() ?? 0.0,
  isVerified: json['isVerified'] as bool? ?? false,
  role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.user,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  lastActive: json['lastActive'] == null
      ? null
      : DateTime.parse(json['lastActive'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'city': instance.city,
      'country': instance.country,
      'avatarUrl': instance.avatarUrl,
      'ratingAvg': instance.ratingAvg,
      'reputationScore': instance.reputationScore,
      'isVerified': instance.isVerified,
      'role': _$RoleEnumMap[instance.role]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastActive': instance.lastActive?.toIso8601String(),
    };

const _$RoleEnumMap = {Role.admin: 'admin', Role.user: 'user'};
