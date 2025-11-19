import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/data/models/user_model.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required bool success,
    required UserModel data,
    required String timestamp,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
