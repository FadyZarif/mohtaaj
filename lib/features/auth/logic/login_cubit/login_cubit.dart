// lib/features/auth/logic/login_cubit/login_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../chats/data/services/socket_service.dart';
import '../../data/models/login_request.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiService _apiService;
  final AuthService _authService;
  final SocketService _socketService;

  LoginCubit(this._apiService, this._authService, this._socketService)
      : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    try {
      final response = await _apiService.login(
        LoginRequest(email: email, password: password),
      );

      // ✅ Check if email verification is required
      if (response.data.requiresVerification == true) {
        print('⚠️ Email verification required');
        emit(LoginState.needsVerification(
          email: email,
          message: 'يرجى التحقق من بريدك الإلكتروني لإكمال تسجيل الدخول',
        ));
        return;
      }

      // ✅ User is verified - proceed with login
      if (response.data.tokens != null) {
        // Save tokens
        await _authService.saveTokens(
          accessToken: response.data.tokens!.accessToken,
          refreshToken: response.data.tokens!.refreshToken,
        );

        // Save user ID
        await _authService.saveUserId(response.data.user.id);

        // Save user data
        await _authService.saveUserData(response.data.user);

        // Register userId in GetIt
        if (getIt.isRegistered<String>(instanceName: 'userId')) {
          await getIt.unregister<String>(instanceName: 'userId');
        }
        getIt.registerSingleton<String>(
          response.data.user.id,
          instanceName: 'userId',
        );

        // Connect Socket
        print('🔌 Connecting socket after login...');
        await _socketService.connect();

        await Future.delayed(const Duration(seconds: 1));

        if (_socketService.isConnected) {
          print('✅ Socket connected successfully');
        } else {
          print('⚠️ Socket connection pending...');
        }

        emit(const LoginState.success('تم تسجيل الدخول بنجاح'));
      } else {
        // Should not happen if requiresVerification is false
        emit(const LoginState.error('حدث خطأ غير متوقع'));
      }
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(LoginState.error(apiError.message));
    }
  }
}