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
import '../../logic/email_verification_cubit/email_verification_cubit.dart';
import '../../logic/email_verification_cubit/email_verification_state.dart';

class EmailVerificationScreen extends StatelessWidget {
  final String email;
  final bool fromRegister; // true if from register, false if from login

  const EmailVerificationScreen({
    super.key,
    required this.email,
    this.fromRegister = true,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EmailVerificationCubit>(),
      child: _EmailVerificationBody(
        email: email,
        fromRegister: fromRegister,
      ),
    );
  }
}

class _EmailVerificationBody extends StatefulWidget {
  final String email;
  final bool fromRegister;

  const _EmailVerificationBody({
    required this.email,
    required this.fromRegister,
  });

  @override
  State<_EmailVerificationBody> createState() => _EmailVerificationBodyState();
}

class _EmailVerificationBodyState extends State<_EmailVerificationBody> {
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

  String _maskEmail(String email) {
    final parts = email.split('@');
    if (parts.length != 2) return email;

    final username = parts[0];
    final domain = parts[1];

    if (username.length <= 3) return email;

    final visible = username.substring(0, 3);
    return '$visible***@$domain';
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
        color: ColorsManager.mainColor.withOpacity(0.1),
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
          child: BlocConsumer<EmailVerificationCubit, EmailVerificationState>(
            listener: (context, state) {
              state.maybeWhen(
                verified: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  // Navigate to home
                  context.pushReplacementNamed(Routes.homeScreen);
                },
                codeResent: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  _pinController.clear();
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
              final isVerifying = state.maybeWhen(
                verifying: () => true,
                orElse: () => false,
              );
              final isResending = state.maybeWhen(
                resendingCode: () => true,
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
                        color: ColorsManager.mainColor.withOpacity(0.1),
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
                    Text(
                      'تحقق من بريدك الإلكتروني',
                      style: TextStyles.font24BlackBold,
                      textAlign: TextAlign.center,
                    ),

                    verticalSpace(12),

                    // Subtitle
                    Text(
                      'أدخل الرمز المكون من 6 أرقام المرسل إلى',
                      style: TextStyles.font14GreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(4),
                    Text(
                      _maskEmail(widget.email),
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
                        enabled: !isVerifying,
                        onCompleted: (pin) {
                          // Auto submit when 6 digits entered
                          context.read<EmailVerificationCubit>().verifyEmail(
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
                      isLoading: isVerifying,
                      onPressed: () {
                        if (_pinController.text.length == 6) {
                          context.read<EmailVerificationCubit>().verifyEmail(
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
                    if (isResending)
                      const CircularProgressIndicator()
                    else
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
                                context
                                    .read<EmailVerificationCubit>()
                                    .resendCode(widget.email);
                                _startTimer();
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

                    verticalSpace(24),

                    // Info text
                    Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: ColorsManager.mainColor.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: ColorsManager.mainColor.withOpacity(0.2),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: ColorsManager.mainColor,
                            size: 20.sp,
                          ),
                          horizontalSpace(12),
                          Expanded(
                            child: Text(
                              'تحقق من صندوق البريد الوارد أو مجلد الرسائل غير المرغوب فيها',
                              style: TextStyles.font12GreyRegular,
                            ),
                          ),
                        ],
                      ),
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