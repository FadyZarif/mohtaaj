import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/data/models/user_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success(UserModel user) = Success;
  const factory ProfileState.updateSuccess(UserModel user) = UpdateSuccess;
  const factory ProfileState.logoutSuccess() = LogoutSuccess;
  const factory ProfileState.error(String message) = Error;
}
