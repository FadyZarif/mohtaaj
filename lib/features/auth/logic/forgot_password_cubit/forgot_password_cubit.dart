// lib/features/auth/logic/forgot_password/forgot_password_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/models/forgot_password_request.dart';
import '../../data/models/check_reset_code_request.dart';
import '../../data/models/reset_password_request.dart';
import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ApiService _apiService;

  ForgotPasswordCubit(this._apiService)
    : super(const ForgotPasswordState.initial());

  // Step 1: Send reset code to email
  Future<void> sendResetCode(String email) async {
    emit(const ForgotPasswordState.sendingCode());

    try {
      final response = await _apiService.forgotPassword(
        ForgotPasswordRequest(email: email),
      );

      emit(
        ForgotPasswordState.codeSent(email: email, message: response.message),
      );
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(ForgotPasswordState.error(apiError.message));
    }
  }

  // Step 2: Verify reset code
  Future<void> verifyResetCode(String email, String code) async {
    emit(const ForgotPasswordState.verifyingCode());

    try {
      final response = await _apiService.checkResetCode(
        CheckResetCodeRequest(email: email, resetCode: code),
      );

      emit(
        ForgotPasswordState.codeVerified(
          resetToken: response.data.resetToken,
          email: response.data.email,
          name: response.data.name,
        ),
      );
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(ForgotPasswordState.error(apiError.message));
    }
  }

  // Step 3: Reset password
  Future<void> resetPassword({
    required String resetToken,
    required String password,
    required String passwordConfirm,
  }) async {
    emit(const ForgotPasswordState.resettingPassword());

    try {
      final response = await _apiService.resetPassword(
        ResetPasswordRequest(
          resetToken: resetToken,
          password: password,
          passwordConfirm: passwordConfirm,
        ),
      );

      emit(ForgotPasswordState.passwordReset(message: response.message));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(ForgotPasswordState.error(apiError.message));
    }
  }

  // Reset to initial state
  void reset() {
    emit(const ForgotPasswordState.initial());
  }
}
