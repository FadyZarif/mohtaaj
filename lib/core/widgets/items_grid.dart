// lib/core/widgets/items_grid.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/home/ui/widgets/item_card.dart';
import '../../features/items/data/models/item_model.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';
import '../helpers/spacing.dart';

class ItemsGrid extends StatelessWidget {
  final List<ItemModel> items;
  final bool isLoading;
  final String? error;
  final VoidCallback? onRetry;
  final Function(ItemModel) onItemTap;
  final String emptyMessage;
  final String? resultCountText;

  const ItemsGrid({
    super.key,
    required this.items,
    required this.onItemTap,
    this.isLoading = false,
    this.error,
    this.onRetry,
    this.emptyMessage = 'لا توجد إعلانات',
    this.resultCountText,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading && items.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(
          color: ColorsManager.mainColor,
        ),
      );
    }

    if (error != null) {
      return _buildError(context);
    }

    if (items.isEmpty) {
      return _buildEmptyState();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (resultCountText != null) ...[
          Text(
            resultCountText!,
            style: TextStyles.font14GreyMedium,
          ),
          verticalSpace(12),
        ],
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              childAspectRatio: 0.7,
            ),
            itemCount: items.length + (isLoading ? 2 : 0),
            itemBuilder: (context, index) {
              if (index >= items.length) {
                return _buildLoadingCard();
              }
              return ItemCard(
                item: items[index],
                onTap: () => onItemTap(items[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inventory_2_outlined,
            size: 60.sp,
            color: ColorsManager.iconTertiary,
          ),
          verticalSpace(16),
          Text(
            emptyMessage,
            style: TextStyles.font16GreyRegular,
          ),
        ],
      ),
    );
  }

  Widget _buildError(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 60.sp,
            color: ColorsManager.error,
          ),
          verticalSpace(16),
          Text(
            error!,
            style: TextStyles.font14GreyRegular,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            verticalSpace(24),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.mainColor,
              ),
              child: Text(
                'إعادة المحاولة',
                style: TextStyles.font14WhiteMedium,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLoadingCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Center(
        child: CircularProgressIndicator(
          color: ColorsManager.mainColor,
          strokeWidth: 2,
        ),
      ),
    );
  }
}