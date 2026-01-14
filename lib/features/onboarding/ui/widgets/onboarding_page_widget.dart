import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/onboarding_model.dart';

class OnboardingPageWidget extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPageWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration
          _buildIllustration(),

          verticalSpace(48),


          // Title
          Text(
            model.title,
            style: TextStyles.font24BlackBold,
            textAlign: TextAlign.center,
          ),

          verticalSpace(16),

          // Description
          Text(
            model.description,
            style: TextStyles.font16GreyRegular,
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildIllustration() {
    // Placeholder for now - يمكن استبدالها بـ SVG أو Image
    return Container(
      width: 300.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: ColorsManager.mainColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: Icon(
          Icons.shopping_bag_outlined,
          size: 120.sp,
          color: ColorsManager.mainColor,
        ),
      ),
    );
  }
}