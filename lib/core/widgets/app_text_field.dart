import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final TextDirection? textDirection;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final void Function(String)? onChanged;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final Color? fillColor;

  const AppTextField({
    super.key,
    required this.hintText,
    this.validator,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.onChanged, this.textDirection,
    this.readOnly = false,
    this.inputFormatters,
    this.autofillHints,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      onChanged: onChanged,
      style: TextStyles.font16BlackRegular,
      textDirection: textDirection,
      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyles.font14GreyRegular,
        filled: true,
        fillColor:fillColor?? ColorsManager.inputBackground,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
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
      readOnly: readOnly,
      inputFormatters: inputFormatters,
      autofillHints:  autofillHints,
    );
  }
}
