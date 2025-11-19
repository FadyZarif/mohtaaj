import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CreateItemScreen extends StatelessWidget {
  const CreateItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'إضافة إعلان',
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle,
              size: 80.sp,
              color: ColorsManager.mainColor.withOpacity(0.5),
            ),
            SizedBox(height: 16.h),
            Text(
              'إضافة إعلان',
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
