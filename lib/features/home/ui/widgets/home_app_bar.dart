import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/spacing.dart';
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
          Image.asset(
            'assets/logo_trans.png',
            height: 40.h,
          ),
          horizontalSpace(5),
          Text(
            'محتاج',
            style: TextStyles.font20BlackBold.copyWith(
              color: ColorsManager.mainColor,
            ),
          ),
        ],
      ),
      // TODO: Enable actions when needed
      actions: [
        // Location
        // GestureDetector(
        //   onTap: onLocationTap,
        //   child: Row(
        //     children: [
        //       Text(
        //         location,
        //         style: TextStyles.font14BlackMedium,
        //       ),
        //       SizedBox(width: 4.w),
        //       Icon(
        //         Icons.keyboard_arrow_down,
        //         size: 20.sp,
        //         color: ColorsManager.textPrimary,
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(width: 12.w),
        // Notifications
        GestureDetector(
          onTap: onNotificationTap,
          child: Container(
            padding: EdgeInsets.all(4.r),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.notifications_outlined,
                  size: 26.sp,
                  color: ColorsManager.textPrimary,
                ),
                if (notificationCount > 0)
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: notificationCount > 9 ? 4.w : 5.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorsManager.error,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: ColorsManager.error.withOpacity(0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      constraints: BoxConstraints(
                        minWidth: 18.w,
                        minHeight: 18.h,
                      ),
                      child: Center(
                        child: Text(
                          notificationCount > 99 ? '99+' : '$notificationCount',
                          style: TextStyles.font10GreyMedium.copyWith(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        horizontalSpace(12)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
