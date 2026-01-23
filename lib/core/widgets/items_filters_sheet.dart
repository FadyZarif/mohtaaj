// lib/core/widgets/items_filters_sheet.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/di/dependency_injection.dart';
import '../../features/categories/logic/categories_cubit/categories_cubit.dart';
import '../../features/categories/logic/categories_cubit/categories_state.dart';
import '../../features/items/data/models/item_model.dart';
import '../../features/items/data/models/items_queries.dart';
import '../../features/items/logic/items_list_cubit/items_list_cubit.dart';
import '../../features/items/logic/items_list_cubit/items_list_state.dart';
import '../../features/items/ui/widgets/location_picker.dart';
import '../../features/auth/ui/widgets/searchable_dropdown.dart';
import '../helpers/location_data.dart';
import '../helpers/spacing.dart';
import '../services/auth_service.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class ItemsFiltersSheet extends StatefulWidget {
  const ItemsFiltersSheet({super.key});

  @override
  State<ItemsFiltersSheet> createState() => _ItemsFiltersSheetState();
}

class _ItemsFiltersSheetState extends State<ItemsFiltersSheet> {
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = context.read<ItemsListCubit>().state;
    _minPriceController.text = state.minPrice ?? '';
    _maxPriceController.text = state.maxPrice ?? '';

