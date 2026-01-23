// lib/features/auth/logic/email_verification/email_verification_cubit.dart

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/services/auth_service.dart';
import '../../../chats/data/services/socket_service.dart';
import '../../data/models/verify_email_request.dart';
import '../../data/models/forgot_password_request.dart';
import 'email_verification_state.dart';

class EmailVerificationCubit extends Cubit<EmailVerificationState> {
  final ApiService _apiService;
  final AuthService _authService;
  final SocketService _socketService;

  EmailVerificationCubit(
      this._apiService,
      this._authService,
      this._socketService,
      ) : super(const EmailVerificationState.initial());

  // Verify email with code
  Future<void> verifyEmail(String email, String code) async {
    emit(const EmailVerificationState.verifying());

    try {
      final response = await _apiService.verifyEmail(
        VerifyEmailRequest(
          email: email,
          verificationCode: code,
        ),
      );

      // ✅ Save tokens
      await _authService.saveTokens(
        accessToken: response.data.tokens.accessToken,
        refreshToken: response.data.tokens.refreshToken,
      );

      // ✅ Save user data
      await _authService.saveUserId(response.data.user.id);
      await _authService.saveUserData(response.data.user);

      // ✅ Register userId in GetIt
      if (getIt.isRegistered<String>(instanceName: 'userId')) {
        await getIt.unregister<String>(instanceName: 'userId');
      }
      getIt.registerSingleton<String>(
        response.data.user.id,
        instanceName: 'userId',
      );

      // ✅ Connect Socket
      if (kDebugMode) {
        print('🔌 Connecting socket after verification...');
      }
      await _socketService.connect();
      await Future.delayed(const Duration(seconds: 1));

      if (_socketService.isConnected) {
        if (kDebugMode) {
          print('✅ Socket connected successfully');
        }
      }

      emit(EmailVerificationState.verified(
        message: response.message,
      ));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(EmailVerificationState.error(
        apiError.message,
      ));
    }
  }

  // Resend verification code
  Future<void> resendCode(String email) async {
    emit(const EmailVerificationState.resendingCode());

    try {
      // ✅ Use forgot password endpoint to resend code
      final response = await _apiService.forgotPassword(
        ForgotPasswordRequest(email: email),
      );

      emit(EmailVerificationState.codeResent(
        message: response.message,
      ));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(EmailVerificationState.error(
        apiError.message,
      ));
    }
  }

  // Reset to initial state
  void reset() {
    emit(const EmailVerificationState.initial());
  }
}