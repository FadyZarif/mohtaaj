import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../auth/data/models/user_model.dart';

class ProfileHeader extends StatelessWidget {
  final UserModel user;

  const ProfileHeader({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Avatar
        CircleAvatar(
          radius: 50.r,
          backgroundColor: ColorsManager.mainColor.withOpacity(0.1),
          backgroundImage: user.avatarUrl != null
              ? NetworkImage(user.avatarUrl!)
              : null,
          child: user.avatarUrl == null
              ? Icon(
                  Icons.person,
                  size: 50.sp,
                  color: ColorsManager.mainColor,
                )
              : null,
        ),

        verticalSpace(16),

        // Name
        Text(
          user.name,
          style: TextStyles.font20BlackBold,
        ),

        verticalSpace(8),

        // Rating
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20.sp,
            ),
            horizontalSpace(4),
            Text(
              user.ratingAvg.toStringAsFixed(1),
              style: TextStyles.font16BlackMedium,
            ),
            horizontalSpace(4),
            Text(
              '(${user.ratingsCount})',
              style: TextStyles.font14GreyRegular,
            ),
          ],
        ),

        verticalSpace(8),

        // Verified badge
        if (user.isVerified)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 4.h,
            ),
            decoration: BoxDecoration(
              color: ColorsManager.success.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.verified,
                  color: ColorsManager.success,
                  size: 16.sp,
                ),
                horizontalSpace(4),
                Text(
                  'موثق',
                  style: TextStyles.font12GreenMedium,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
