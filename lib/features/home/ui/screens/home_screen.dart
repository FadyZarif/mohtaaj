import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../main_layout/logic/main_layout_cubit/main_layout_cubit.dart';
import '../../../main_layout/logic/main_layout_cubit/main_layout_state.dart';
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

class _HomeScreenBody extends StatefulWidget {
  const _HomeScreenBody();

  @override
  State<_HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<_HomeScreenBody> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isLoadingMore) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final delta = maxScroll - currentScroll;

    // Load more when 200 pixels from bottom
    if (delta <= 200) {
      final cubit = context.read<HomeCubit>();
      if (cubit.state.hasMoreItems && !cubit.state.isItemsLoading) {
        setState(() => _isLoadingMore = true);
        cubit.getItems(loadMore: true).then((_) {
          if (mounted) setState(() => _isLoadingMore = false);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: BlocBuilder<MainLayoutCubit, MainLayoutState>(
          buildWhen: (previous, current) =>
              previous.unreadNotificationsCount != current.unreadNotificationsCount,
          builder: (context, mainState) {
            return HomeAppBar(
              location: 'دمشق',
              notificationCount: mainState.unreadNotificationsCount,
              onLocationTap: () {
                // TODO: Open location picker
              },
              onNotificationTap: () async {
                await context.pushNamed(Routes.notificationsScreen);
                // Refresh notification count when returning from notifications screen
                if (context.mounted) {
                  context.read<MainLayoutCubit>().loadUnreadNotificationsCount();
                }
              },
            );
          },
        ),
      ),
      body: RefreshIndicator(
        color: ColorsManager.mainColor,
        onRefresh: () async {
          await context.read<HomeCubit>().refresh();
          // تحديث عدد الإشعارات عند عمل refresh
          if (context.mounted) {
            context.read<MainLayoutCubit>().loadUnreadNotificationsCount();
          }
        },
        child: SingleChildScrollView(
          controller: _scrollController,
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
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return SizedBox(
                            height: constraints.maxWidth * 0.58, // نسبة انت تحددها
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              itemCount: state.featuredItems.length,
                              separatorBuilder: (context, index) => horizontalSpace(12),
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
                          );
                        },
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
                    previous.isItemsLoading != current.isItemsLoading ||
                    previous.hasMoreItems != current.hasMoreItems,
                builder: (context, state) {
                  if (state.isItemsLoading && state.items.isEmpty) {
                    return _buildLoadingSection();
                  }
                  if (state.items.isEmpty) {
                    return _buildEmptyItems();
                  }
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 12.h,
                            childAspectRatio: 0.75,
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
                      ),
                      // Loading more indicator
                      if (_isLoadingMore)
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: ColorsManager.mainColor,
                            ),
                          ),
                        ),
                      // End of list indicator
                      if (!state.hasMoreItems && state.items.isNotEmpty)
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: Center(
                            child: Text(
                              'لا توجد إعلانات أخرى',
                              style: TextStyles.font14GreyRegular,
                            ),
                          ),
                        ),
                    ],
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
        child: CircularProgressIndicator(color: ColorsManager.mainColor),
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
            Text('لا توجد إعلانات حالياً', style: TextStyles.font14GreyRegular),
          ],
        ),
      ),
    );
  }
}
