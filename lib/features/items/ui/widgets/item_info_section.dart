
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model.dart';

class ItemInfoSection extends StatelessWidget {
  final ItemModel item;

  const ItemInfoSection({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            item.title,
            style: TextStyles.font20BlackBold,
          ),
          verticalSpace(8),
          // Price
          _buildPrice(),
          verticalSpace(16),
          // Location & Time & Views
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 16.sp,
                color: ColorsManager.textSecondary,
              ),
              horizontalSpace(4),
              Text(
                item.city,
                style: TextStyles.font14GreyMedium,
              ),
              horizontalSpace(16),
              Icon(
                Icons.access_time,
                size: 16.sp,
                color: ColorsManager.textSecondary,
              ),
              horizontalSpace(4),
              Text(
                item.createdAt.timeAgo(),
                style: TextStyles.font14GreyMedium,
              ),
              const Spacer(),
              Icon(
                Icons.visibility_outlined,
                size: 16.sp,
                color: ColorsManager.textSecondary,
              ),
              SizedBox(width: 4.w),
              Text(
                '${item.views}',
                style: TextStyles.font14GreyMedium,
              ),
            ],
          ),
          verticalSpace(16),
          // Category & Condition
          Row(
            children: [
              _buildInfoChip(
                icon: Icons.category_outlined,
                label: item.category.name,
              ),
              verticalSpace(8),
              _buildInfoChip(
                icon: Icons.info_outline,
                label: _getConditionText(item.condition??'غير محدد'),
              ),
            ],
          ),
          verticalSpace(16),
          // Description
          Text(
            'الوصف',
            style: TextStyles.font16BlackSemiBold,
          ),
          verticalSpace(8),
          Text(
            item.description,
            style: TextStyles.font14BlackRegular,
          ),
        ],
      ),
    );
  }

  Widget _buildPrice() {
    if (item.isFree) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: ColorsManager.success.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          'مجاني',
          style: TextStyles.font18BlackSemiBold.copyWith(
            color: ColorsManager.success,
          ),
        ),
      );
    }

    if (item.price != null) {
      return Row(
        children: [
          Text(
            item.price!,
            style: TextStyles.priceStyleLarge,
          ),
          horizontalSpace(8),
          Text(
            '\$',
            style: TextStyles.font16GreyMedium,
          ),
        ],
      );
    }

    return Text(
      'قابل للتفاوض',
      style: TextStyles.font18CyanSemiBold,
    );
  }

  Widget _buildInfoChip({required IconData icon, required String label}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: ColorsManager.mainColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16.sp,
            color: ColorsManager.mainColor,
          ),
          horizontalSpace(4),
          Text(
            label,
            style: TextStyles.font14BlackMedium,
          ),
        ],
      ),
    );
  }

  String _getConditionText(String condition) {
    switch (condition) {
      case 'new':
        return 'جديد';
      case 'like_new':
        return 'شبه جديد';
      case 'good':
        return 'جيد';
      case 'fair':
        return 'مقبول';
      case 'poor':
        return 'سيء';
      default:
        return condition;
    }
  }
}