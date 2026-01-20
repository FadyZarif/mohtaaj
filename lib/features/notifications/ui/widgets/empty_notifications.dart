import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class EmptyNotifications extends StatelessWidget {
  const EmptyNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications_none,
            size: 80.sp,
            color: ColorsManager.iconTertiary,
          ),
          verticalSpace(16),
          Text(
            'لا توجد إشعارات',
            style: TextStyles.font16BlackMedium,
          ),
          verticalSpace(8),
          Text(
            'ستظهر جميع الإشعارات هنا',
            style: TextStyles.font14GreyRegular,
          ),
        ],
      ),
    );
  }
}
