
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model.dart';

class OwnerSection extends StatelessWidget {
  final ItemOwner owner;
  final VoidCallback? onTap;

  const OwnerSection({
    super.key,
    required this.owner,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.shadowColor,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Avatar
            CircleAvatar(
              radius: 30.r,
              backgroundColor: ColorsManager.mainColor.withOpacity(0.1),
              backgroundImage: owner.avatarUrl != null
                  ? NetworkImage(owner.avatarUrl!)
                  : null,
              child: owner.avatarUrl == null
                  ? Icon(
                Icons.person,
                size: 30.sp,
                color: ColorsManager.mainColor,
              )
                  : null,
            ),
            horizontalSpace(12),
            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    owner.name,
                    style: TextStyles.font16BlackSemiBold,
                  ),
                  verticalSpace(4),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16.sp,
                        color: ColorsManager.ratingStarFilled,
                      ),
                      horizontalSpace(4),
                      Text(
                        owner.ratingAvg.toStringAsFixed(1),
                        style: TextStyles.font14BlackMedium,
                      ),
                      horizontalSpace(8),
                      Text(
                        '(${owner.reputationScore} نقطة)',
                        style: TextStyles.font12GreyRegular,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Arrow
            Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: ColorsManager.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}