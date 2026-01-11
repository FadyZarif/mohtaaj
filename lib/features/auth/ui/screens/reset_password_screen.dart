// lib/features/auth/ui/screens/reset_password_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/helpers/validators.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../logic/forgot_password_cubit/forgot_password_state.dart';
import '../widgets/password_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const ResetPasswordScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordCubit>(),
      child: _ResetPasswordBody(
        resetToken: data['resetToken'] as String,
        email: data['email'] as String,
        name: data['name'] as String,
      ),
    );
  }
}

class _ResetPasswordBody extends StatefulWidget {
  final String resetToken;
  final String email;
  final String name;

  const _ResetPasswordBody({
    required this.resetToken,
    required this.email,
    required this.name,
  });

  @override
  State<_ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<_ResetPasswordBody> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء تأكيد كلمة المرور';
    }
    if (value != _passwordController.text) {
      return 'كلمة المرور غير متطابقة';
    }
    return null;
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
                passwordReset: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  // Navigate to login screen
                  context.pushReplacementNamed(Routes.loginScreen);
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
                resettingPassword: () => true,
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
                            color: ColorsManager.mainColor.withValues(
                              alpha: 0.1,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.lock_outline,
                            size: 50.sp,
                            color: ColorsManager.mainColor,
                          ),
                        ),
                      ),

                      verticalSpace(32),

                      // Title
                      Center(
                        child: Text(
                          'كلمة مرور جديدة',
                          style: TextStyles.font24BlackBold,
                        ),
                      ),

                      verticalSpace(12),

                      // Subtitle
                      Center(
                        child: Text(
                          'أدخل كلمة المرور الجديدة لحسابك',
                          style: TextStyles.font14GreyRegular,
                          textAlign: TextAlign.center,
                        ),
                      ),

                      verticalSpace(40),

                      // Password Field
                      Text(
                        'كلمة المرور الجديدة',
                        style: TextStyles.font14BlackSemiBold,
                      ),
                      verticalSpace(8),
                      PasswordTextField(
                        hintText: '••••••••',
                        controller: _passwordController,
                        validator: AppValidators.validatePassword,
                      ),

                      verticalSpace(24),

                      // Confirm Password Field
                      Text(
                        'تأكيد كلمة المرور',
                        style: TextStyles.font14BlackSemiBold,
                      ),
                      verticalSpace(8),
                      PasswordTextField(
                        hintText: '••••••••',
                        controller: _confirmPasswordController,
                        validator: _validateConfirmPassword,
                      ),

                      verticalSpace(32),

                      // Reset Button
                      AppButton(
                        text: 'إعادة تعيين كلمة المرور',
                        isLoading: isLoading,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<ForgotPasswordCubit>().resetPassword(
                              resetToken: widget.resetToken,
                              password: _passwordController.text,
                              passwordConfirm: _confirmPasswordController.text,
                            );
                          }
                        },
                      ),

                      verticalSpace(24),
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