    // Initialize country and city from user data if not already set
    _initializeLocationFromUserData();
  }

  Future<void> _initializeLocationFromUserData() async {
    final state = context.read<ItemsListCubit>().state;

    // Only set default values if no filters are active
    if (state.selectedCountry == null &&
        state.selectedCity == null &&
        state.latitude == null &&
        state.longitude == null) {
      final user = await getIt<AuthService>().getUserData();
      if (user != null && mounted) {
        context.read<ItemsListCubit>().updateCountry(user.country);
        context.read<ItemsListCubit>().updateCity(user.city);
      }
    }
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
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: ColorsManager.mainColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(
                          Icons.filter_list_rounded,
                          color: ColorsManager.mainColor,
                          size: 20.sp,
                        ),
                      ),
                      horizontalSpace(12),
                      Text(
                        'الفلاتر',
                        style: TextStyles.font20BlackBold,
                      ),
                      BlocBuilder<ItemsListCubit, ItemsListState>(
                        builder: (context, state) {
                          final activeFiltersCount = _getActiveFiltersCount(state);
                          if (activeFiltersCount == 0) return const SizedBox.shrink();

                          return Container(
                            margin: EdgeInsets.only(right: 8.w),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsManager.mainColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              '$activeFiltersCount',
                              style: TextStyles.font12WhiteMedium,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<ItemsListCubit>().clearFilters();
                      _minPriceController.clear();
                      _maxPriceController.clear();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.mainColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.clear_all,
                            size: 16.sp,
                            color: ColorsManager.mainColor,
                          ),
                          horizontalSpace(4),
                          Text(
                            'مسح الكل',
                            style: TextStyles.font14CyanMedium,
                          ),
                        ],
                      ),
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
                    // Category Selector
                    _buildSectionTitle('التصنيف', icon: Icons.category_outlined),
                    verticalSpace(12),
                    _buildCategoryDropdown(),
                    verticalSpace(20),
                    // Country & City - Dropdown (only if no location search)
                    BlocBuilder<ItemsListCubit, ItemsListState>(
                      buildWhen: (previous, current) =>
                          previous.latitude != current.latitude ||
                          previous.longitude != current.longitude,
                      builder: (context, state) {
                        if (state.latitude != null && state.longitude != null) {
                          return const SizedBox.shrink();
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle('الدولة', icon: Icons.public),
                            verticalSpace(12),
                            _buildCountryDropdown(),
                            verticalSpace(16),
                            _buildSectionTitle('المدينة', icon: Icons.location_city),
                            verticalSpace(12),
                            _buildCityDropdown(),
                            verticalSpace(20),
                          ],
                        );
                      },
                    ),
                    // Location Search
                    _buildSectionTitle('البحث بالموقع', icon: Icons.map_outlined),
                    verticalSpace(12),
                    _buildLocationPicker(),
                    verticalSpace(20),
                    // Price Range
                    _buildSectionTitle('السعر', icon: Icons.payments_outlined),
                    verticalSpace(12),
                    _buildPriceRange(),
                    verticalSpace(20),
                    // Condition
                    _buildSectionTitle('حالة المنتج', icon: Icons.verified_outlined),
                    verticalSpace(12),
                    _buildConditionSelector(),
                    verticalSpace(20),
                    // Free Only
                    _buildFreeOnlyToggle(),
                    verticalSpace(20),
                    // Sort By
                    _buildSectionTitle('ترتيب حسب', icon: Icons.sort),
                    verticalSpace(12),
                    _buildSortSelector(),
                    verticalSpace(16),
                  ],
                ),
              ),
            ),
            // Apply Button
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: BlocBuilder<ItemsListCubit, ItemsListState>(
                builder: (context, state) {
                  final activeFiltersCount = _getActiveFiltersCount(state);

                  return GestureDetector(
                    onTap: () {
                      context.read<ItemsListCubit>().search();
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            ColorsManager.mainColor,
                            ColorsManager.mainColor.withValues(alpha: 0.8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(14.r),
                        boxShadow: [
                          BoxShadow(
                            color: ColorsManager.mainColor.withValues(alpha: 0.4),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 22.sp,
                            ),
                            horizontalSpace(8),
                            Text(
                              activeFiltersCount > 0
                                  ? 'تطبيق الفلاتر ($activeFiltersCount)'
                                  : 'عرض جميع النتائج',
                              style: TextStyles.font16WhiteSemiBold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _getActiveFiltersCount(ItemsListState state) {
    int count = 0;
    if (state.categoryId != null) count++;
    if (state.minPrice != null && state.minPrice!.isNotEmpty) count++;
    if (state.maxPrice != null && state.maxPrice!.isNotEmpty) count++;
    if (state.condition != null) count++;
    if (state.isFreeOnly) count++;
    if (state.latitude != null && state.longitude != null) count++;
    return count;
  }

  Widget _buildSectionTitle(String title, {IconData? icon}) {
    return Row(
      children: [
        if (icon != null) ...[
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: ColorsManager.mainColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              icon,
              size: 16.sp,
              color: ColorsManager.mainColor,
            ),
          ),
          horizontalSpace(8),
        ],
        Text(
          title,
          style: TextStyles.font16BlackSemiBold,
        ),
      ],
    );
  }

  Widget _buildCountryDropdown() {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) => previous.selectedCountry != current.selectedCountry,
      builder: (context, state) {
        return FutureBuilder<String>(
          future: _getUserCountry(),
          builder: (context, snapshot) {
            final userCountry = snapshot.data ?? 'مصر';
            final selectedCountry = state.selectedCountry ?? userCountry;

            return SearchableDropdown(
              items: LocationData.arabCountries,
              selectedItem: selectedCountry,
              onChanged: (country) {
                context.read<ItemsListCubit>().updateCountry(country);
              },
              hintText: 'اختر الدولة',
            );
          },
        );
      },
    );
  }

  Widget _buildCityDropdown() {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) =>
          previous.selectedCity != current.selectedCity ||
          previous.selectedCountry != current.selectedCountry,
      builder: (context, state) {
        return FutureBuilder<String>(
          future: _getUserCountry(),
          builder: (context, snapshot) {
            final userCountry = snapshot.data ?? 'مصر';
            final country = state.selectedCountry ?? userCountry;

            return SearchableDropdown(
              items: LocationData.getCitiesByCountry(country),
              selectedItem: state.selectedCity,
              onChanged: (city) {
                context.read<ItemsListCubit>().updateCity(city);
              },
              hintText: 'اختر ${LocationData.getAdministrativeDivisionType(country)}',
            );
          },
        );
      },
    );
  }

  Future<String> _getUserCountry() async {
    final user = await getIt<AuthService>().getUserData();
    return user?.country ?? 'مصر';
  }

  Widget _buildCategoryDropdown() {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..getCategories(),
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, categoriesState) {
          return BlocBuilder<ItemsListCubit, ItemsListState>(
            buildWhen: (previous, current) => previous.categoryId != current.categoryId,
            builder: (context, itemsState) {
              String selectedName = 'الكل';
              categoriesState.maybeWhen(
                success: (categories) {
                  if (itemsState.categoryId != null) {
                    try {
                      final selected = categories.firstWhere(
                        (cat) => cat.id == itemsState.categoryId,
                      );
                      selectedName = selected.name;
                    } catch (e) {
                      selectedName = 'الكل';
                    }
                  }
                },
                orElse: () {},
              );

              return GestureDetector(
                onTap: () => _showCategoriesDialog(
                  context,
                  categoriesState.maybeWhen(
                    success: (categories) => categories,
                    orElse: () => [],
                  ),
                  categoriesState.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  itemsState.categoryId,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: ColorsManager.borderColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedName,
                        style: itemsState.categoryId == null
                            ? TextStyles.hintText
                            : TextStyles.font14BlackMedium,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                        color: ColorsManager.textSecondary,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showCategoriesDialog(
    BuildContext context,
    List categories,
    bool isLoading,
    String? selectedCategoryId,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (sheetContext) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          children: [
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
            Text(
              'اختر التصنيف',
              style: TextStyles.font18BlackSemiBold,
            ),
            verticalSpace(16),
            Divider(height: 1, color: ColorsManager.dividerColor),
            Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.mainColor,
                      ),
                    )
                  : ListView.separated(
                      padding: EdgeInsets.all(16.w),
                      itemCount: categories.length + 1, // +1 for "الكل"
                      separatorBuilder: (context, index) => verticalSpace(8),
                      itemBuilder: (sheetContext, index) {
                        // First item is "الكل"
                        if (index == 0) {
                          final isSelected = selectedCategoryId == null;
                          return GestureDetector(
                            onTap: () {
                              context.read<ItemsListCubit>().updateCategory(null);
                              Navigator.pop(sheetContext);
                            },
                            child: Container(
                              padding: EdgeInsets.all(16.w),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? ColorsManager.mainColor.withValues(alpha: 0.1)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: isSelected
                                      ? ColorsManager.mainColor
                                      : ColorsManager.borderColor,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.apps,
                                    size: 32.sp,
                                    color: ColorsManager.mainColor,
                                  ),
                                  horizontalSpace(12),
                                  Expanded(
                                    child: Text(
                                      'الكل',
                                      style: TextStyles.font16BlackMedium,
                                    ),
                                  ),
                                  if (isSelected)
                                    Icon(
                                      Icons.check_circle,
                                      size: 20.sp,
                                      color: ColorsManager.mainColor,
                                    ),
                                ],
                              ),
                            ),
                          );
                        }

                        final category = categories[index - 1];
                        final isSelected = category.id == selectedCategoryId;

                        return GestureDetector(
                          onTap: () {
                            context.read<ItemsListCubit>().updateCategory(category.id);
                            Navigator.pop(sheetContext);
                          },
                          child: Container(
                            padding: EdgeInsets.all(16.w),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? ColorsManager.mainColor.withValues(alpha: 0.1)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: isSelected
                                    ? ColorsManager.mainColor
                                    : ColorsManager.borderColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.category,
                                  size: 32.sp,
                                  color: ColorsManager.mainColor,
                                ),
                                horizontalSpace(12),
                                Expanded(
                                  child: Text(
                                    category.name,
                                    style: TextStyles.font16BlackMedium,
                                  ),
                                ),
                                if (isSelected)
                                  Icon(
                                    Icons.check_circle,
                                    size: 20.sp,
                                    color: ColorsManager.mainColor,
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationPicker() {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) =>
          previous.latitude != current.latitude ||
          previous.longitude != current.longitude ||
          previous.radiusKm != current.radiusKm,
      builder: (context, state) {
        final hasLocation = state.latitude != null && state.longitude != null;

        return Column(
          children: [
            GestureDetector(
              onTap: () async {
                final result = await showDialog<Map<String, double>>(
                  context: context,
                  builder: (context) => LocationPickerDialog(
                    initialLatitude: state.latitude,
                    initialLongitude: state.longitude,
                    initialRadius: state.radiusKm,
                  ),
                );

                if (result != null && context.mounted) {
                  context.read<ItemsListCubit>().updateLocation(
                        result['latitude'],
                        result['longitude'],
                        result['radius']!,
                      );
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: hasLocation
                      ? ColorsManager.mainColor.withValues(alpha: 0.1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: hasLocation
                        ? ColorsManager.mainColor
                        : ColorsManager.borderColor,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      hasLocation ? Icons.location_on : Icons.location_on_outlined,
                      color: hasLocation
                          ? ColorsManager.mainColor
                          : ColorsManager.textSecondary,
                      size: 20.sp,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        hasLocation
                            ? 'الموقع محدد (${state.radiusKm.toStringAsFixed(1)} كم)'
                            : 'اضغط لتحديد الموقع على الخريطة',
                        style: TextStyles.font14BlackMedium.copyWith(
                          color: hasLocation
                              ? ColorsManager.mainColor
                              : ColorsManager.textSecondary,
                        ),
                      ),
                    ),
                    if (hasLocation)
                      GestureDetector(
                        onTap: () {
                          context.read<ItemsListCubit>().clearLocation();
                        },
                        child: Icon(
                          Icons.close,
                          size: 18.sp,
                          color: ColorsManager.textSecondary,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPriceRange() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              controller: _minPriceController,
              keyboardType: TextInputType.number,
              style: TextStyles.font14BlackMedium,
              decoration: InputDecoration(
                hintText: 'من',
                hintStyle: TextStyles.hintText,
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: ColorsManager.textSecondary,
                  size: 20.sp,
                ),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: ColorsManager.borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: ColorsManager.mainColor, width: 1.5),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
              ),
              onChanged: (value) {
                context.read<ItemsListCubit>().updatePriceRange(
                  value,
                  _maxPriceController.text,
                );
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: 20.w,
            height: 1.5.h,
            color: ColorsManager.borderColor,
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              controller: _maxPriceController,
              keyboardType: TextInputType.number,
              style: TextStyles.font14BlackMedium,
              decoration: InputDecoration(
                hintText: 'إلى',
                hintStyle: TextStyles.hintText,
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: ColorsManager.textSecondary,
                  size: 20.sp,
                ),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: ColorsManager.borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: ColorsManager.mainColor, width: 1.5),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
              ),
              onChanged: (value) {
                context.read<ItemsListCubit>().updatePriceRange(
                  _minPriceController.text,
                  value,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildConditionSelector() {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) => previous.condition != current.condition,
      builder: (context, state) {
        return Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: ItemCondition.values.map((entry) {
            final isSelected = state.condition == entry;
            return GestureDetector(
              onTap: () {
                context.read<ItemsListCubit>().updateCondition(
                  isSelected ? null : entry,
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? ColorsManager.mainColor
                      : Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                  border: Border.all(
                    color: isSelected
                        ? ColorsManager.mainColor
                        : ColorsManager.borderColor,
                    width: isSelected ? 1.5 : 1,
                  ),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: ColorsManager.mainColor.withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 4,
                            offset: const Offset(0, 1),
                          ),
                        ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isSelected)
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Icon(
                          Icons.check_circle,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    Text(
                      entry.displayName,
                      style: TextStyles.font14BlackMedium.copyWith(
                        color: isSelected ? Colors.white : ColorsManager.textPrimary,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildFreeOnlyToggle() {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) => previous.isFreeOnly != current.isFreeOnly,
      builder: (context, state) {
        final isActive = state.isFreeOnly;

        return GestureDetector(
          onTap: () {
            context.read<ItemsListCubit>().toggleFreeOnly();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: isActive
                  ? ColorsManager.mainColor.withValues(alpha: 0.08)
                  : Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: isActive
                    ? ColorsManager.mainColor
                    : ColorsManager.borderColor,
                width: isActive ? 1.5 : 1,
              ),
              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: ColorsManager.mainColor.withValues(alpha: 0.15),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: isActive
                        ? ColorsManager.mainColor
                        : ColorsManager.borderColor.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.card_giftcard,
                    size: 20.sp,
                    color: isActive ? Colors.white : ColorsManager.textSecondary,
                  ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'العناصر المجانية فقط',
                        style: TextStyles.font14BlackMedium.copyWith(
                          fontSize: 15.sp,
                          color: isActive
                              ? ColorsManager.mainColor
                              : ColorsManager.textPrimary,
                          fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                        ),
                      ),
                      if (isActive) ...[
                        verticalSpace(2),
                        Text(
                          'يتم عرض العناصر المجانية فقط',
                          style: TextStyles.font12BlackMedium.copyWith(
                            color: ColorsManager.textSecondary,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Switch(
                  value: state.isFreeOnly,
                  onChanged: (value) {
                    context.read<ItemsListCubit>().toggleFreeOnly();
                  },
                  activeTrackColor: ColorsManager.mainColor,
                  activeThumbColor: Colors.white,
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
      '${SortBy.createdAt.name}-${SortOrder.desc.name}': {'label': 'الأحدث', 'icon': Icons.new_releases_outlined},
      '${SortBy.createdAt.name}-${SortOrder.asc.name}': {'label': 'الأقدم', 'icon': Icons.history},
      '${SortBy.views.name}-${SortOrder.desc.name}': {'label': 'الأكثر مشاهدة', 'icon': Icons.visibility_outlined},
      '${SortBy.favoritesCount.name}-${SortOrder.desc.name}': {'label': 'الأكثر تفضيلاً', 'icon': Icons.favorite_outline},
      '${SortBy.price.name}-${SortOrder.asc.name}': {'label': 'الأقل سعرًا', 'icon': Icons.arrow_downward},
      '${SortBy.price.name}-${SortOrder.desc.name}': {'label': 'الأعلى سعرًا', 'icon': Icons.arrow_upward},
    };

    return BlocBuilder<ItemsListCubit, ItemsListState>(
      buildWhen: (previous, current) =>
      previous.sortBy != current.sortBy || previous.sortOrder != current.sortOrder,
      builder: (context, state) {
        final currentSort = '${state.sortBy.name}-${state.sortOrder.name}';

        return Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: sortOptions.entries.map((entry) {
            final isSelected = currentSort == entry.key;
            final label = entry.value['label'] as String;
            final icon = entry.value['icon'] as IconData;

            return GestureDetector(
              onTap: () {
                final parts = entry.key.split('-');
                final sortBy = SortBy.values.firstWhere((e) => e.name == parts[0]);
                final sortOrder = SortOrder.values.firstWhere((e) => e.name == parts[1]);

                context.read<ItemsListCubit>().updateSort(sortBy, sortOrder);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? ColorsManager.mainColor
                      : Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                  border: Border.all(
                    color: isSelected
                        ? ColorsManager.mainColor
                        : ColorsManager.borderColor,
                    width: isSelected ? 1.5 : 1,
                  ),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: ColorsManager.mainColor.withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 4,
                            offset: const Offset(0, 1),
                          ),
                        ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 16.sp,
                      color: isSelected ? Colors.white : ColorsManager.textSecondary,
                    ),
                    horizontalSpace(6),
                    Text(
                      label,
                      style: TextStyles.font14BlackMedium.copyWith(
                        color: isSelected ? Colors.white : ColorsManager.textPrimary,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}