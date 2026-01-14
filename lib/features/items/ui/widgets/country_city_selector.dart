import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/location_data.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CountryCitySelector extends StatelessWidget {
  final String? selectedCountry;
  final String? selectedCity;
  final Function(String?) onCountrySelected;
  final Function(String?) onCitySelected;

  const CountryCitySelector({
    super.key,
    required this.selectedCountry,
    required this.selectedCity,
    required this.onCountrySelected,
    required this.onCitySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Country Selector
        DropdownSearch<String>(
          items: (filter, infiniteScrollProps) async => LocationData.arabCountries,
          selectedItem: selectedCountry,
          onChanged: onCountrySelected,
          decoratorProps: DropDownDecoratorProps(
            decoration: InputDecoration(
              hintText: 'اختر الدولة',
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
                Icons.public,
                color: ColorsManager.mainColor,
                size: 22.sp,
              ),
            ),
          ),
          popupProps: PopupProps.menu(
            showSearchBox: true,
            searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                hintText: 'ابحث عن الدولة...',
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
        ),

        verticalSpace(16),

        // City Selector
        if (selectedCountry != null && selectedCountry!.isNotEmpty)
          DropdownSearch<String>(
            items: (filter, infiniteScrollProps) async =>
                LocationData.getCitiesByCountry(selectedCountry!),
            selectedItem: selectedCity,
            onChanged: onCitySelected,
            decoratorProps: DropDownDecoratorProps(
              decoration: InputDecoration(
                hintText: 'اختر المدينة',
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
                  hintText: 'ابحث عن المدينة...',
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
          )
        else
          Container(
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
                    'يرجى اختيار الدولة أولاً',
                    style: TextStyles.font14BlackMedium.copyWith(
                      color: ColorsManager.warning,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
