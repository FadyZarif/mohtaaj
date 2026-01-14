// features/items/ui/widgets/image_picker_widget.dart

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ImagePickerWidget extends StatelessWidget {
  final List<File> images;
  final VoidCallback onPickImages;
  final VoidCallback onPickFromCamera;
  final Function(int index) onRemoveImage;
  final int maxImages;

  const ImagePickerWidget({
    super.key,
    required this.images,
    required this.onPickImages,
    required this.onPickFromCamera,
    required this.onRemoveImage,
    this.maxImages = 8,
  });

  @override
  Widget build(BuildContext context) {
    final bool canAddMore = images.length < maxImages;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'الصور *',
              style: TextStyles.font16BlackSemiBold,
            ),
            Text(
              '${images.length}/$maxImages',
              style: TextStyles.font12BlackMedium.copyWith(
                color: images.length >= maxImages
                    ? ColorsManager.error
                    : ColorsManager.textSecondary,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        SizedBox(
          height: 120.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // Add Image Button - only show if not at max
              if (canAddMore) ...[
                _buildAddImageButton(context),
                horizontalSpace(12),
              ],
              // Selected Images
              ...images.asMap().entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: _buildImageItem(entry.value, entry.key),
                );
              }),
            ],
          ),
        ),
        if (images.length >= maxImages) ...[
          verticalSpace(8),
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: ColorsManager.warning.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16.sp,
                  color: ColorsManager.warning,
                ),
                horizontalSpace(8),
                Expanded(
                  child: Text(
                    'تم الوصول للحد الأقصى من الصور ($maxImages صور)',
                    style: TextStyles.font12BlackMedium.copyWith(
                      color: ColorsManager.warning,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildAddImageButton(BuildContext context) {
    return GestureDetector(
      onTap: () => _showImageSourceDialog(context),
      child: Container(
        width: 120.w,
        height: 120.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: ColorsManager.borderColor,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_photo_alternate_outlined,
              size: 32.sp,
              color: ColorsManager.mainColor,
            ),
            verticalSpace(4),
            Text(
              'إضافة صورة',
              style: TextStyles.font12BlackMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageItem(File image, int index) {
    return Stack(
      children: [
        Container(
          width: 120.w,
          height: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            image: DecorationImage(
              image: FileImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 4.h,
          right: 4.w,
          child: GestureDetector(
            onTap: () => onRemoveImage(index),
            child: Container(
              padding: EdgeInsets.all(4.r),
              decoration: const BoxDecoration(
                color: ColorsManager.error,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                size: 16.sp,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showImageSourceDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library, color: ColorsManager.mainColor),
                title: Text('اختيار من المعرض', style: TextStyles.font16BlackMedium),
                onTap: () {
                  Navigator.pop(context);
                  onPickImages();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt, color: ColorsManager.mainColor),
                title: Text('التقاط صورة', style: TextStyles.font16BlackMedium),
                onTap: () {
                  Navigator.pop(context);
                  onPickFromCamera();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}