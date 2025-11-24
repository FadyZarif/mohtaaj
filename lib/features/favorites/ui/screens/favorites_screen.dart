
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
import '../../logic/favorites_cubit/favorites_cubit.dart';
import '../../logic/favorites_cubit/favorites_state.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoritesCubit>()..getFavorites(),
      child: const _FavoritesScreenBody(),
    );
  }
}

class _FavoritesScreenBody extends StatelessWidget {
  const _FavoritesScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'المفضلة',
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainColor,
              ),
            ),
            success: (items, currentPage, hasMoreItems) {
              if (items.isEmpty) {
                return _buildEmptyState(context);
              }
              return RefreshIndicator(
                color: ColorsManager.mainColor,
                onRefresh: () => context.read<FavoritesCubit>().refresh(),
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.w,
                      mainAxisSpacing: 12.h,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          ItemCard(
                            item: items[index],
                            onTap: () {
                              context.pushNamed(
                                Routes.itemDetailsScreen,
                                arguments: items[index].id,
                              );
                            },
                          ),
                          // Remove button
                          Positioned(
                            top: 8.h,
                            left: 8.w,
                            child: GestureDetector(
                              onTap: () {
                                _showRemoveDialog(
                                  context,
                                  items[index].id,
                                  items[index].title,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(6.r),
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
                                  Icons.favorite,
                                  size: 20.sp,
                                  color: ColorsManager.error,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              );
            },
            error: (message) => _buildError(context, message),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite_border,
            size: 80.sp,
            color: ColorsManager.iconTertiary,
          ),
          verticalSpace(16),
          Text(
            'لا توجد مفضلات',
            style: TextStyles.font18BlackSemiBold,
          ),
          verticalSpace(8),
          Text(
            'ابدأ بإضافة الإعلانات التي تعجبك',
            style: TextStyles.font14GreyRegular,
            textAlign: TextAlign.center,
          ),
          verticalSpace(24),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: ColorsManager.mainColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                'تصفح الإعلانات',
                style: TextStyles.font14WhiteMedium,
              ),
            ),
          ),
        ],
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
                context.read<FavoritesCubit>().getFavorites();
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

  void _showRemoveDialog(BuildContext context, String itemId, String title) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          'إزالة من المفضلة',
          style: TextStyles.font18BlackSemiBold,
        ),
        content: Text(
          'هل تريد إزالة "$title" من المفضلة؟',
          style: TextStyles.font14BlackRegular,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
            },
            child: Text(
              'إلغاء',
              style: TextStyles.font14GreyMedium,
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<FavoritesCubit>().removeFromFavorites(itemId);
              Navigator.pop(dialogContext);
            },
            child: Text(
              'إزالة',
              style: TextStyles.font14CyanMedium,
            ),
          ),
        ],
      ),
    );
  }
}