import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../items/data/models/item_model.dart';
import '../../logic/category_items_cubit/category_items_cubit.dart';
import '../../logic/category_items_cubit/category_items_state.dart';

class CategoryItemsFilterSheet extends StatefulWidget {
  const CategoryItemsFilterSheet({super.key});

  @override
  State<CategoryItemsFilterSheet> createState() =>
      _CategoryItemsFilterSheetState();
}

class _CategoryItemsFilterSheetState extends State<CategoryItemsFilterSheet> {
  ItemCondition? _selectedCondition;
  String? _selectedCity;
  bool? _isFree;
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = context.read<CategoryItemsCubit>().state;
    _selectedCondition = state.selectedCondition;
    _selectedCity = state.selectedCity;
    _isFree = state.isFree;
    _minPriceController.text = state.minPrice ?? '';
    _maxPriceController.text = state.maxPrice ?? '';
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: EdgeInsets.all(24.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تصفية النتائج',
                    style: TextStyles.font18BlackSemiBold,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedCondition = null;
                        _selectedCity = null;
                        _isFree = null;
                        _minPriceController.clear();
                        _maxPriceController.clear();
                      });
                    },
                    child: Text(
                      'مسح الكل',
                      style: TextStyles.font14CyanMedium,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),

              // Condition Filter
              Text(
                'الحالة',
                style: TextStyles.font14BlackSemiBold,
              ),
              verticalSpace(8),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: ItemCondition.values.map((condition) {
                  final isSelected = _selectedCondition == condition;
                  return _FilterChip(
                    label: condition.displayName,
                    isSelected: isSelected,
                    onTap: () {
                      setState(() {
                        _selectedCondition =
                            isSelected ? null : condition;
                      });
                    },
                  );
                }).toList(),
              ),
              verticalSpace(20),

              // Free Filter
              Text(
                'السعر',
                style: TextStyles.font14BlackSemiBold,
              ),
              verticalSpace(8),
              Row(
                children: [
                  Expanded(
                    child: _FilterChip(
                      label: 'مجاني',
                      isSelected: _isFree == true,
                      onTap: () {
                        setState(() {
                          _isFree = _isFree == true ? null : true;
                          if (_isFree == true) {
                            _minPriceController.clear();
                            _maxPriceController.clear();
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              verticalSpace(12),

              // Price Range (only if not free)
              if (_isFree != true) ...[
                Text(
                  'نطاق السعر',
                  style: TextStyles.font14BlackSemiBold,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    Expanded(
                      child: _PriceTextField(
                        controller: _minPriceController,
                        hintText: 'من',
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: _PriceTextField(
                        controller: _maxPriceController,
                        hintText: 'إلى',
                      ),
                    ),
                  ],
                ),
                verticalSpace(20),
              ],

              // City Filter (Simple example - you can expand this)
              Text(
                'المدينة',
                style: TextStyles.font14BlackSemiBold,
              ),
              verticalSpace(8),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: ['دمشق', 'حلب', 'حمص', 'اللاذقية', 'طرطوس'].map((city) {
                  final isSelected = _selectedCity == city;
                  return _FilterChip(
                    label: city,
                    isSelected: isSelected,
                    onTap: () {
                      setState(() {
                        _selectedCity = isSelected ? null : city;
                      });
                    },
                  );
                }).toList(),
              ),
              verticalSpace(24),

              // Apply Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<CategoryItemsCubit>().applyFilters(
                          condition: _selectedCondition,
                          city: _selectedCity,
                          isFree: _isFree,
                          minPrice: _minPriceController.text.isEmpty
                              ? null
                              : _minPriceController.text,
                          maxPrice: _maxPriceController.text.isEmpty
                              ? null
                              : _maxPriceController.text,
                        );
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.mainColor,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'تطبيق الفلتر',
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorsManager.mainColor
              : ColorsManager.searchBarBackground,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected
                ? ColorsManager.mainColor
                : ColorsManager.borderColor,
          ),
        ),
        child: Text(
          label,
          style: isSelected
              ? TextStyles.font14WhiteMedium
              : TextStyles.font14BlackRegular,
        ),
      ),
    );
  }
}

class _PriceTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const _PriceTextField({
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: TextStyles.font14BlackRegular,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.font14GreyRegular,
        filled: true,
        fillColor: ColorsManager.searchBarBackground,
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
          horizontal: 12.w,
          vertical: 12.h,
        ),
      ),
    );
  }
}
