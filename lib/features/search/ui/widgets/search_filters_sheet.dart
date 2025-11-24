
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/features/items/data/models/item_model.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../items/data/models/items_queries.dart';
import '../../logic/search_cubit/search_cubit.dart';
import '../../logic/search_cubit/search_state.dart';

class SearchFiltersSheet extends StatefulWidget {
  const SearchFiltersSheet({super.key});

  @override
  State<SearchFiltersSheet> createState() => _SearchFiltersSheetState();
}

class _SearchFiltersSheetState extends State<SearchFiltersSheet> {
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = context.read<SearchCubit>().state;
    _minPriceController.text = state.minPrice ?? '';
    _maxPriceController.text = state.maxPrice ?? '';
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle
            Container(
              margin: EdgeInsets.only(top: 12.h),
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: ColorsManager.borderColor,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            verticalSpace(16),
            // Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الفلاتر',
                    style: TextStyles.font20BlackBold,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<SearchCubit>().clearFilters();
                      _minPriceController.clear();
                      _maxPriceController.clear();
                    },
                    child: Text(
                      'مسح الكل',
                      style: TextStyles.font14CyanMedium,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            Divider(height: 1, color: ColorsManager.dividerColor),
            // Filters Content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // City
                    _buildSectionTitle('المدينة'),
                    verticalSpace(8),
                    _buildCitySelector(),
                    verticalSpace(16),
                    // Price Range
                    _buildSectionTitle('السعر (ل.س)'),
                    verticalSpace(8),
                    _buildPriceRange(),
                    verticalSpace(16),
                    // Condition
                    _buildSectionTitle('حالة المنتج'),
                    verticalSpace(8),
                    _buildConditionSelector(),
                    verticalSpace(16),
                    // Free Only
                    _buildFreeOnlyToggle(),
                    verticalSpace(16),
                    // Sort By
                    _buildSectionTitle('ترتيب حسب'),
                    verticalSpace(8),
                    _buildSortSelector(),
                  ],
                ),
              ),
            ),
            // Apply Button
            Padding(
              padding: EdgeInsets.all(16.w),
              child: GestureDetector(
                onTap: () {
                  context.read<SearchCubit>().search();
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  decoration: BoxDecoration(
                    color: ColorsManager.mainColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Text(
                      'تطبيق الفلاتر',
                      style: TextStyles.font16WhiteSemiBold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyles.font16BlackSemiBold,
    );
  }

  Widget _buildCitySelector() {
    final cities = ['دمشق', 'حلب', 'حمص', 'حماة', 'اللاذقية', 'طرطوس', 'درعا', 'السويداء'];

    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) => previous.selectedCity != current.selectedCity,
      builder: (context, state) {
        return Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: cities.map((city) {
            final isSelected = state.selectedCity == city;
            return GestureDetector(
              onTap: () {
                context.read<SearchCubit>().updateCity(isSelected ? null : city);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? ColorsManager.mainColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected ? ColorsManager.mainColor : ColorsManager.borderColor,
                  ),
                ),
                child: Text(
                  city,
                  style: TextStyles.font14BlackMedium.copyWith(
                    color: isSelected ? Colors.white : ColorsManager.textPrimary,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildPriceRange() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _minPriceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'من',
              hintStyle: TextStyles.hintText,
              filled: true,
              fillColor: ColorsManager.inputBackground,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            ),
            onChanged: (value) {
              context.read<SearchCubit>().updatePriceRange(
                value,
                _maxPriceController.text,
              );
            },
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: TextField(
            controller: _maxPriceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'إلى',
              hintStyle: TextStyles.hintText,
              filled: true,
              fillColor: ColorsManager.inputBackground,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            ),
            onChanged: (value) {
              context.read<SearchCubit>().updatePriceRange(
                _minPriceController.text,
                value,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildConditionSelector() {

    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) => previous.condition != current.condition,
      builder: (context, state) {
        return Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: ItemCondition.values.map((entry) {
            final isSelected = state.condition == entry;
            return GestureDetector(
              onTap: () {
                context.read<SearchCubit>().updateCondition(
                  isSelected ? null : entry,
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? ColorsManager.mainColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected ? ColorsManager.mainColor : ColorsManager.borderColor,
                  ),
                ),
                child: Text(
                  entry.displayName,
                  style: TextStyles.font14BlackMedium.copyWith(
                    color: isSelected ? Colors.white : ColorsManager.textPrimary,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildFreeOnlyToggle() {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) => previous.isFreeOnly != current.isFreeOnly,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<SearchCubit>().toggleFreeOnly();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: ColorsManager.borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إظهار العناصر المجانية فقط',
                  style: TextStyles.font14BlackMedium,
                ),
                Switch(
                  value: state.isFreeOnly,
                  onChanged: (value) {
                    context.read<SearchCubit>().toggleFreeOnly();
                  },
                  activeColor: ColorsManager.mainColor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSortSelector() {
    final sortOptions = {
      '${SortBy.createdAt.name}-${SortOrder.desc.name}': 'الأحدث',
      '${SortBy.createdAt.name}-${SortOrder.asc.name}': 'الأقدم',
      '${SortBy.views.name}-${SortOrder.desc.name}': 'الأكثر مشاهدة',
      '${SortBy.favoritesCount.name}-${SortOrder.desc.name}': 'الأكثر تفضيلاً',
      '${SortBy.price.name}-${SortOrder.asc.name}': 'الأقل سعرًا',
      '${SortBy.price.name}-${SortOrder.desc.name}': 'الأعلى سعرًا',
    };

    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>
      previous.sortBy != current.sortBy || previous.sortOrder != current.sortOrder,
      builder: (context, state) {
        final currentSort = '${state.sortBy.name}-${state.sortOrder.name}';

        return Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: sortOptions.entries.map((entry) {
            final isSelected = currentSort == entry.key;
            return GestureDetector(
              onTap: () {
                final parts = entry.key.split('-');
                final sortBy = SortBy.values.firstWhere((e) => e.name == parts[0]);
                final sortOrder = SortOrder.values.firstWhere((e) => e.name == parts[1]);

                context.read<SearchCubit>().updateSort(sortBy, sortOrder);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? ColorsManager.mainColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected ? ColorsManager.mainColor : ColorsManager.borderColor,
                  ),
                ),
                child: Text(
                  entry.value,
                  style: TextStyles.font14BlackMedium.copyWith(
                    color: isSelected ? Colors.white : ColorsManager.textPrimary,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}