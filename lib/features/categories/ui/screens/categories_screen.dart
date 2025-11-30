import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/category_model.dart';
import '../../logic/categories_cubit/categories_cubit.dart';
import '../../logic/categories_cubit/categories_state.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..getCategories(),
      child: const _CategoriesScreenBody(),
    );
  }
}

class _CategoriesScreenBody extends StatelessWidget {
  const _CategoriesScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'الأقسام',
          style: TextStyles.font20BlackBold,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainColor,
              ),
            ),
            success: (categories) => _CategoriesGrid(categories: categories),
            error: (message) => _ErrorWidget(
              message: message,
              onRetry: () => context.read<CategoriesCubit>().getCategories(),
            ),
          );
        },
      ),
    );
  }
}

class _CategoriesGrid extends StatelessWidget {
  final List<CategoryModel> categories;

  const _CategoriesGrid({required this.categories});

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.category_outlined,
              size: 80.sp,
              color: ColorsManager.iconTertiary,
            ),
            verticalSpace(16),
            Text(
              'لا توجد أقسام',
              style: TextStyles.font16GreyRegular,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 1.1,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return _CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const _CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to category items
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.shadowColor,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon or Image
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: ColorsManager.mainColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: category.iconUrl != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        category.iconUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return _buildDefaultIcon();
                        },
                      ),
                    )
                  : _buildDefaultIcon(),
            ),
            verticalSpace(12),
            // Category Name
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                category.name,
                style: TextStyles.font14BlackSemiBold,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            verticalSpace(4),
            // Items Count
            if (category.count != null)
              Text(
                '${category.count!.items} إعلان',
                style: TextStyles.font12GreyRegular,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultIcon() {
    return Icon(
      Icons.category,
      size: 30.sp,
      color: ColorsManager.mainColor,
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
