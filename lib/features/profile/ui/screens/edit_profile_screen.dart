import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/app_dialogs.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/location_data.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/validators.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../auth/ui/widgets/phone_text_field.dart';
import '../../../auth/ui/widgets/searchable_dropdown.dart';
import '../../data/models/update_profile_request.dart';
import '../../logic/profile_cubit/profile_cubit.dart';
import '../../logic/profile_cubit/profile_state.dart';

class EditProfileScreen extends StatefulWidget {
  final UserModel user;
  final ProfileCubit cubit;

  const EditProfileScreen({
    super.key,
    required this.user,
    required this.cubit,
  });

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _phoneController;

  final _phoneFieldKey = GlobalKey<PhoneTextFieldState>();
  late String? _selectedCountry;
  late String? _selectedCity;
  late String _dial;
  late String _initialCode;

  @override
  void initState() {
    super.initState();
    _initialCode = LocationData.getCodeByCountry(widget.user.country);
    _dial = LocationData.getDialByCode(_initialCode);
    _nameController = TextEditingController(text: widget.user.name);
    print(_dial);
    print(widget.user.phone.replaceFirst(_dial, ''));

    _phoneController = TextEditingController(text: widget.user.phone.replaceFirst(_dial, ''));
    _selectedCountry = widget.user.country;
    _selectedCity = widget.user.city;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:  widget.cubit,
      child: GestureDetector(
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
              'تعديل الحساب',
              style: TextStyles.font20BlackBold,
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: BlocConsumer<ProfileCubit, ProfileState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {
                    AppDialogs.showLoadingDialog(context);
                  },
                  success: (user) {},
                  updateSuccess: (user) {
                    context.pop(); // Close loading dialog
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('تم تحديث البيانات بنجاح'),
                        backgroundColor: ColorsManager.success,
                      ),
                    );
                    context.pop(true); // Return true to refresh profile
                  },
                  logoutSuccess: () {},
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
                final isLoading = state is Loading;

                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(24),

                        // Avatar Section
                        Center(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 50.r,
                                backgroundColor:
                                ColorsManager.mainColor.withOpacity(0.1),
                                backgroundImage: widget.user.avatarUrl != null
                                    ? NetworkImage(widget.user.avatarUrl!)
                                    : null,
                                child: widget.user.avatarUrl == null
                                    ? Icon(
                                  Icons.person,
                                  size: 50.sp,
                                  color: ColorsManager.mainColor,
                                )
                                    : null,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: InkWell(
                                  onTap: () {
                                    // TODO: Implement image picker
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8.r),
                                    decoration: BoxDecoration(
                                      color: ColorsManager.mainColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.white,
                                      size: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        verticalSpace(32),

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

                        // Phone Field (Read Only)
                        /*Text(
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
                        ),*/

                        verticalSpace(20),

                        // Country Dropdown
                        Text(
                          'الدولة',
                          style: TextStyles.font14BlackSemiBold,
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

                        // Save Button
                        AppButton(
                          text: 'حفظ التغييرات',
                          isLoading: isLoading,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final request = UpdateProfileRequest(
                                name: _nameController.text.trim(),
                                city: _selectedCity!,
                                country: _selectedCountry!,
                              );

                              context.read<ProfileCubit>().updateProfile(request);
                            }
                          },
                        ),

                        verticalSpace(32),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}