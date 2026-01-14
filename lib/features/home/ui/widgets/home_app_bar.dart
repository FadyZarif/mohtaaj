import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String location;
  final int notificationCount;
  final VoidCallback? onLocationTap;
  final VoidCallback? onNotificationTap;

  const HomeAppBar({
    super.key,
    this.location = 'دمشق',
    this.notificationCount = 0,
    this.onLocationTap,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 16.w,
      title: Row(
        children: [
          // Logo
          Text(
            'Mohtaaj',
            style: TextStyles.font20BlackBold.copyWith(
              color: ColorsManager.mainColor,
            ),
          ),
        ],
      ),
      actions: [
        // Location
        GestureDetector(
          onTap: onLocationTap,
          child: Row(
            children: [
              Text(
                location,
                style: TextStyles.font14BlackMedium,
              ),
              SizedBox(width: 4.w),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20.sp,
                color: ColorsManager.textPrimary,
              ),
            ],
          ),
        ),
        SizedBox(width: 12.w),
        // Notifications
        GestureDetector(
          onTap: onNotificationTap,
          child: Stack(
            children: [
              Icon(
                Icons.notifications_outlined,
                size: 24.sp,
                color: ColorsManager.textPrimary,
              ),
              if (notificationCount > 0)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(4.r),
                    decoration: const BoxDecoration(
                      color: ColorsManager.error,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 16.w,
                      minHeight: 16.h,
                    ),
                    child: Text(
                      notificationCount > 9 ? '9+' : '$notificationCount',
                      style: TextStyles.font10GreyMedium.copyWith(
                        color: Colors.white,
                        fontSize: 8.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(width: 16.w),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
