// features/items/ui/widgets/price_input_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PriceInputWidget extends StatelessWidget {
  final double? price;
  final bool isFree;
  final Function(String) onPriceChanged;
  final Function(bool) onIsFreeChanged;

  const PriceInputWidget({
    super.key,
    required this.price,
    required this.isFree,
    required this.onPriceChanged,
    required this.onIsFreeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'السعر *',
          style: TextStyles.font16BlackSemiBold,
        ),
        verticalSpace(8),
        // Free Toggle
        GestureDetector(
          onTap: () => onIsFreeChanged(!isFree),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: ColorsManager.borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'مجاني',
                  style: TextStyles.font14BlackMedium,
                ),
                Switch(
                  value: isFree,
                  onChanged: onIsFreeChanged,
                  activeColor: ColorsManager.mainColor,
                ),
              ],
            ),
          ),
        ),
        verticalSpace(12),
        // Price Input
        if (!isFree)
          TextField(
            keyboardType: TextInputType.number,
            onChanged: onPriceChanged,
            decoration: InputDecoration(
              hintText: 'أدخل السعر',
              hintStyle: TextStyles.hintText,
              filled: true,
              fillColor: ColorsManager.inputBackground,
              suffixText: '\$',
              suffixStyle: TextStyles.font14GreyMedium,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: ColorsManager.borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: ColorsManager.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: ColorsManager.mainColor, width: 2),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            ),
          ),
      ],
    );
  }
}