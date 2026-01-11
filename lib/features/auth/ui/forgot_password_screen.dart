// lib/features/auth/ui/screens/forgot_password_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/validators.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../logic/forgot_password_cubit/forgot_password_state.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordCubit>(),
      child: const _ForgotPasswordBody(),
    );
  }
}

class _ForgotPasswordBody extends StatefulWidget {
  const _ForgotPasswordBody();

  @override
  State<_ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<_ForgotPasswordBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                codeSent: (email, message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  // Navigate to verify code screen
                  context.pushReplacementNamed(
                    Routes.verifyResetCodeScreen,
                    arguments: email,
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
                sendingCode: () => true,
                orElse: () => false,
              );

              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(20),

                      // Icon
                      Center(
                        child: Container(
                          width: 100.w,
                          height: 100.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.mainColor.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.lock_reset,
                            size: 50.sp,
                            color: ColorsManager.mainColor,
                          ),
                        ),
                      ),

                      verticalSpace(32),

                      // Title
                      Center(
                        child: Text(
                          'نسيت كلمة المرور؟',
                          style: TextStyles.font24BlackBold,
                        ),
                      ),

                      verticalSpace(12),

                      // Subtitle
                      Center(
                        child: Text(
                          'أدخل بريدك الإلكتروني وسنرسل لك\nرمز التحقق',
                          style: TextStyles.font14GreyRegular,
                          textAlign: TextAlign.center,
                        ),
                      ),

                      verticalSpace(40),

                      // Email Field
                      Text(
                        'البريد الإلكتروني',
                        style: TextStyles.font14BlackSemiBold,
                      ),
                      verticalSpace(8),
                      AppTextField(
                        hintText: 'example@email.com',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: AppValidators.validateEmail,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: ColorsManager.textSecondary,
                          size: 20.sp,
                        ),
                      ),

                      verticalSpace(32),

                      // Send Code Button
                      AppButton(
                        text: 'إرسال الرمز',
                        isLoading: isLoading,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<ForgotPasswordCubit>().sendResetCode(
                              _emailController.text.trim(),
                            );
                          }
                        },
                      ),

                      verticalSpace(24),

                      // Back to Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تذكرت كلمة المرور؟',
                            style: TextStyles.font14GreyRegular,
                          ),
                          TextButton(
                            onPressed: () => context.pop(),
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyles.font14CyanSemiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
