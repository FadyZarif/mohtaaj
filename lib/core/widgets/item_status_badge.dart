// lib/core/widgets/item_status_badge.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/items/data/models/item_model.dart';
import '../theming/styles.dart';

class ItemStatusBadge extends StatelessWidget {
  final ItemStatus status;

  const ItemStatusBadge({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: status.color,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        status.displayName,
        style: TextStyles.font12WhiteMedium,
      ),
    );
  }

}