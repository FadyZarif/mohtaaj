import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'الرئيسية',
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 80.sp,
              color: ColorsManager.mainColor.withOpacity(0.5),
            ),
            SizedBox(height: 16.h),
            Text(
              'الرئيسية',
              style: TextStyles.font24BlackBold,
            ),
            SizedBox(height: 8.h),
            Text(
              'قريباً...',
              style: TextStyles.font16GreyRegular,
            ),
          ],
        ),
      ),
    );
  }
}
