
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ItemImagesCarousel extends StatefulWidget {
  final List<String> images;

  const ItemImagesCarousel({
    super.key,
    required this.images,
  });

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
    if (widget.images.isEmpty) {
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
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Image.network(
                widget.images[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildPlaceholder();
                },
              );
            },
          ),
        ),
        // Indicator
        if (widget.images.length > 1)
          Positioned(
            bottom: 16.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.images.length,
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
                  BoxShadow(
                    color: ColorsManager.shadowColor,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Icon(
                Icons.arrow_forward,
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
}