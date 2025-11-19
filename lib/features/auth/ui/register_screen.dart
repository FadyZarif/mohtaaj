import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/app_dialogs.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/location_data.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/validators.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../data/models/register_request.dart';
import '../logic/register_cubit/register_cubit.dart';
import '../logic/register_cubit/register_state.dart';
import 'widgets/password_text_field.dart';
import 'widgets/phone_text_field.dart';
import 'widgets/searchable_dropdown.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: const _RegisterScreenBody(),
    );
  }
}

class _RegisterScreenBody extends StatefulWidget {
  const _RegisterScreenBody();

  @override
  State<_RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<_RegisterScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  // Keys for widgets that need to be rebuilt
  final _phoneFieldKey = GlobalKey<PhoneTextFieldState>();

  String? _selectedCountry;
  String? _selectedCity;
  String _dial = '+20';
  String _initialCode = 'EG'; // Initial country code for phone picker

  @override
  void initState() {
    super.initState();
    // Auto-detect location when screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<RegisterCubit>().detectLocation();
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
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
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.textPrimary,
            ),
            onPressed: () => context.pop(),
          ),
          title: Text(
            'إنشاء حساب',
            style: TextStyles.font20BlackBold,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: BlocConsumer<RegisterCubit, RegisterState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {
                  AppDialogs.showLoadingDialog(context);
                },
                detectingLocation: () {

                },
                locationDetected: (city, country, phoneCountryCode) {
                  setState(() {
                    _selectedCity = city;
                    _selectedCountry = country;
                    _initialCode = phoneCountryCode;
                  });

                  // Update phone field country code
                  _phoneFieldKey.currentState?.updateCountryCode(phoneCountryCode);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('تم تحديد موقعك: $city, $country'),
                      backgroundColor: ColorsManager.success,
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                locationError: (error) {
                  // Set default values
                  setState(() {
                    _selectedCity = 'القاهرة';
                    _selectedCountry = 'مصر';
                    _initialCode = 'EG';
                  });
                },
                success: (message) {
                  context.pop(); // Close loading dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                  // Navigate to login
                  context.pushReplacementNamed(Routes.loginScreen);
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
              final isDetectingLocation = state is DetectingLocation;
              final isLoading = state is Loading;

              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(24),

                      // Name Field
                      Text('الاسم', style: TextStyles.font14BlackSemiBold),
                      verticalSpace(8),
                      AppTextField(
                        hintText: 'أدخل اسمك الكامل',
                        controller: _nameController,
                        validator: AppValidators.validateName,
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: ColorsManager.textSecondary,
                          size: 20.sp,
                        ),
                      ),

                      verticalSpace(20),

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

                      verticalSpace(20),

                      // Phone Field
                      Text(
                        'رقم الهاتف',
                        style: TextStyles.font14BlackSemiBold,
                      ),
                      verticalSpace(8),
                      PhoneTextField(
                        key: _phoneFieldKey,
                        controller: _phoneController,
                        initialCode: _initialCode,
                        validator: AppValidators.validatePhone,
                        onCountryChanged: (code) {
                          _dial = code;
                        },
                      ),

                      verticalSpace(20),

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

                      verticalSpace(20),

                      // Country Dropdown
                      Row(
                        children: [
                          Text(
                            'الدولة',
                            style: TextStyles.font14BlackSemiBold,
                          ),
                          if (isDetectingLocation) ...[
                            horizontalSpace(8),
                            SizedBox(
                              width: 12.w,
                              height: 12.h,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation(
                                  ColorsManager.mainColor,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      verticalSpace(8),
                      SearchableDropdown(
                        hintText: 'اختر الدولة',
                        items: LocationData.arabCountries,
                        selectedItem: _selectedCountry,
                        onChanged: (value) {
                          setState(() {
                            _selectedCountry = value;
                            // Reset city when country changes
                            _selectedCity = null;

                            // Update phone country code when country changes
                            if (value != null) {
                              final newCode = LocationData.getCodeByCountry(value);
                              _phoneFieldKey.currentState?.updateCountryCode(newCode);
                            }
                          });
                        },
                        validator: (value) =>
                        value == null ? 'الرجاء اختيار الدولة' : null,
                      ),

                      verticalSpace(20),

                      // City Dropdown
                      Text(
                        'المدينة',
                        style: TextStyles.font14BlackSemiBold,
                      ),
                      verticalSpace(8),
                      SearchableDropdown(
                        hintText: 'اختر المدينة',
                        items: _selectedCountry != null
                            ? LocationData.getCitiesByCountry(_selectedCountry!)
                            : LocationData.egyptianCities,
                        selectedItem: _selectedCity,
                        onChanged: (value) {
                          setState(() {
                            _selectedCity = value;
                          });
                        },
                        validator: (value) =>
                        value == null ? 'الرجاء اختيار المدينة' : null,
                      ),

                      verticalSpace(32),

                      // Register Button
                      AppButton(
                        text: 'إنشاء حساب',
                        isLoading: isLoading,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final request = RegisterRequest(
                              name: _nameController.text.trim(),
                              email: _emailController.text.trim(),
                              phone: '$_dial${_phoneController.text}',
                              password: _passwordController.text,
                              city: _selectedCity!,
                              country: _selectedCountry!,
                            );

                            context.read<RegisterCubit>().register(request);
                          }
                        },
                      ),

                      verticalSpace(24),

                      // Login Link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لديك حساب بالفعل؟',
                            style: TextStyles.font14GreyRegular,
                          ),
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyles.font14CyanSemiBold,
                            ),
                          ),
                        ],
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