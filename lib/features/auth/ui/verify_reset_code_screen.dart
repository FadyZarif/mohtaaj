// lib/features/auth/ui/screens/verify_reset_code_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../logic/forgot_password_cubit/forgot_password_state.dart';

class VerifyResetCodeScreen extends StatelessWidget {
  final String email;

  const VerifyResetCodeScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordCubit>(),
      child: _VerifyResetCodeBody(email: email),
    );
  }
}

class _VerifyResetCodeBody extends StatefulWidget {
  final String email;

  const _VerifyResetCodeBody({required this.email});

  @override
  State<_VerifyResetCodeBody> createState() => _VerifyResetCodeBodyState();
}

class _VerifyResetCodeBodyState extends State<_VerifyResetCodeBody> {
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();

  // Resend timer
  int _remainingSeconds = 60;
  Timer? _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _canResend = false;
    _remainingSeconds = 60;

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _canResend = true;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // PIN theme
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 56.h,
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorsManager.borderColor),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: ColorsManager.mainColor, width: 2),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: ColorsManager.mainColor.withValues(alpha: 0.1),
        border: Border.all(color: ColorsManager.mainColor),
      ),
    );

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
            listener: (context, state) {
              state.maybeWhen(
                codeVerified: (resetToken, email, name) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('تم التحقق من الرمز بنجاح'),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  // Navigate to reset password screen
                  context.pushReplacementNamed(
                    Routes.resetPasswordScreen,
                    arguments: {
                      'resetToken': resetToken,
                      'email': email,
                      'name': name,
                    },
                  );
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.error,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              final isLoading = state.maybeWhen(
                verifyingCode: () => true,
                orElse: () => false,
              );

              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(20),

                    // Icon
                    Container(
                      width: 100.w,
                      height: 100.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.mainColor.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.email_outlined,
                        size: 50.sp,
                        color: ColorsManager.mainColor,
                      ),
                    ),

                    verticalSpace(32),

                    // Title
                    Text('تحقق من الرمز', style: TextStyles.font24BlackBold),

                    verticalSpace(12),

                    // Subtitle
                    Text(
                      'أدخل الرمز المكون من 6 أرقام المرسل إلى',
                      style: TextStyles.font14GreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(4),
                    Text(
                      widget.email,
                      style: TextStyles.font14BlackSemiBold,
                      textAlign: TextAlign.center,
                    ),

                    verticalSpace(40),

                    // PIN Input
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        controller: _pinController,
                        focusNode: _focusNode,
                        length: 6,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        onCompleted: (pin) {
                          // Auto submit when 6 digits entered
                          context.read<ForgotPasswordCubit>().verifyResetCode(
                            widget.email,
                            pin,
                          );
                        },
                      ),
                    ),

                    verticalSpace(32),

                    // Verify Button
                    AppButton(
                      text: 'تحقق',
                      isLoading: isLoading,
                      onPressed: () {
                        if (_pinController.text.length == 6) {
                          context.read<ForgotPasswordCubit>().verifyResetCode(
                            widget.email,
                            _pinController.text,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('الرجاء إدخال الرمز كاملاً'),
                              backgroundColor: ColorsManager.error,
                            ),
                          );
                        }
                      },
                    ),

                    verticalSpace(24),

                    // Resend Code
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لم يصلك الرمز؟',
                          style: TextStyles.font14GreyRegular,
                        ),
                        if (_canResend)
                          TextButton(
                            onPressed: () {
                              context.read<ForgotPasswordCubit>().sendResetCode(
                                widget.email,
                              );
                              _startTimer();
                              _pinController.clear();
                            },
                            child: Text(
                              'إعادة إرسال',
                              style: TextStyles.font14CyanSemiBold,
                            ),
                          )
                        else
                          Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Text(
                              ' ($_remainingSeconds ثانية)',
                              style: TextStyles.font14GreyRegular,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
