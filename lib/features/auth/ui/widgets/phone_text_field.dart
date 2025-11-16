import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onCountryChanged;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.validator,
    this.onCountryChanged,
  });

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  String _countryCode = '+20'; // Default Egypt

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: TextInputType.phone,
      style: TextStyles.font16BlackRegular,
      decoration: InputDecoration(
        hintText: '1234567890',
        hintStyle: TextStyles.font14GreyRegular,
        filled: true,
        fillColor: ColorsManager.inputBackground,
        prefixIcon: CountryCodePicker(
          onChanged: (country) {
            _countryCode = country.dialCode ?? '+20';
            if (widget.onCountryChanged != null) {
              widget.onCountryChanged!(_countryCode);
            }
          },
          initialSelection: 'EG',
          favorite: const ['+20', '+966', '+971'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
          padding: EdgeInsets.zero,
          textStyle: TextStyles.font16BlackMedium,
          dialogTextStyle: TextStyles.font14BlackRegular,
          searchDecoration: InputDecoration(
            hintText: 'البحث...',
            hintStyle: TextStyles.font14GreyRegular,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: ColorsManager.mainColor,
            width: 2.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: ColorsManager.error,
            width: 2.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: ColorsManager.error,
            width: 2.w,
          ),
        ),
      ),
    );
  }

  String get fullPhoneNumber => '$_countryCode${widget.controller.text}';
}
