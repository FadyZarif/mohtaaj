import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/login_request.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiService _apiService;
  final AuthService _authService;

  LoginCubit(this._apiService, this._authService) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    try {
      final response = await _apiService.login(
        LoginRequest(email: email, password: password),
      );

      // Save tokens
      await _authService.saveTokens(
        accessToken: response.data.tokens.accessToken,
        refreshToken: response.data.tokens.refreshToken,
      );

      // Optionally save user ID
      await _authService.saveUserId(response.data.user.id);


      // Save user data as JSON string
      await _authService.saveUserData(response.data.user);


      emit(LoginState.success('تم تسجيل الدخول بنجاح'));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(LoginState.error(apiError.message));
    }
  }
}