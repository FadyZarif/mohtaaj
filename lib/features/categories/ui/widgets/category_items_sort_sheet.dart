import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../items/data/models/items_queries.dart';
import '../../logic/category_items_cubit/category_items_cubit.dart';
import '../../logic/category_items_cubit/category_items_state.dart';

class CategoryItemsSortSheet extends StatelessWidget {
  const CategoryItemsSortSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ترتيب حسب',
            style: TextStyles.font18BlackSemiBold,
          ),
          verticalSpace(16),
          BlocBuilder<CategoryItemsCubit, CategoryItemsState>(
            builder: (context, state) {
              return Column(
                children: [
                  _SortOption(
                    title: 'الأحدث',
                    isSelected: state.sortBy == SortBy.createdAt &&
                        state.sortOrder == SortOrder.desc,
                    onTap: () {
                      context
                          .read<CategoryItemsCubit>()
                          .changeSort(SortBy.createdAt, SortOrder.desc);
                      Navigator.pop(context);
                    },
                  ),
                  _SortOption(
                    title: 'الأقدم',
                    isSelected: state.sortBy == SortBy.createdAt &&
                        state.sortOrder == SortOrder.asc,
                    onTap: () {
                      context
                          .read<CategoryItemsCubit>()
                          .changeSort(SortBy.createdAt, SortOrder.asc);
                      Navigator.pop(context);
                    },
                  ),
                  _SortOption(
                    title: 'الأكثر مشاهدة',
                    isSelected: state.sortBy == SortBy.views,
                    onTap: () {
                      context
                          .read<CategoryItemsCubit>()
                          .changeSort(SortBy.views, SortOrder.desc);
                      Navigator.pop(context);
                    },
                  ),
                  _SortOption(
                    title: 'الأكثر إضافة للمفضلة',
                    isSelected: state.sortBy == SortBy.favoritesCount,
                    onTap: () {
                      context
                          .read<CategoryItemsCubit>()
                          .changeSort(SortBy.favoritesCount, SortOrder.desc);
                      Navigator.pop(context);
                    },
                  ),
                  _SortOption(
                    title: 'السعر: من الأقل إلى الأعلى',
                    isSelected: state.sortBy == SortBy.price &&
                        state.sortOrder == SortOrder.asc,
                    onTap: () {
                      context
                          .read<CategoryItemsCubit>()
                          .changeSort(SortBy.price, SortOrder.asc);
                      Navigator.pop(context);
                    },
                  ),
                  _SortOption(
                    title: 'السعر: من الأعلى إلى الأقل',
                    isSelected: state.sortBy == SortBy.price &&
                        state.sortOrder == SortOrder.desc,
                    onTap: () {
                      context
                          .read<CategoryItemsCubit>()
                          .changeSort(SortBy.price, SortOrder.desc);
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SortOption extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const _SortOption({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorsManager.borderColor,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: isSelected
                  ? TextStyles.font14CyanMedium
                  : TextStyles.font14BlackRegular,
            ),
            if (isSelected)
              const Icon(
                Icons.check,
                color: ColorsManager.mainColor,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}
