import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../categories/data/models/category_model.dart';

class CategoriesHorizontalList extends StatelessWidget {
  final List<CategoryModel> categories;
  final bool isLoading;
  final Function(CategoryModel)? onCategoryTap;

  const CategoriesHorizontalList({
    super.key,
    required this.categories,
    this.isLoading = false,
    this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox(
        height: 100.h,
        child: const Center(
          child: CircularProgressIndicator(
            color: ColorsManager.mainColor,
          ),
        ),
      );
    }

    if (categories.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          return _CategoryItem(
            category: categories[index],
            onTap: () => onCategoryTap?.call(categories[index]),
          );
        },
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final VoidCallback? onTap;

  const _CategoryItem({
    required this.category,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon Container
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: ColorsManager.mainColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: category.iconUrl != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.network(
                      category.iconUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildDefaultIcon();
                      },
                    ),
                  )
                : _buildDefaultIcon(),
          ),
          SizedBox(height: 8.h),
          // Name
          SizedBox(
            width: 70.w,
            child: Text(
              category.name,
              style: TextStyles.font12BlackMedium,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultIcon() {
    return Icon(
      Icons.category,
      size: 28.sp,
      color: ColorsManager.mainColor,
    );
  }
}
