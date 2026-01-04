import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/colors.dart';
import '../../../reports/data/models/report_model.dart';
import '../../../reports/ui/widgets/report_dialog.dart';
import '../../data/models/item_model.dart';

class ItemImagesCarousel extends StatefulWidget {
  final ItemModel item;

  const ItemImagesCarousel({super.key, required this.item});

  @override
  State<ItemImagesCarousel> createState() => _ItemImagesCarouselState();
}

class _ItemImagesCarouselState extends State<ItemImagesCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final images = widget.item.images;
    if (images.isEmpty) {
      return _buildPlaceholder();
    }

    return Stack(
      children: [
        // Images
        SizedBox(
          height: 300.h,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.network(
                images[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildPlaceholder();
                },
              );
            },
          ),
        ),
        // Indicator
        if (images.length > 1)
          Positioned(
            bottom: 16.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => Container(
                  width: 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? ColorsManager.mainColor
                        : Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        // Back Button
        Positioned(
          top: 40.h,
          right: 16.w,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: ColorsManager.shadowColor, blurRadius: 8),
                ],
              ),
              child: Icon(
                Icons.arrow_back,
                size: 20.sp,
                color: ColorsManager.textPrimary,
              ),
            ),
          ),
        ),
        // Report Button
        Positioned(
          top: 40.h,
          left: 16.w,
          child: GestureDetector(
            onTap: () {
              getIt<AuthService>().requireAuth(
                context,
                () => _showReportDialog(context),
              );
            },
            child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: ColorsManager.shadowColor, blurRadius: 8),
                ],
              ),
              child: Icon(
                Icons.report_outlined,
                size: 20.sp,
                color: ColorsManager.textPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      height: 300.h,
      color: ColorsManager.inputBackground,
      child: Center(
        child: Icon(
          Icons.image_outlined,
          size: 60.sp,
          color: ColorsManager.iconTertiary,
        ),
      ),
    );
  }

  void _showReportDialog(BuildContext context) {
    // ✅ Check if item belongs to current user
    final currentUserId = getIt<String>(instanceName: 'userId');
    final isOwnItem =
        widget.item.owner?.id == currentUserId; // Adjust based on your model

    showDialog(
      context: context,
      builder: (context) => ReportDialog(
        targetType: ReportTargetType.item,
        targetId: widget.item.id,
        targetName: widget.item.title,
        isOwnContent: isOwnItem, // ✅ Pass ownership info
      ),
    );
  }
}
