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
import '../../../items/data/models/item_model.dart';
import '../../../items/data/models/items_queries.dart';
import '../../data/models/category_model.dart';
import '../../logic/category_items_cubit/category_items_cubit.dart';
import '../../logic/category_items_cubit/category_items_state.dart';
import '../widgets/category_items_filter_sheet.dart';
import '../widgets/category_items_search_bar.dart';
import '../widgets/category_items_sort_sheet.dart';

class CategoryItemsScreen extends StatefulWidget {
  final CategoryModel category;

  const CategoryItemsScreen({
    super.key,
    required this.category,
  });

  @override
  State<CategoryItemsScreen> createState() => _CategoryItemsScreenState();
}

class _CategoryItemsScreenState extends State<CategoryItemsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      context.read<CategoryItemsCubit>().getItems(loadMore: true);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CategoryItemsCubit>(param1: widget.category.id)..getItems(),
      child: _CategoryItemsScreenBody(
        category: widget.category,
        scrollController: _scrollController,
      ),
    );
  }
}

class _CategoryItemsScreenBody extends StatelessWidget {
  final CategoryModel category;
  final ScrollController scrollController;

  const _CategoryItemsScreenBody({
    required this.category,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          category.name,
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
        actions: [
          // Sort Button
          IconButton(
            icon: const Icon(Icons.sort, color: ColorsManager.mainColor),
            onPressed: () {
              _showSortSheet(context);
            },
          ),
          // Filter Button
          BlocBuilder<CategoryItemsCubit, CategoryItemsState>(
            builder: (context, state) {
              final hasFilters = state.selectedCondition != null ||
                  state.selectedCity != null ||
                  state.isFree != null ||
                  state.minPrice != null ||
                  state.maxPrice != null;

              return Stack(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: ColorsManager.mainColor,
                    ),
                    onPressed: () {
                      _showFilterSheet(context);
                    },
                  ),
                  if (hasFilters)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        width: 8.w,
                        height: 8.h,
                        decoration: const BoxDecoration(
                          color: ColorsManager.error,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        color: ColorsManager.mainColor,
        onRefresh: () => context.read<CategoryItemsCubit>().refresh(),
        child: Column(
          children: [
            // Search Bar
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: CategoryItemsSearchBar(
                onSearch: (query) {
                  context.read<CategoryItemsCubit>().search(query);
                },
              ),
            ),
            verticalSpace(8),
            // Items Grid
            Expanded(
              child: BlocBuilder<CategoryItemsCubit, CategoryItemsState>(
                builder: (context, state) {
                  if (state.isLoading && state.items.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.mainColor,
                      ),
                    );
                  }

                  if (state.error != null && state.items.isEmpty) {
                    return _ErrorWidget(
                      message: state.error!,
                      onRetry: () =>
                          context.read<CategoryItemsCubit>().getItems(),
                    );
                  }

                  if (state.items.isEmpty) {
                    return _EmptyWidget();
                  }

                  return GridView.builder(
                    controller: scrollController,
                    padding: EdgeInsets.all(16.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.w,
                      mainAxisSpacing: 12.h,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: state.items.length + (state.hasMoreItems ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == state.items.length) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: ColorsManager.mainColor,
                          ),
                        );
                      }

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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSortSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (bottomSheetContext) => BlocProvider.value(
        value: context.read<CategoryItemsCubit>(),
        child: const CategoryItemsSortSheet(),
      ),
    );
  }

  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (bottomSheetContext) => BlocProvider.value(
        value: context.read<CategoryItemsCubit>(),
        child: const CategoryItemsFilterSheet(),
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorWidget({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
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
              onTap: onRetry,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 12.h,
                ),
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
}

class _EmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inventory_2_outlined,
              size: 80.sp,
              color: ColorsManager.iconTertiary,
            ),
            verticalSpace(16),
            Text(
              'لا توجد منتجات في هذا القسم',
              style: TextStyles.font16GreyRegular,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
