import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required String phone,
    required String city,
    required String country,
    String? avatarUrl,
    // @Default(0) int ratingCount,
    @Default(0.0) double ratingAvg,
    @Default(0.0) double reputationScore,
    @Default(false) bool isVerified,
    @Default('user') String role,
    DateTime? createdAt,
    DateTime? updatedAt,

   /* String? bio,
    String? website,
    @Default([]) List<SocialLink> socialLinks,
    @Default(0) int reputationPoints,*/

  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

}

/*@freezed
class SocialLink with _$SocialLink {
  const factory SocialLink({
    required String platform,
    required String url,
  }) = _SocialLink;

  factory SocialLink.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkFromJson(json);
}*/
