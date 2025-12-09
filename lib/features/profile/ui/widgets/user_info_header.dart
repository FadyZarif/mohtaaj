// features/user_profile/ui/widgets/user_info_header.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../reports/data/models/report_model.dart';
import '../../../reports/ui/widgets/report_dialog.dart';
import '../../data/models/user_response.dart';

class UserInfoHeader extends StatelessWidget {
  final UserData user;
  final VoidCallback? onRateUser;

  const UserInfoHeader({
    super.key,
    required this.user,
    this.onRateUser,
  });


  bool get isOwnProfile {
    if(getIt.isRegistered<String>(instanceName: 'userId')){
      final currentUserId = getIt<String>(instanceName: 'userId');
      return user.id == currentUserId;
    }else{
      return false;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          padding: EdgeInsets.all(16.w),
          color: Colors.white,
          child: Column(
            children: [
              // Avatar with verified badge
              Stack(
                children: [
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
                  if (user.isVerified)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.check,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
              verticalSpace(16),
              // Name
              Text(
                user.name,
                style: TextStyles.font20BlackBold,
              ),
              verticalSpace(4),
              // Location
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 16.sp,
                    color: ColorsManager.textSecondary,
                  ),
                  horizontalSpace(4),
                  Text(
                    '${user.city}, ${user.country}',
                    style: TextStyles.font14GreyMedium,
                  ),
                ],
              ),
              verticalSpace(12),
              // Rating & Reputation with Rate button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 20.sp,
                    color: ColorsManager.ratingStarFilled,
                  ),
                  horizontalSpace(4),
                  Text(
                    user.ratingAvg.toStringAsFixed(1),
                    style: TextStyles.font16BlackSemiBold,
                  ),
                  Text(
                    ' (${user.ratingsCount})',
                    style: TextStyles.font14GreyMedium,
                  ),
                 /* horizontalSpace(8),
                  GestureDetector(
                    onTap: onRateUser,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.mainColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        'قيّم',
                        style: TextStyles.font12BlackMedium.copyWith(
                          color: ColorsManager.mainColor,
                        ),
                      ),
                    ),
                  ),*/
                  horizontalSpace(16),
                  Icon(
                    Icons.emoji_events,
                    size: 20.sp,
                    color: ColorsManager.secondaryColor,
                  ),
                  horizontalSpace(4),
                  Text(
                    '${user.reputationScore} نقطة',
                    style: TextStyles.font16BlackSemiBold,
                  ),
                ],
              ),
              verticalSpace(16),
              // Contact Buttons
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // TODO: Navigate to chat
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        decoration: BoxDecoration(
                          color: ColorsManager.mainColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                            horizontalSpace(8),
                            Text(
                              'دردشة',
                              style: TextStyles.font14WhiteSemiBold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(12),
                  GestureDetector(
                    onTap: () {
                      // TODO: Make call
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.r),
                      decoration: BoxDecoration(
                        color: ColorsManager.success,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Report button
        if (!isOwnProfile)
          Positioned.directional(
            top: 15.h,
            end: 10.w,
            textDirection: TextDirection.rtl,
            child:  GestureDetector(
              onTap:()=> getIt<AuthService>().requireAuth(context,()=>_showReportDialog(context)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: Colors.red.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      size: 16.sp,
                      color: Colors.red,
                    ),
                    horizontalSpace(4),
                    Text(
                      'إبلاغ',
                      style: TextStyles.font12BlackMedium.copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _showReportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => ReportDialog(
        targetType: ReportTargetType.user,
        targetId: user.id,
        targetName: user.name, // You can customize this to show the user's name
        isOwnContent: isOwnProfile, // ✅ Pass ownership info
      ),
    );
  }
}