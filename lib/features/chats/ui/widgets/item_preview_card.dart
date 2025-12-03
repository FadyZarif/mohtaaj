// lib/features/chats/ui/widgets/item_preview_card.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';

class ItemPreviewCard extends StatelessWidget {
  final ChatItem item;
  final VoidCallback onTap;

  const ItemPreviewCard({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(12.w),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.shadowColor,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Item Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: item.images.isNotEmpty
                  ? CachedNetworkImage(
                imageUrl: item.images.first,
                width: 60.w,
                height: 60.w,
                fit: BoxFit.cover,
                placeholder: (_, __) => Container(
                  color: ColorsManager.shimmerBase,
                ),
                errorWidget: (_, __, ___) => Container(
                  color: ColorsManager.shimmerBase,
                  child: Icon(
                    Icons.image,
                    color: ColorsManager.iconTertiary,
                  ),
                ),
              )
                  : Container(
                width: 60.w,
                height: 60.w,
                color: ColorsManager.shimmerBase,
                child: Icon(
                  Icons.image,
                  color: ColorsManager.iconTertiary,
                ),
              ),
            ),

            SizedBox(width: 12.w),

            // Item Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyles.font16BlackMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: _getStatusColor().withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Text(
                      _getStatusText(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: _getStatusColor(),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Arrow
            Icon(
              Icons.arrow_back_ios,
              size: 16.sp,
              color: ColorsManager.iconSecondary,
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor() {
    switch (item.status) {
      case 'active':
        return ColorsManager.success;
      case 'closed':
        return ColorsManager.textSecondary;
      default:
        return ColorsManager.warning;
    }
  }

  String _getStatusText() {
    switch (item.status) {
      case 'active':
        return 'نشط';
      case 'closed':
        return 'مغلق';
      default:
        return 'قيد المراجعة';
    }
  }
}