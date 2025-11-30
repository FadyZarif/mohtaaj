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
import 'items_grid.dart';
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
                return Padding(
                  padding: EdgeInsets.all(16.w),
                  child: ItemsGrid(
                    items: state.items,
                    isLoading: state.isLoading || state.isLoadingMore,
                    error: state.error,
                    onRetry: () => context.read<ItemsListCubit>().refresh(),
                    onItemTap: (item) {
                      context.pushNamed(
                        Routes.itemDetailsScreen,
                        arguments: item.id,
                      );
                    },
                    resultCountText: 'النتائج (${state.items.length})',
                    emptyMessage: 'لا توجد إعلانات',
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
      previous.selectedCity != current.selectedCity ||
          previous.condition != current.condition ||
          previous.isFreeOnly != current.isFreeOnly ||
          previous.minPrice != current.minPrice ||
          previous.maxPrice != current.maxPrice ||
          previous.sortBy != current.sortBy ||
          previous.sortOrder != current.sortOrder,
      builder: (context, state) {
        final hasFilters = state.selectedCity != null ||
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
                  if (state.selectedCity != null)
                    _buildFilterChip(
                      'المدينة: ${state.selectedCity}',
                          () => context.read<ItemsListCubit>().updateCity(null),
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
        color: ColorsManager.mainColor.withOpacity(0.1),
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