import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/spacing.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/validators.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../core/helpers/app_dialogs.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../logic/login_cubit/login_cubit.dart';
import '../logic/login_cubit/login_state.dart';
import 'widgets/password_text_field.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: const _LoginScreenBody(),
    );
  }
}

class _LoginScreenBody extends StatefulWidget {
  const _LoginScreenBody();

  @override
  State<_LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<_LoginScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  AppDialogs.showLoadingDialog(context);
                },
                success: (message) {
                  context.pop(); // Close loading dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  // Navigate to home
                  context.pushReplacementNamed(Routes.homeScreen);
                },
                error: (error) {
                  context.pop(); // Close loading dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error),
                      backgroundColor: ColorsManager.error,
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Form(
                  key: _formKey,
                  child: AutofillGroup(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(40),
                    
                        // Logo/App Name
                        Center(
                          child: Icon(
                            Icons.shopping_bag,
                            size: 80.sp,
                            color: ColorsManager.mainColor,
                          ),
                        ),
                    
                        verticalSpace(24),
                    
                        // Title
                        Center(
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyles.font24BlackBold,
                          ),
                        ),
                    
                        verticalSpace(8),
                    
                        // Subtitle
                        Center(
                          child: Text(
                            'مرحباً بك مرة أخرى',
                            style: TextStyles.font16GreyRegular,
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
                          autofillHints: const [AutofillHints.email],
                          validator: AppValidators.validateEmail,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: ColorsManager.textSecondary,
                            size: 20.sp,
                          ),
                        ),
                    
                        verticalSpace(24),
                    
                        // Password Field
                        Text(
                          'كلمة المرور',
                          style: TextStyles.font14BlackSemiBold,
                        ),
                        verticalSpace(8),
                        PasswordTextField(
                          hintText: '••••••••',
                          controller: _passwordController,
                          validator: AppValidators.validatePassword,
                        ),
                    
                        verticalSpace(16),
                    
                        // Forgot Password
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              // Navigate to forgot password
                              context.pushNamed(Routes.forgotPasswordScreen);
                            },
                            child: Text(
                              'نسيت كلمة المرور؟',
                              style: TextStyles.font14CyanMedium,
                            ),
                          ),
                        ),
                    
                        verticalSpace(24),
                    
                        // Login Button
                        AppButton(
                          text: 'تسجيل الدخول',
                          isLoading: state is Loading,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<LoginCubit>().login(
                                    _emailController.text.trim(),
                                    _passwordController.text,
                                  );
                            }
                          },
                        ),
                    
                        verticalSpace(16),
                    
                        // OR divider
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: ColorsManager.borderColor,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Text(
                                'أو',
                                style: TextStyles.font14GreyRegular,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: ColorsManager.borderColor,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                    
                        verticalSpace(16),
                    
                        // Guest Button
                        GestureDetector(
                          onTap: () {
                            // Navigate to home as guest
                            context.pushReplacementNamed(Routes.homeScreen);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: ColorsManager.mainColor,
                                width: 1.5.w,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: ColorsManager.mainColor,
                                  size: 20.sp,
                                ),
                                horizontalSpace(8),
                                Text(
                                  'تصفح كضيف',
                                  style: TextStyles.font16CyanSemiBold,
                                ),
                              ],
                            ),
                          ),
                        ),
                    
                        verticalSpace(24),
                    
                        // Register Link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ليس لديك حساب؟',
                              style: TextStyles.font14GreyRegular,
                            ),
                            TextButton(
                              onPressed: () {
                                context.pushNamed(Routes.registerScreen);
                              },
                              child: Text(
                                'إنشاء حساب',
                                style: TextStyles.font14CyanSemiBold,
                              ),
                            ),
                          ],
                        ),
                    
                        verticalSpace(24),
                      ],
                    ),
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
