
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../home/ui/widgets/item_card.dart';
import '../../logic/search_cubit/search_cubit.dart';
import '../../logic/search_cubit/search_state.dart';
import '../widgets/search_filters_sheet.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchCubit>(),
      child: _SearchScreenBody(searchController: _searchController),
    );
  }
}

class _SearchScreenBody extends StatelessWidget {
  final TextEditingController searchController;

  const _SearchScreenBody({required this.searchController});

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
        title: _buildSearchField(context),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: ColorsManager.textPrimary),
            onPressed: () => _showFiltersSheet(context),
          ),
        ],
      ),
      body: Column(
        children: [
          // Active Filters
          _buildActiveFilters(context),
          // Results
          Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state.isLoading && state.items.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainColor,
                    ),
                  );
                }

                if (state.error != null) {
                  return _buildError(context, state.error!);
                }

                if (state.items.isEmpty) {
                  return _buildEmptyState();
                }

                return _buildResults(context, state);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return TextField(
      controller: searchController,
      autofocus: true,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'ابحث عن أي شيء...',
        hintStyle: TextStyles.font14GreyRegular,
        border: InputBorder.none,
        filled: false,
      ),
      onChanged: (value) {
        context.read<SearchCubit>().updateSearchQuery(value);
      },
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          context.read<SearchCubit>().search();
        }
      },
    );
  }

  Widget _buildActiveFilters(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>
      previous.selectedCategory != current.selectedCategory ||
          previous.selectedCity != current.selectedCity ||
          previous.condition != current.condition ||
          previous.isFreeOnly != current.isFreeOnly ||
          previous.minPrice != current.minPrice ||
          previous.maxPrice != current.maxPrice,
      builder: (context, state) {
        final hasFilters = state.selectedCategory != null ||
            state.selectedCity != null ||
            state.condition != null ||
            state.isFreeOnly ||
            (state.minPrice != null && state.minPrice!.isNotEmpty) ||
            (state.maxPrice != null && state.maxPrice!.isNotEmpty);

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
                      context.read<SearchCubit>().clearFilters();
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
                  if (state.selectedCategory != null)
                    _buildFilterChip(
                      context,
                      'التصنيف: ${state.selectedCategory}',
                          () => context.read<SearchCubit>().updateCategory(null),
                    ),
                  if (state.selectedCity != null)
                    _buildFilterChip(
                      context,
                      'المدينة: ${state.selectedCity}',
                          () => context.read<SearchCubit>().updateCity(null),
                    ),
                  if (state.condition != null)
                    _buildFilterChip(
                      context,
                      'الحالة: ${state.condition}',
                          () => context.read<SearchCubit>().updateCondition(null),
                    ),
                  if (state.isFreeOnly)
                    _buildFilterChip(
                      context,
                      'مجاني فقط',
                          () => context.read<SearchCubit>().toggleFreeOnly(),
                    ),
                  if (state.minPrice != null && state.minPrice!.isNotEmpty)
                    _buildFilterChip(
                      context,
                      'من: ${state.minPrice} ل.س',
                          () => context.read<SearchCubit>().updatePriceRange(null, state.maxPrice),
                    ),
                  if (state.maxPrice != null && state.maxPrice!.isNotEmpty)
                    _buildFilterChip(
                      context,
                      'إلى: ${state.maxPrice} ل.س',
                          () => context.read<SearchCubit>().updatePriceRange(state.minPrice, null),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterChip(BuildContext context, String label, VoidCallback onRemove) {
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
            onTap: onRemove,
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

  Widget _buildResults(BuildContext context, SearchState state) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'النتائج (${state.items.length})',
            style: TextStyles.font14GreyMedium,
          ),
          verticalSpace(12),
          Expanded(
            child: GridView.builder(
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
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: 60.sp,
            color: ColorsManager.iconTertiary,
          ),
          verticalSpace(16),
          Text(
            'لا توجد نتائج',
            style: TextStyles.font16GreyRegular,
          ),
          verticalSpace(8),
          Text(
            'جرب البحث بكلمات أخرى',
            style: TextStyles.font14GreyRegular,
          ),
        ],
      ),
    );
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
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
              context.read<SearchCubit>().search();
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
    );
  }

  void _showFiltersSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => BlocProvider.value(
        value: context.read<SearchCubit>(),
        child: const SearchFiltersSheet(),
      ),
    );
  }
}