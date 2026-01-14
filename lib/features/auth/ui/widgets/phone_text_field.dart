import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:mohtaaj/core/helpers/location_data.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onCountryChanged;
  final String initialCode;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.validator,
    this.onCountryChanged,
    this.initialCode = 'EG',
  });

  @override
  State<PhoneTextField> createState() => PhoneTextFieldState();
}

class PhoneTextFieldState extends State<PhoneTextField> {
  String _dial = '+20';
  String _selectedCode = 'EG';

  // Key to rebuild CountryCodePicker
  Key _pickerKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    _selectedCode = widget.initialCode;
    _dial = _getDialCode(widget.initialCode);
  }

  /// Update country code programmatically
  void updateCountryCode(String countryCode) {
    setState(() {
      _selectedCode = countryCode;
      _dial = _getDialCode(countryCode);
      _pickerKey = UniqueKey(); // Force rebuild picker
    });

    if (widget.onCountryChanged != null) {
      widget.onCountryChanged!(_dial);
    }
  }

  /// Get dial code from country code
  String _getDialCode(String countryCode) {

    return LocationData.getDialByCode(countryCode);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextFormField(

        controller: widget.controller,
        validator: widget.validator,
        keyboardType: TextInputType.phone,
        style: TextStyles.font16BlackRegular,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          hintText: '1234567890',
          hintStyle: TextStyles.font14GreyRegular,
          filled: true,
          fillColor: ColorsManager.inputBackground,
          prefixIcon: CountryCodePicker(
            key: _pickerKey,
            onChanged: (country) {
              _dial = country.dialCode ?? '+20';
              _selectedCode = country.code ?? 'EG';
              if (widget.onCountryChanged != null) {
                widget.onCountryChanged!(_dial);
              }
            },
            initialSelection: _selectedCode,
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
      ),
    );
  }

  String get fullPhoneNumber => '$_dial${widget.controller.text}';
}