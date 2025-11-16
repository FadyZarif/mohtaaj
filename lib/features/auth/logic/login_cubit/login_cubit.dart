import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/login_request.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiService _apiService;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  LoginCubit(this._apiService) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    try {
      final response = await _apiService.login(
        LoginRequest(email: email, password: password),
      );

      // Save tokens
      await _secureStorage.write(
        key: 'accessToken',
        value: response.data.tokens.accessToken,
      );
      await _secureStorage.write(
        key: 'refreshToken',
        value: response.data.tokens.refreshToken,
      );

      // Optionally save user ID
      await _secureStorage.write(
        key: 'userId',
        value: response.data.user.id,
      );

      emit(LoginState.success('تم تسجيل الدخول بنجاح'));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(LoginState.error(apiError.message));
    }
  }
}