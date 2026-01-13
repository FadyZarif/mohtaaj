// lib/core/widgets/items_list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/extensions.dart';
import '../helpers/spacing.dart';
import '../routing/routes.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';
import '../../features/items/logic/items_list_cubit/items_list_cubit.dart';
import '../../features/items/logic/items_list_cubit/items_list_state.dart';
import '../../features/items/data/models/items_queries.dart';
import '../../features/home/ui/widgets/item_card.dart';
import 'items_filters_sheet.dart';

class ItemsListScreen extends StatefulWidget {
  final String title;
  final String? categoryId;
  final String searchHint;
  final bool autoFocus;

  const ItemsListScreen({
    super.key,
    required this.title,
    this.categoryId,
    this.searchHint = 'ابحث عن أي شيء...',
    this.autoFocus = false,
  });

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.categoryId != null) {
        context.read<ItemsListCubit>().setCategoryId(widget.categoryId!);
      }
      context.read<ItemsListCubit>().search();
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      context.read<ItemsListCubit>().search(loadMore: true);
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

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
          widget.title,
          style: TextStyles.font18BlackSemiBold,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: ColorsManager.textPrimary),
            onPressed: () => _showFiltersSheet(context),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          _buildActiveFilters(),
          Expanded(
            child: BlocBuilder<ItemsListCubit, ItemsListState>(
              builder: (context, state) {
                if (state.isLoading && state.items.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainColor,
                    ),
                  );
                }

                if (state.error != null && state.items.isEmpty) {
                  return _buildErrorState(state.error!);
                }

                if (state.items.isEmpty) {
                  return _buildEmptyState();
                }

                return RefreshIndicator(
                  color: ColorsManager.mainColor,
                  onRefresh: () async {
                    context.read<ItemsListCubit>().refresh();
                    // Wait for the refresh to complete
                    await Future.delayed(const Duration(milliseconds: 500));
                  },
                  child: ListView(
                    controller: _scrollController,
                    padding: EdgeInsets.all(16.w),
                    children: [
                      // Results count
                      Text(
                        'النتائج (${state.items.length})',
                        style: TextStyles.font14GreyMedium,
                      ),
                      verticalSpace(12),
                      // Items Grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.w,
                          mainAxisSpacing: 12.h,
                          childAspectRatio: 0.65,
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
                            showStatus: true,
                          );
                        },
                      ),
                      // Loading indicator for pagination
                      if (state.isLoadingMore) ...[
                        verticalSpace(16),
                        Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.08),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 16.w,
                                  height: 16.h,
                                  child: const CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: ColorsManager.mainColor,
                                  ),
                                ),
                                horizontalSpace(12),
                                Text(
                                  'جاري تحميل المزيد...',
                                  style: TextStyles.font14BlackMedium.copyWith(
                                    color: ColorsManager.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        verticalSpace(16),
                      ],
                      // No more items indicator
                      if (!state.hasMoreItems && !state.isLoadingMore && state.items.length >= 10) ...[
                        verticalSpace(16),
                        Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                            decoration: BoxDecoration(
                              color: ColorsManager.backgroundColor,
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(
                                color: ColorsManager.borderColor,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check_circle_outline,
                                  size: 18.sp,
                                  color: ColorsManager.textSecondary,
                                ),
                                horizontalSpace(8),
                                Text(
                                  'لا يوجد المزيد من النتائج',
                                  style: TextStyles.font12BlackMedium.copyWith(
                                    color: ColorsManager.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        verticalSpace(16),
                      ],
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: TextField(
        controller: _searchController,
        autofocus: widget.autoFocus,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: widget.searchHint,
          hintStyle: TextStyles.font14GreyRegular,
          prefixIcon: const Icon(Icons.search, color: ColorsManager.iconSecondary),
          filled: true,
          fillColor: ColorsManager.backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        ),
        onChanged: (value) {
          context.read<ItemsListCubit>().updateSearchQuery(value);
        },
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            context.read<ItemsListCubit>().search();
          }
        },
      ),
    );
  }

  Widget _buildActiveFilters() {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) =>
      previous.selectedCountry != current.selectedCountry ||
          previous.selectedCity != current.selectedCity ||
          previous.latitude != current.latitude ||
          previous.longitude != current.longitude ||
          previous.radiusKm != current.radiusKm ||
          previous.condition != current.condition ||
          previous.isFreeOnly != current.isFreeOnly ||
          previous.minPrice != current.minPrice ||
          previous.maxPrice != current.maxPrice ||
          previous.sortBy != current.sortBy ||
          previous.sortOrder != current.sortOrder,
      builder: (context, state) {
        final hasFilters = state.selectedCountry != null ||
            state.selectedCity != null ||
            (state.latitude != null && state.longitude != null) ||
            state.condition != null ||
            state.isFreeOnly ||
            (state.minPrice != null && state.minPrice!.isNotEmpty) ||
            (state.maxPrice != null && state.maxPrice!.isNotEmpty) ||
            state.sortBy != SortBy.createdAt ||
            state.sortOrder != SortOrder.desc;

        if (!hasFilters) return const SizedBox.shrink();

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'الفلاتر النشطة',
                    style: TextStyles.font14BlackMedium,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.read<ItemsListCubit>().clearFilters();
                    },
                    child: Text(
                      'مسح الكل',
                      style: TextStyles.font14CyanMedium,
                    ),
                  ),
                ],
              ),
              verticalSpace(8),
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: [
                  if (state.selectedCountry != null)
                    _buildFilterChip(
                      'الدولة: ${state.selectedCountry}',
                          () => context.read<ItemsListCubit>().updateCountry(null),
                    ),
                  if (state.selectedCity != null)
                    _buildFilterChip(
                      'المدينة: ${state.selectedCity}',
                          () => context.read<ItemsListCubit>().updateCity(null),
                    ),
                  if (state.latitude != null && state.longitude != null)
                    _buildFilterChip(
                      'الموقع: ${state.radiusKm.toStringAsFixed(1)} كم',
                          () => context.read<ItemsListCubit>().clearLocation(),
                    ),
                  if (state.condition != null)
                    _buildFilterChip(
                      'الحالة: ${state.condition!}',
                          () => context.read<ItemsListCubit>().updateCondition(null),
                    ),
                  if (state.isFreeOnly)
                    _buildFilterChip(
                      'مجاني فقط',
                          () => context.read<ItemsListCubit>().toggleFreeOnly(),
                    ),
                  if (state.minPrice != null && state.minPrice!.isNotEmpty)
                    _buildFilterChip(
                      'من: ${state.minPrice} ل.س',
                          () => context.read<ItemsListCubit>().updatePriceRange(null, state.maxPrice),
                    ),
                  if (state.maxPrice != null && state.maxPrice!.isNotEmpty)
                    _buildFilterChip(
                      'إلى: ${state.maxPrice} ل.س',
                          () => context.read<ItemsListCubit>().updatePriceRange(state.minPrice, null),
                    ),
                  if (state.sortBy != SortBy.createdAt || state.sortOrder != SortOrder.desc)
                    _buildFilterChip(
                      'الترتيب: ${_getSortLabel(state.sortBy, state.sortOrder)}',
                          () => context.read<ItemsListCubit>().updateSort(SortBy.createdAt, SortOrder.desc),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterChip(String label, VoidCallback onRemove) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: ColorsManager.mainColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyles.font12BlackMedium,
          ),
          SizedBox(width: 4.w),
          GestureDetector(
            onTap: () {
              onRemove(); // ده بيعمل update
              context.read<ItemsListCubit>().search(); // ✅ نضيف search هنا
            },
            child: Icon(
              Icons.close,
              size: 16.sp,
              color: ColorsManager.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  String _getSortLabel(SortBy sortBy, SortOrder sortOrder) {
    final key = '${sortBy.name}-${sortOrder.name}';
    final labels = {
      '${SortBy.createdAt.name}-${SortOrder.desc.name}': 'الأحدث',
      '${SortBy.createdAt.name}-${SortOrder.asc.name}': 'الأقدم',
      '${SortBy.views.name}-${SortOrder.desc.name}': 'الأكثر مشاهدة',
      '${SortBy.favoritesCount.name}-${SortOrder.desc.name}': 'الأكثر تفضيلاً',
      '${SortBy.price.name}-${SortOrder.asc.name}': 'الأقل سعرًا',
      '${SortBy.price.name}-${SortOrder.desc.name}': 'الأعلى سعرًا',
    };
    return labels[key] ?? 'الأحدث';
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inventory_2_outlined,
            size: 80.sp,
            color: ColorsManager.iconTertiary,
          ),
          verticalSpace(20),
          Text(
            'لا توجد إعلانات',
            style: TextStyles.font18BlackSemiBold.copyWith(
              color: ColorsManager.textSecondary,
            ),
          ),
          verticalSpace(8),
          Text(
            'جرب تعديل الفلاتر أو البحث بكلمات أخرى',
            style: TextStyles.font14GreyRegular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 80.sp,
              color: ColorsManager.error,
            ),
            verticalSpace(20),
            Text(
              'حدث خطأ',
              style: TextStyles.font18BlackSemiBold.copyWith(
                color: ColorsManager.error,
              ),
            ),
            verticalSpace(8),
            Text(
              error,
              style: TextStyles.font14GreyRegular,
              textAlign: TextAlign.center,
            ),
            verticalSpace(24),
            ElevatedButton.icon(
              onPressed: () => context.read<ItemsListCubit>().refresh(),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.mainColor,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              icon: const Icon(Icons.refresh, color: Colors.white),
              label: Text(
                'إعادة المحاولة',
                style: TextStyles.font14WhiteMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFiltersSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => BlocProvider.value(
        value: context.read<ItemsListCubit>(),
        child: const ItemsFiltersSheet(),
      ),
    );
  }
}