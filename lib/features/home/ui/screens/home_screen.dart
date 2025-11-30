import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/home_cubit/home_cubit.dart';
import '../../logic/home_cubit/home_state.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/categories_horizontal_list.dart';
import '../widgets/section_header.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..loadHomeData(),
      child: const _HomeScreenBody(),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: HomeAppBar(
        location: 'دمشق',
        notificationCount: 0,
        onLocationTap: () {
          // TODO: Open location picker
        },
        onNotificationTap: () {
          // TODO: Navigate to notifications
        },
      ),
      body: RefreshIndicator(
        color: ColorsManager.mainColor,
        onRefresh: () => context.read<HomeCubit>().refresh(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(16),
              // Search Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SearchBarWidget(
                  onTap: () {
                    context.pushNamed(Routes.searchScreen);
                  },
                ),
              ),
              verticalSpace(24),
              // Categories Section
              SectionHeader(
                title: 'الأقسام',
                actionText: 'جميع الأقسام',
                onActionTap: () {
                  context.pushNamed(Routes.categoriesScreen);
                },
              ),
              verticalSpace(12),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>

                    previous.categories != current.categories ||
                    previous.isCategoriesLoading != current.isCategoriesLoading,
                builder: (context, state) {
                  return CategoriesHorizontalList(
                    categories: state.categories,
                    isLoading: state.isCategoriesLoading,
                    onCategoryTap: (category) {
                      context.pushNamed(
                        Routes.categoryItemsScreen,
                        arguments: category,
                      );
                    },
                  );
                },
              ),
              verticalSpace(24),
              // Featured Items Section
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>
                    previous.featuredItems != current.featuredItems ||
                    previous.isFeaturedLoading != current.isFeaturedLoading,
                builder: (context, state) {
                  if (state.isFeaturedLoading) {
                    return _buildLoadingSection();
                  }
                  if (state.featuredItems.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionHeader(
                        title: 'عروض اليوم / الفرص الذهبية',
                        actionText: 'عرض الكل',
                        onActionTap: () {
                          // TODO: Navigate to all featured items
                        },
                      ),
                      verticalSpace(12),
                      SizedBox(
                        height: 220.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          itemCount: state.featuredItems.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 12.w),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 160.w,
                              child: ItemCard(
                                item: state.featuredItems[index],
                                onTap: () {
                                  context.pushNamed(
                                    Routes.itemDetailsScreen,
                                    arguments: state.featuredItems[index].id,
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      verticalSpace(24),
                    ],
                  );
                },
              ),
              // Items Section (إعلانات مخصصة)
              const SectionHeader(title: 'إعلانات مخصصة لك'),
              verticalSpace(12),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>
                    previous.items != current.items ||
                    previous.isItemsLoading != current.isItemsLoading,
                builder: (context, state) {
                  if (state.isItemsLoading && state.items.isEmpty) {
                    return _buildLoadingSection();
                  }
                  if (state.items.isEmpty) {
                    return _buildEmptyItems();
                  }
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 12.h,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        return ItemCard(
                          item: state.items[index],
                          onTap: () {
                            context.pushNamed(
                              Routes.itemDetailsScreen,
                              arguments: state.items[index].id,
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
              verticalSpace(16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingSection() {
    return SizedBox(
      height: 100.h,
      child: const Center(
        child: CircularProgressIndicator(
          color: ColorsManager.mainColor,
        ),
      ),
    );
  }

  Widget _buildEmptyItems() {
    return Padding(
      padding: EdgeInsets.all(24.w),
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
              'لا توجد إعلانات حالياً',
              style: TextStyles.font14GreyRegular,
            ),
          ],
        ),
      ),
    );
  }
}
