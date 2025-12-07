import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/services/auth_service.dart';
import '../../../chats/data/services/socket_service.dart';
import '../../data/models/update_profile_request.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ApiService _apiService;
  final AuthService _authService;
  final SocketService _socketService;

  ProfileCubit(this._apiService, this._authService, this._socketService)
      : super(const ProfileState.initial());

  /// Get user profile
  Future<void> getProfile() async {
    emit(const ProfileState.loading());

    try {
      final response = await _apiService.getMyProfile();
      emit(ProfileState.success(response.data));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(ProfileState.error(
        apiError.message ?? 'حدث خطأ في جلب البيانات',
      ));
    }
  }

  /// Update user profile
  Future<void> updateProfile(UpdateProfileRequest request) async {
    emit(const ProfileState.loading());

    try {
      final response = await _apiService.updateProfile(request);
      emit(ProfileState.updateSuccess(response.data));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(ProfileState.error(
        apiError.message ?? 'حدث خطأ في تحديث البيانات',
      ));
    }
  }

  /// Logout user
  Future<void> logout() async {
    emit(const ProfileState.loading());

    try {
      // Call logout API (optional - some backends need it)
      await _apiService.logout({});

      // Clear local data
      await _authService.logout();

      // ✅ Disconnect Socket
      _socketService.disconnect();

      // ✅ Unregister userId من GetIt
      if (getIt.isRegistered<String>(instanceName: 'userId')) {
        await getIt.unregister<String>(instanceName: 'userId');
      }

      emit(const ProfileState.logoutSuccess());
    } catch (error) {
      // Even if API fails, clear local data
      await _authService.logout();
      emit(const ProfileState.logoutSuccess());
    }
  }
}
