// features/user_profile/ui/screens/user_profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../home/ui/widgets/item_card.dart';
import '../../logic/user_profile_cubit/user_profile_cubit.dart';
import '../../logic/user_profile_cubit/user_profile_state.dart';
import '../widgets/user_info_header.dart';

class UserProfileScreen extends StatelessWidget {
  final String userId;

  const UserProfileScreen({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserProfileCubit>(param1: userId)..loadUserProfile(),
      child: const _UserProfileScreenBody(),
    );
  }
}

class _UserProfileScreenBody extends StatelessWidget {
  const _UserProfileScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsManager.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'الملف الشخصي',
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainColor,
              ),
            ),
            success: (
                user,
                items,
                ratings,
                itemsPage,
                hasMoreItems,
                isLoadingItems,
                ratingsPage,
                hasMoreRatings,
                isLoadingRatings,
                ) {
              return RefreshIndicator(
                color: ColorsManager.mainColor,
                onRefresh: () => context.read<UserProfileCubit>().refresh(),
                child: CustomScrollView(
                  slivers: [
                    // User Info Header
                    SliverToBoxAdapter(
                      child: UserInfoHeader(
                        user: user,
                        onRateUser: () {
                          _showRateDialog(context);
                        },
                      ),
                    ),
                    SliverToBoxAdapter(child: verticalSpace(8)),
                    // Tabs (Items / Ratings)
                    SliverToBoxAdapter(
                      child: _buildTabBar(context, items.length, ratings.length),
                    ),
                    SliverToBoxAdapter(child: verticalSpace(8)),
                    // Items Grid
                    items.isEmpty
                        ? SliverToBoxAdapter(child: _buildEmptyItems())
                        : SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.w,
                          mainAxisSpacing: 12.h,
                          childAspectRatio: 0.7,
                        ),
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            return ItemCard(
                              item: items[index],
                              onTap: () {
                                context.pushNamed(
                                  Routes.itemDetailsScreen,
                                  arguments: items[index].id,
                                );
                              },
                            );
                          },
                          childCount: items.length,
                        ),
                      ),
                    ),
                    // Loading More
                    if (isLoadingItems)
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.all(16.h),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: ColorsManager.mainColor,
                            ),
                          ),
                        ),
                      ),
                    SliverToBoxAdapter(child: verticalSpace(16)),
                    // Ratings Section
                    if (ratings.isNotEmpty)
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'التقييمات (${ratings.length})',
                                style: TextStyles.font16BlackSemiBold,
                              ),
                              verticalSpace(12),
                              ...ratings.map((rating) => _buildRatingCard(rating)),
                            ],
                          ),
                        ),
                      ),
                    SliverToBoxAdapter(child: verticalSpace(16)),
                  ],
                ),
              );
            },
            error: (message) => _buildError(context, message),
          );
        },
      ),
    );
  }

  Widget _buildTabBar(BuildContext context, int itemsCount, int ratingsCount) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'الإعلانات ($itemsCount)',
              style: TextStyles.font14BlackSemiBold,
            ),
          ),
          Text(
            'التقييمات ($ratingsCount)',
            style: TextStyles.font14GreyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildRatingCard(dynamic rating) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorsManager.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundColor: ColorsManager.mainColor.withOpacity(0.1),
                backgroundImage: rating.fromUser.avatarUrl != null
                    ? NetworkImage(rating.fromUser.avatarUrl!)
                    : null,
                child: rating.fromUser.avatarUrl == null
                    ? Icon(
                  Icons.person,
                  size: 16.sp,
                  color: ColorsManager.mainColor,
                )
                    : null,
              ),
              horizontalSpace(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rating.fromUser.name,
                      style: TextStyles.font14BlackMedium,
                    ),
                    Row(
                      children: List.generate(
                        5,
                            (index) => Icon(
                          index < rating.rating ? Icons.star : Icons.star_border,
                          size: 14.sp,
                          color: ColorsManager.ratingStarFilled,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                rating.createdAt.toString().split(' ')[0],
                style: TextStyles.font12GreyRegular,
              ),
            ],
          ),
          if (rating.comment != null) ...[
            verticalSpace(8),
            Text(
              rating.comment!,
              style: TextStyles.font14BlackRegular,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEmptyItems() {
    return Padding(
      padding: EdgeInsets.all(32.w),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.inventory_2_outlined,
              size: 60.sp,
              color: ColorsManager.iconTertiary,
            ),
            verticalSpace(12),
            Text(
              'لا توجد إعلانات',
              style: TextStyles.font16GreyRegular,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
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
            GestureDetector(
              onTap: () {
                context.read<UserProfileCubit>().loadUserProfile();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: ColorsManager.mainColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  'إعادة المحاولة',
                  style: TextStyles.font14WhiteMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showRateDialog(BuildContext context) {
    int selectedRating = 5;
    final commentController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          'تقييم المستخدم',
          style: TextStyles.font18BlackSemiBold,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Star Rating
            StatefulBuilder(
              builder: (context, setState) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                        (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedRating = index + 1;
                        });
                      },
                      child: Icon(
                        index < selectedRating ? Icons.star : Icons.star_border,
                        size: 32.sp,
                        color: ColorsManager.ratingStarFilled,
                      ),
                    ),
                  ),
                );
              },
            ),
            verticalSpace(16),
            // Comment
            TextField(
              controller: commentController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'اكتب تعليقك (اختياري)',
                hintStyle: TextStyles.font14GreyRegular,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              'إلغاء',
              style: TextStyles.font14GreyMedium,
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: Get itemId from context
              context.read<UserProfileCubit>().rateUser(
                selectedRating,
                commentController.text.isEmpty ? null : commentController.text,
                'item-id-here', // Replace with actual itemId
              );
              Navigator.pop(dialogContext);
            },
            child: Text(
              'إرسال',
              style: TextStyles.font14CyanMedium,
            ),
          ),
        ],
      ),
    );
  }
}