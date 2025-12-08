// lib/features/reports/ui/widgets/report_item_card.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/spacing.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/report_model.dart';
import 'package:timeago/timeago.dart' as timeago;

class ReportItemCard extends StatelessWidget {
  final ReportModel report;

  const ReportItemCard({
    super.key,
    required this.report,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header: Type + Status
          Row(
            children: [
              // Target Type Icon
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: _getTypeColor().withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  _getTypeIcon(),
                  color: _getTypeColor(),
                  size: 20.sp,
                ),
              ),

              horizontalSpace(12),

              // Target Type Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getTypeText(),
                      style: TextStyles.font14BlackMedium,
                    ),
                    verticalSpace(2),
                    Text(
                      timeago.format(report.createdAt, locale: 'ar'),
                      // report.createdAt.timeAgo(),
                      style: TextStyles.font12GreyRegular,
                    ),
                  ],
                ),
              ),

              // Status Badge
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: report.resolved
                      ? ColorsManager.success.withOpacity(0.1)
                      : ColorsManager.warning.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  report.resolved ? 'تم المعالجة' : 'قيد المراجعة',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: report.resolved
                        ? ColorsManager.success
                        : ColorsManager.warning,
                  ),
                ),
              ),
            ],
          ),

          verticalSpace(12),

          // Divider
          Divider(color: ColorsManager.dividerColor),

          verticalSpace(12),

          // Reason
          Text(
            'السبب:',
            style: TextStyles.font12GreyMedium,
          ),
          verticalSpace(4),
          Text(
            report.reason,
            style: TextStyles.font14BlackRegular,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),

          // Resolved Date (if resolved)
          if (report.resolved && report.resolvedAt != null) ...[
            verticalSpace(12),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: ColorsManager.success,
                  size: 16.sp,
                ),
                SizedBox(width: 4.w),
                Text(
                  'تم المعالجة في ${timeago.format(report.resolvedAt!,locale: 'ar') }',
                  style: TextStyles.font12GreyRegular,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  IconData _getTypeIcon() {
    switch (report.targetType) {
      case ReportTargetType.item:
        return Icons.inventory_2_outlined;
      case ReportTargetType.user:
        return Icons.person_outline;
      case ReportTargetType.message:
        return Icons.message_outlined;
    }
  }

  Color _getTypeColor() {
    switch (report.targetType) {
      case ReportTargetType.item:
        return ColorsManager.mainColor;
      case ReportTargetType.user:
        return ColorsManager.error;
      case ReportTargetType.message:
        return ColorsManager.info;
    }
  }

  String _getTypeText() {
    switch (report.targetType) {
      case ReportTargetType.item:
        return 'بلاغ عن عنصر';
      case ReportTargetType.user:
        return 'بلاغ عن مستخدم';
      case ReportTargetType.message:
        return 'بلاغ عن محادثة';
    }
  }
}