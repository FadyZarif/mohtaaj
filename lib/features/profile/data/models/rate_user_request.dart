// features/user_profile/data/models/rate_user_request.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_user_request.freezed.dart';
part 'rate_user_request.g.dart';

@freezed
abstract class RateUserRequest with _$RateUserRequest {
  const factory RateUserRequest({
    required int rating,
    String? comment,
    required String itemId,
  }) = _RateUserRequest;

  factory RateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$RateUserRequestFromJson(json);
}