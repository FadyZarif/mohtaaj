// lib/features/profile/ui/screens/my_items_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/items_grid.dart';
import '../../../items/data/models/item_model.dart';
import '../../logic/my_items_cubit/my_items_cubit.dart';
import '../../logic/my_items_cubit/my_items_state.dart';

class MyItemsScreen extends StatelessWidget {
  const MyItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MyItemsCubit>()..loadMyItems(isRefresh: true),
      child: const _MyItemsScreenBody(), // ✅ منفصل في widget تاني
    );
  }
}

class _MyItemsScreenBody extends StatefulWidget {
  const _MyItemsScreenBody();

  @override
  State<_MyItemsScreenBody> createState() => _MyItemsScreenBodyState();
}

class _MyItemsScreenBodyState extends State<_MyItemsScreenBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      context.read<MyItemsCubit>().loadMyItems();
    }
  }

  @override
  void dispose() {
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
          'إعلاناتي',
          style: TextStyles.font18BlackSemiBold,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: ColorsManager.mainColor),
            onPressed: () {
              context.pushNamed(Routes.createItemScreen);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _buildStatusTabs(),
          Expanded(
            child: BlocBuilder<MyItemsCubit, MyItemsState>(
              builder: (context, state) {
                return RefreshIndicator(
                  color: ColorsManager.mainColor,
                  onRefresh: () async {
                    context.read<MyItemsCubit>().refresh();
                  },
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: ItemsGrid(
                      items: state.filteredItems,
                      isLoading: state.isLoading || state.isLoadingMore,
                      error: state.error,
                      onRetry: () => context.read<MyItemsCubit>().refresh(),
                      onItemTap: (item) {
                        _showItemOptions(context, item);
                      },
                      resultCountText: 'الإعلانات (${state.filteredItems.length})',
                      emptyMessage: _getEmptyMessage(state.selectedStatus),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTabs() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: BlocBuilder<MyItemsCubit, MyItemsState>(
        buildWhen: (previous, current) =>
        previous.selectedStatus != current.selectedStatus,
        builder: (context, state) {
          return SizedBox(
            height: 40.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                _buildStatusTab('الكل', null, state.selectedStatus),
                horizontalSpace(8),
                ...ItemStatus.values.map((status) {
                  return Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: _buildStatusTab(
                      status.displayName,
                      status,
                      state.selectedStatus,
                    ),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatusTab(String label, ItemStatus? status, ItemStatus? selectedStatus) {
    final isSelected = selectedStatus == status;
    return GestureDetector(
      onTap: () {
        context.read<MyItemsCubit>().changeStatus(status);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.mainColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? ColorsManager.mainColor : ColorsManager.borderColor,
          ),
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyles.font14BlackMedium.copyWith(
              color: isSelected ? Colors.white : ColorsManager.textPrimary,
            ),
          ),
        ),
      ),
    );
  }

  String _getEmptyMessage(ItemStatus? status) {
    if (status == null) return 'لا توجد إعلانات';

    switch (status) {
      case ItemStatus.active:
        return 'لا توجد إعلانات نشطة';
      case ItemStatus.pending:
        return 'لا توجد إعلانات معلقة';
      case ItemStatus.closed:
        return 'لا توجد إعلانات مغلقة';
      case ItemStatus.reported:
        return 'لا توجد إعلانات مبلغ عنها';
    }
  }

  void _showItemOptions(BuildContext context, ItemModel item) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (sheetContext) => Container(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle
            Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: ColorsManager.borderColor,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            verticalSpace(16),

            // View Details
            ListTile(
              leading: const Icon(Icons.visibility, color: ColorsManager.mainColor),
              title: Text('عرض التفاصيل', style: TextStyles.font16BlackMedium),
              onTap: () {
                Navigator.pop(sheetContext);
                context.pushNamed(
                  Routes.itemDetailsScreen,
                  arguments: item.id,
                );
              },
            ),

            // Edit (only for pending/active)
            if (item.status == ItemStatus.pending ||
                item.status == ItemStatus.active)
              ListTile(
                leading: const Icon(Icons.edit, color: ColorsManager.mainColor),
                title: Text('تعديل', style: TextStyles.font16BlackMedium),
                onTap: () {
                  Navigator.pop(sheetContext);
                  context.pushNamed(
                    Routes.editItemScreen,
                    arguments: item,
                  );
                },
              ),

            // Close/Reopen
            if (item.status == ItemStatus.active)
              ListTile(
                leading: const Icon(Icons.close, color: Colors.orange),
                title: Text(
                  'إغلاق الإعلان',
                  style: TextStyles.font16BlackMedium.copyWith(
                    color: Colors.orange,
                  ),
                ),
                onTap: () {
                  Navigator.pop(sheetContext);
                  _showCloseConfirmation(context, item);
                },
              ),

            // if (item.status == ItemStatus.closed)
              // ListTile(
              //   leading: const Icon(Icons.restart_alt, color: ColorsManager.success),
              //   title: Text(
              //     'إعادة فتح الإعلان',
              //     style: TextStyles.font16BlackMedium.copyWith(
              //       color: ColorsManager.success,
              //     ),
              //   ),
              //   onTap: () {
              //     Navigator.pop(sheetContext);
              //     _showReopenConfirmation(context, item);
              //   },
              // ),

            // Delete
            ListTile(
              leading: const Icon(Icons.delete, color: ColorsManager.error),
              title: Text(
                'حذف',
                style: TextStyles.font16BlackMedium.copyWith(
                  color: ColorsManager.error,
                ),
              ),
              onTap: () {
                Navigator.pop(sheetContext);
                _showDeleteConfirmation(context, item);
              },
            ),

            verticalSpace(16),
          ],
        ),
      ),
    );
  }

  // في _MyItemsScreenBodyState - أضف:

  void _showCloseConfirmation(BuildContext context, ItemModel item) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('إغلاق الإعلان', style: TextStyles.font18BlackSemiBold),
        content: Text(
          'هل تريد إغلاق "${item.title}"؟\nسيتم إخفاء الإعلان من البحث ولن يتمكن المستخدمون من رؤيته.',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('إلغاء', style: TextStyles.font14BlackMedium),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(dialogContext);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text('جاري الإغلاق...', style: TextStyles.font14WhiteMedium),
                    ],
                  ),
                  backgroundColor: ColorsManager.mainColor,
                  duration: const Duration(seconds: 2),
                ),
              );

              try {
                await context.read<MyItemsCubit>().closeItem(item.id);

                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تم إغلاق الإعلان بنجاح',
                        style: TextStyles.font14WhiteMedium,
                      ),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'فشل إغلاق الإعلان',
                        style: TextStyles.font14WhiteMedium,
                      ),
                      backgroundColor: ColorsManager.error,
                    ),
                  );
                }
              }
            },
            child: Text(
              'إغلاق',
              style: TextStyles.font14BlackMedium.copyWith(
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }

/*  void _showReopenConfirmation(BuildContext context, ItemModel item) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('إعادة فتح الإعلان', style: TextStyles.font18BlackSemiBold),
        content: Text(
          'هل تريد إعادة فتح "${item.title}"؟\nسيظهر الإعلان مرة أخرى في نتائج البحث.',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('إلغاء', style: TextStyles.font14BlackMedium),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(dialogContext);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text('جاري إعادة الفتح...', style: TextStyles.font14WhiteMedium),
                    ],
                  ),
                  backgroundColor: ColorsManager.mainColor,
                  duration: const Duration(seconds: 2),
                ),
              );

              try {
                await context.read<MyItemsCubit>().reopenItem(item.id);

                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تم إعادة فتح الإعلان بنجاح',
                        style: TextStyles.font14WhiteMedium,
                      ),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'فشل إعادة فتح الإعلان',
                        style: TextStyles.font14WhiteMedium,
                      ),
                      backgroundColor: ColorsManager.error,
                    ),
                  );
                }
              }
            },
            child: Text(
              'إعادة فتح',
              style: TextStyles.font14BlackMedium.copyWith(
                color: ColorsManager.success,
              ),
            ),
          ),
        ],
      ),
    );
  }*/
  void _showDeleteConfirmation(BuildContext context, ItemModel item) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('حذف الإعلان', style: TextStyles.font18BlackSemiBold),
        content: Text(
          'هل أنت متأكد من حذف "${item.title}"؟',
          style: TextStyles.font14GreyRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('إلغاء', style: TextStyles.font14BlackMedium),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(dialogContext);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text('جاري الحذف...', style: TextStyles.font14WhiteMedium),
                    ],
                  ),
                  backgroundColor: ColorsManager.mainColor,
                  duration: const Duration(seconds: 2),
                ),
              );

              try {
                await context.read<MyItemsCubit>().deleteItem(item.id);

                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تم حذف الإعلان بنجاح',
                        style: TextStyles.font14WhiteMedium,
                      ),
                      backgroundColor: ColorsManager.success,
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'فشل حذف الإعلان',
                        style: TextStyles.font14WhiteMedium,
                      ),
                      backgroundColor: ColorsManager.error,
                    ),
                  );
                }
              }
            },
            child: Text(
              'حذف',
              style: TextStyles.font14BlackMedium.copyWith(
                color: ColorsManager.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}