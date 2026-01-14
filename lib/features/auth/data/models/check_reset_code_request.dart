// lib/features/auth/data/models/check_reset_code_request.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_reset_code_request.freezed.dart';
part 'check_reset_code_request.g.dart';

@freezed
abstract class CheckResetCodeRequest with _$CheckResetCodeRequest {
  const factory CheckResetCodeRequest({
    required String email,
    required String resetCode,
  }) = _CheckResetCodeRequest;

  factory CheckResetCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckResetCodeRequestFromJson(json);
}
