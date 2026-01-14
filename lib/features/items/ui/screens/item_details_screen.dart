
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/item_details_cubit/item_details_cubit.dart';
import '../../logic/item_details_cubit/item_details_state.dart';
import '../widgets/item_images_carousel.dart';
import '../widgets/item_info_section.dart';
import '../widgets/owner_section.dart';

class ItemDetailsScreen extends StatelessWidget {
  final String itemId;

  const ItemDetailsScreen({
    super.key,
    required this.itemId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ItemDetailsCubit>(param1: itemId)..getItemDetails(),
      child: const _ItemDetailsBody(),
    );
  }
}

class _ItemDetailsBody extends StatelessWidget {
  const _ItemDetailsBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      body: BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainColor,
              ),
            ),
            success: (item, similarItems, isFavorite) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Images Carousel
                        ItemImagesCarousel(images: item.images),
                        verticalSpace(8),
                        // Item Info
                        ItemInfoSection(item: item),
                        verticalSpace(8),
                        // Owner Section
                        OwnerSection(
                          owner: item.owner!,
                          onTap: () {
                            context.pushNamed(
                              Routes.userProfileScreen,
                              arguments: item.owner!.id,
                            );
                          },
                        ),
                        verticalSpace(80), // Space for bottom buttons
                      ],
                    ),
                  ),
                  // Bottom Action Buttons
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: _buildActionButtons(context, item.owner!.id, isFavorite),
                  ),
                ],
              );
            },
            error: (message) => Center(
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
                    message,
                    style: TextStyles.font14GreyRegular,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(24),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ItemDetailsCubit>().getItemDetails();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.mainColor,
                    ),
                    child: Text(
                      'إعادة المحاولة',
                      style: TextStyles.font14WhiteMedium,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, String ownerId, bool isFavorite) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            // Favorite Button
            GestureDetector(
              onTap: () {
                context.read<ItemDetailsCubit>().toggleFavorite();
              },
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.borderColor),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? ColorsManager.error : ColorsManager.iconSecondary,
                  size: 24.sp,
                ),
              ),
            ),
            horizontalSpace(12),
            // Chat Button
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // TODO: Navigate to chat
                },
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.mainColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'دردشة',
                        style: TextStyles.font16WhiteSemiBold,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            // Call Button
            GestureDetector(
              onTap: () {
                // TODO: Make call
              },
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: ColorsManager.success,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 24.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}