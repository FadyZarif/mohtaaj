// features/items/ui/widgets/category_selector.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../categories/data/models/category_model.dart';

class CategorySelector extends StatelessWidget {
  final String? selectedCategoryId;
  final List<CategoryModel> categories;
  final Function(String) onCategorySelected;
  final VoidCallback onLoadCategories;
  final bool isLoading;

  const CategorySelector({
    super.key,
    required this.selectedCategoryId,
    required this.categories,
    required this.onCategorySelected,
    required this.onLoadCategories,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    String selectedName = 'اختر التصنيف';

    if (selectedCategoryId != null) {
      try {
        final selected = categories.firstWhere((cat) => cat.id == selectedCategoryId);
        selectedName = selected.name;
      } catch (e) {
        selectedName = 'اختر التصنيف';
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'التصنيف *',
          style: TextStyles.font16BlackSemiBold,
        ),
        verticalSpace(8),
        GestureDetector(
          onTap: () => _showCategoriesDialog(context),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: ColorsManager.inputBackground,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: ColorsManager.borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedName,
                  style: selectedCategoryId == null
                      ? TextStyles.hintText
                      : TextStyles.font14BlackMedium,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 20.sp,
                  color: ColorsManager.textSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showCategoriesDialog(BuildContext context) {
    if (categories.isEmpty && !isLoading) {
      onLoadCategories();
    }

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 12.h),
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: ColorsManager.borderColor,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              verticalSpace(16),
              Text(
                'اختر التصنيف',
                style: TextStyles.font18BlackSemiBold,
              ),
              verticalSpace(16),
              Divider(height: 1, color: ColorsManager.dividerColor),
              Expanded(
                child: isLoading
                    ? const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainColor,
                  ),
                )
                    : ListView.separated(
                  controller: scrollController,
                  padding: EdgeInsets.all(16.w),
                  itemCount: categories.length,
                  separatorBuilder: (context, index) => verticalSpace(8),
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isSelected = category.id == selectedCategoryId;

                    return GestureDetector(
                      onTap: () {
                        onCategorySelected(category.id);
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? ColorsManager.mainColor.withOpacity(0.1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: isSelected
                                ? ColorsManager.mainColor
                                : ColorsManager.borderColor,
                          ),
                        ),
                        child: Row(
                          children: [
                            if (category.iconUrl != null)
                              Image.network(
                                category.iconUrl!,
                                width: 32.w,
                                height: 32.h,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                    Icons.category,
                                    size: 32.sp,
                                    color: ColorsManager.mainColor,
                                  );
                                },
                              )
                            else
                              Icon(
                                Icons.category,
                                size: 32.sp,
                                color: ColorsManager.mainColor,
                              ),
                            horizontalSpace(12),
                            Expanded(
                              child: Text(
                                category.name,
                                style: TextStyles.font16BlackMedium,
                              ),
                            ),
                            if (isSelected)
                              Icon(
                                Icons.check_circle,
                                size: 20.sp,
                                color: ColorsManager.mainColor,
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}