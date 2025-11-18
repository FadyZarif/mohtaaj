import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onCountryChanged;
  final String initialSelection;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.validator,
    this.onCountryChanged,
    this.initialSelection = 'EG',
  });

  @override
  State<PhoneTextField> createState() => PhoneTextFieldState();
}

class PhoneTextFieldState extends State<PhoneTextField> {
  String _countryCode = '+20';
  String _selectedCountry = 'EG';

  // Key to rebuild CountryCodePicker
  Key _pickerKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    _selectedCountry = widget.initialSelection;
    _countryCode = _getDialCode(widget.initialSelection);
  }

  /// Update country code programmatically
  void updateCountryCode(String countryCode) {
    setState(() {
      _selectedCountry = countryCode;
      _countryCode = _getDialCode(countryCode);
      _pickerKey = UniqueKey(); // Force rebuild picker
    });

    if (widget.onCountryChanged != null) {
      widget.onCountryChanged!(_countryCode);
    }
  }

  /// Get dial code from country code
  String _getDialCode(String countryCode) {
    const Map<String, String> dialCodes = {
      'EG': '+20',
      'SA': '+966',
      'AE': '+971',
      'KW': '+965',
      'QA': '+974',
      'BH': '+973',
      'OM': '+968',
      'JO': '+962',
      'LB': '+961',
      'SY': '+963',
      'IQ': '+964',
      'PS': '+970',
      'YE': '+967',
      'LY': '+218',
      'TN': '+216',
      'DZ': '+213',
      'MA': '+212',
      'SD': '+249',
      'SO': '+252',
      'DJ': '+253',
      'MR': '+222',
      'KM': '+269',
    };
    return dialCodes[countryCode] ?? '+20';
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
            _countryCode = country.dialCode ?? '+20';
            _selectedCountry = country.code ?? 'EG';
            if (widget.onCountryChanged != null) {
              widget.onCountryChanged!(_countryCode);
            }
          },
          initialSelection: _selectedCountry,
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