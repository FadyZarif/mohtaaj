import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/spacing.dart';

import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../routing/routes.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';
import 'extensions.dart';

class AppDialogs {

  static void showLoadingDialog(BuildContext context) {
    // Implementation for showing a loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircularProgressIndicator(),
            ],
          ),
        );
      },
      barrierColor: Colors.black26,
    );
  }

  static void showLoginRequiredDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Row(
          children: [
            Icon(
              Icons.lock_outline,
              color: ColorsManager.mainColor,
              size: 24.sp,
            ),
            horizontalSpace(8),
            Text(
              'تسجيل الدخول مطلوب',
              style: TextStyles.font18BlackBold,
            ),
          ],
        ),
        content: Text(
          'يجب تسجيل الدخول للوصول إلى هذه الميزة',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'إلغاء',
              style: TextStyles.font14GreyMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.pushNamed(Routes.loginScreen);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'تسجيل الدخول',
              style: TextStyles.font14WhiteMedium,
            ),
          ),
        ],
      ),
    );
  }

  static void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'تسجيل الخروج',
          style: TextStyles.font18BlackBold,
        ),
        content: Text(
          'هل أنت متأكد من تسجيل الخروج؟',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              'إلغاء',
              style: TextStyles.font14GreyMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<ProfileCubit>().logout();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'تسجيل الخروج',
              style: TextStyles.font14WhiteMedium,
            ),
          ),
        ],
      ),
    );
  }


}