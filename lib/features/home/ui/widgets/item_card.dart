import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../items/data/models/item_model.dart';

class ItemCard extends StatelessWidget {
  final ItemModel item;
  final VoidCallback? onTap;

  const ItemCard({
    super.key,
    required this.item,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            _buildImage(),
            // Content
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    item.title,
                    style: TextStyles.font14BlackSemiBold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(4),
                  // Price
                  _buildPrice(),
                  verticalSpace(4),
                  // Location & Time
                  _buildLocationTime(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Stack(
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          child: AspectRatio(
            aspectRatio: 1.2,
            child: item.images.isNotEmpty
                ? Image.network(
                    item.images.first,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return _buildImagePlaceholder();
                    },
                  )
                : _buildImagePlaceholder(),
          ),
        ),
        // Badges
        Positioned(
          top: 8.h,
          right: 8.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (item.isFeatured)
                _buildBadge('سعر مميز', ColorsManager.mainColor),
              if (item.isFree)
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: _buildBadge('مجاني', ColorsManager.success),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImagePlaceholder() {
    return Container(
      color: ColorsManager.inputBackground,
      child: Center(
        child: Icon(
          Icons.image_outlined,
          size: 40.sp,
          color: ColorsManager.iconTertiary,
        ),
      ),
    );
  }

  Widget _buildBadge(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        text,
        style: TextStyles.font10GreyMedium.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildPrice() {
    if (item.isFree) {
      return Text(
        'مجاني',
        style: TextStyles.priceStyleSmall.copyWith(
          color: ColorsManager.success,
        ),
      );
    }

    if (item.price != null) {
      return Row(
        children: [
          Text(
            item.price!,
            style: TextStyles.priceStyleSmall,
          ),
          SizedBox(width: 4.w),
          Text(
            'ل.س',
            style: TextStyles.font12GreyMedium,
          ),
        ],
      );
    }

    return Text(
      'قابل للتفاوض',
      style: TextStyles.font12CyanMedium,
    );
  }

  Widget _buildLocationTime() {
    return Row(
      children: [
        // Location
        Icon(
          Icons.location_on_outlined,
          size: 12.sp,
          color: ColorsManager.textTertiary,
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Text(
            item.city,
            style: TextStyles.font10GreyRegular,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // Time
        Text(
          item.createdAt.timeAgo(),
          style: TextStyles.font10GreyRegular,
        ),
      ],
    );
  }
}
