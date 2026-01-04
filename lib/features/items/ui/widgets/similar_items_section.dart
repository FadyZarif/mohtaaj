// lib/features/items/ui/widgets/similar_items_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../home/ui/widgets/item_card.dart';
import '../../data/models/item_model.dart';

class SimilarItemsSection extends StatelessWidget {
  final List<ItemModel> similarItems;

  const SimilarItemsSection({super.key, required this.similarItems});

  @override
  Widget build(BuildContext context) {
    if (similarItems.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'إعلانات مشابهة',
              style: TextStyles.font16BlackSemiBold,
            ),
          ),
          verticalSpace(12),
          SizedBox(
            height: 200.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: similarItems.length,
              separatorBuilder: (context, index) => horizontalSpace(12),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 160.w,
                  child: ItemCard(
                    item: similarItems[index],
                    onTap: () {
                      context.pushNamed(
                        Routes.itemDetailsScreen,
                        arguments: similarItems[index].id,
                      );
                    },
                  ),
                );
                // return _SimilarItemCard(item: similarItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
