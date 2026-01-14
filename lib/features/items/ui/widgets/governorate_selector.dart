import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/location_data.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class GovernorateSelector extends StatelessWidget {
  final String? country;
  final String? selectedGovernorate;
  final Function(String?) onGovernorateSelected;

  const GovernorateSelector({
    super.key,
    required this.country,
    required this.selectedGovernorate,
    required this.onGovernorateSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (country == null || country!.isEmpty) {
      return Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: ColorsManager.warning.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorsManager.warning),
        ),
        child: Row(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorsManager.warning,
              size: 20.sp,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                'لا يمكن تحديد المدينة. يرجى تحديث بيانات ملفك الشخصي أولاً',
                style: TextStyles.font14BlackMedium.copyWith(
                  color: ColorsManager.warning,
                ),
              ),
            ),
          ],
        ),
      );
    }

    final governorates = LocationData.getCitiesByCountry(country!);
    final divisionType = LocationData.getAdministrativeDivisionType(country!);

    return DropdownSearch<String>(
      items: (filter, infiniteScrollProps) async => governorates,
      selectedItem: selectedGovernorate,
      onChanged: onGovernorateSelected,
      decoratorProps: DropDownDecoratorProps(
        decoration: InputDecoration(
          hintText: 'اختر $divisionType',
          hintStyle: TextStyles.hintText,
          filled: true,
          fillColor: Colors.white,
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
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
          prefixIcon: Icon(
            Icons.location_city,
            color: ColorsManager.mainColor,
            size: 22.sp,
          ),
        ),
      ),
      popupProps: PopupProps.menu(
        showSearchBox: true,
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            hintText: 'ابحث عن $divisionType...',
            hintStyle: TextStyles.hintText,
            prefixIcon: Icon(
              Icons.search,
              color: ColorsManager.mainColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: ColorsManager.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: ColorsManager.mainColor, width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
          ),
        ),
        menuProps: MenuProps(
          borderRadius: BorderRadius.circular(12.r),
          elevation: 8,
        ),
        itemBuilder: (context, item, isDisabled, isSelected) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
            decoration: BoxDecoration(
              color: isSelected
                  ? ColorsManager.mainColor.withValues(alpha: 0.1)
                  : Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: ColorsManager.borderColor.withValues(alpha: 0.5),
                ),
              ),
            ),
            child: Row(
              children: [
                if (isSelected)
                  Icon(
                    Icons.check_circle,
                    color: ColorsManager.mainColor,
                    size: 20.sp,
                  ),
                if (isSelected) SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    item,
                    style: TextStyles.font14BlackMedium.copyWith(
                      color: isSelected
                          ? ColorsManager.mainColor
                          : ColorsManager.textPrimary,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
