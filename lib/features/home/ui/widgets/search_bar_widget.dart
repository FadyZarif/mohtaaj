import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SearchBarWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String hintText;

  const SearchBarWidget({
    super.key,
    this.onTap,
    this.hintText = 'ابحث عن موبايل، أثاث، سيارة، أي شيء...',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: ColorsManager.borderColor,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.sp,
              color: ColorsManager.textHint,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                hintText,
                style: TextStyles.font14GreyRegular.copyWith(
                  color: ColorsManager.textHint,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
