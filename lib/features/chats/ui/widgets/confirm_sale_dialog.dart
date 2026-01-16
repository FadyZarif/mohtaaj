// lib/features/chats/ui/widgets/confirm_sale_dialog.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ConfirmSaleDialog extends StatelessWidget {
  final String buyerName;
  final VoidCallback onConfirm;
  final bool isLoading;

  const ConfirmSaleDialog({
    super.key,
    required this.buyerName,
    required this.onConfirm,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      title: Text(
        'تأكيد البيع',
        style: TextStyles.font18BlackBold,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: ColorsManager.mainColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.sell_outlined,
              size: 48.sp,
              color: ColorsManager.mainColor,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'سيتم إغلاق الإعلان نهائياً وتسجيل المشتري',
            style: TextStyles.font14BlackRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: ColorsManager.success.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              buyerName,
              style: TextStyles.font14BlackMedium.copyWith(
                color: ColorsManager.success,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                size: 16.sp,
                color: ColorsManager.warning,
              ),
              SizedBox(width: 4.w),
              Text(
                'هذا الإجراء لا يمكن التراجع عنه',
                style: TextStyles.font12GreyRegular.copyWith(
                  color: ColorsManager.warning,
                ),
              ),
            ],
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
      actions: [
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: isLoading ? null : () => Navigator.pop(context),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  side: BorderSide(color: ColorsManager.borderColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text(
                  'إلغاء',
                  style: TextStyles.font14GreyMedium,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: ElevatedButton(
                onPressed: isLoading ? null : onConfirm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.success,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: isLoading
                    ? SizedBox(
                        width: 20.w,
                        height: 20.w,
                        child: const CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : Text(
                        'تأكيد',
                        style: TextStyles.font14WhiteMedium,
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
