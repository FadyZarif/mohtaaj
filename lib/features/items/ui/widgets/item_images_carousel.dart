import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
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
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _autoPlayTimer;

  @override
  void initState() {
    super.initState();
    // Initialize with initial page to enable infinite scroll
    _pageController = PageController(
      initialPage: widget.item.images.isEmpty ? 0 : 1000,
    );
    _startAutoPlay();
  }

  void _startAutoPlay() {
    if (widget.item.images.length > 1) {
      _autoPlayTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
        if (_pageController.hasClients) {
          final nextPage = _pageController.page!.toInt() + 1;
          _pageController.animateToPage(
            nextPage,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeInOut,
          );
        }
      });
    }
  }

  @override
  void dispose() {
    _autoPlayTimer?.cancel();
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
                _currentPage = index % images.length;
              });
            },
            itemBuilder: (context, index) {
              final imageIndex = index % images.length;
              return GestureDetector(
                onTap: () => _openImageViewer(context, imageIndex),
                child: CachedNetworkImage(
                  imageUrl: images[imageIndex],
                  fit: BoxFit.cover,
                  fadeInDuration: Duration.zero,
                  fadeOutDuration: Duration.zero,
                  memCacheWidth: 1080,
                  memCacheHeight: 1080,
                  placeholder: (context, url) => Container(
                    color: ColorsManager.inputBackground,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.mainColor,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => _buildPlaceholder(),
                ),
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
                        : Colors.white.withValues(alpha: 0.5),
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

  void _openImageViewer(BuildContext context, int initialIndex) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _ImageViewerScreen(
          images: widget.item.images,
          initialIndex: initialIndex,
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

// Image Viewer Screen with PhotoView Gallery
class _ImageViewerScreen extends StatefulWidget {
  final List<String> images;
  final int initialIndex;

  const _ImageViewerScreen({
    required this.images,
    required this.initialIndex,
  });

  @override
  State<_ImageViewerScreen> createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<_ImageViewerScreen> {
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          '${_currentIndex + 1} / ${widget.images.length}',
          style: TextStyles.font16WhiteSemiBold,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: CachedNetworkImageProvider(widget.images[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 3,
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes: PhotoViewHeroAttributes(tag: widget.images[index]),
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 100.sp,
                      color: Colors.white,
                    ),
                  );
                },
              );
            },
            itemCount: widget.images.length,
            loadingBuilder: (context, event) => Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                value: event == null
                    ? 0
                    : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
              ),
            ),
            backgroundDecoration: const BoxDecoration(
              color: Colors.black,
            ),
            pageController: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          // Indicator
          if (widget.images.length > 1)
            Positioned(
              bottom: 40.h,
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
                      color: _currentIndex == index
                          ? Colors.white
                          : Colors.white.withValues(alpha: 0.4),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
