// features/items/ui/widgets/condition_selector.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model.dart';

class ConditionSelector extends StatelessWidget {
  final ItemCondition? selectedCondition;
  final Function(ItemCondition) onConditionSelected;

  const ConditionSelector({
    super.key,
    required this.selectedCondition,
    required this.onConditionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الحالة',
          style: TextStyles.font16BlackSemiBold,
        ),
        verticalSpace(8),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: ItemCondition.values.map((condition) {
            final isSelected = selectedCondition == condition;
            return GestureDetector(
              onTap: () => onConditionSelected(condition),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: isSelected ? ColorsManager.mainColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected ? ColorsManager.mainColor : ColorsManager.borderColor,
                  ),
                ),
                child: Text(
                  condition.displayName,
                  style: TextStyles.font14BlackMedium.copyWith(
                    color: isSelected ? Colors.white : ColorsManager.textPrimary,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}