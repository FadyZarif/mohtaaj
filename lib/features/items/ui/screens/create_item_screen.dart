// features/items/ui/screens/create_item_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../categories/logic/categories_cubit/categories_cubit.dart';
import '../../../categories/logic/categories_cubit/categories_state.dart';
import '../../logic/create_item_cubit/create_item_cubit.dart';
import '../../logic/create_item_cubit/create_item_state.dart';
import '../widgets/image_picker_widget.dart';
import '../widgets/category_selector.dart';
import '../widgets/condition_selector.dart';
import '../widgets/price_input_widget.dart';

class CreateItemScreen extends StatelessWidget {
  const CreateItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<CreateItemCubit>()..getCurrentLocation()),
        BlocProvider(create: (context) => getIt<CategoriesCubit>()..getCategories()),
      ],
      child: const _CreateItemScreenBody(),
    );
  }
}

class _CreateItemScreenBody extends StatefulWidget {
  const _CreateItemScreenBody();

  @override
  State<_CreateItemScreenBody> createState() => _CreateItemScreenBodyState();
}

class _CreateItemScreenBodyState extends State<_CreateItemScreenBody> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _cityController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorsManager.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'إضافة إعلان',
            style: TextStyles.font20BlackBold,
          ),
          centerTitle: true,
        ),
        body: BlocConsumer<CreateItemCubit, CreateItemState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error!),
                  backgroundColor: ColorsManager.error,
                ),
              );
            }

            if (state.createdItem != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('تم إضافة الإعلان بنجاح'),
                  backgroundColor: ColorsManager.success,
                ),
              );
              context.read<CreateItemCubit>().reset();

              // Navigator.pop(context);
              context.pushNamed(
                Routes.itemDetailsScreen,
                arguments: state.createdItem!.id,
              );
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Images
                      ImagePickerWidget(
                        images: state.selectedImages,
                        onPickImages: () {
                          context.read<CreateItemCubit>().pickImages();
                        },
                        onPickFromCamera: () {
                          context.read<CreateItemCubit>().pickImageFromCamera();
                        },
                        onRemoveImage: (index) {
                          context.read<CreateItemCubit>().removeImage(index);
                        },
                      ),
                      verticalSpace(24),

                      // Title
                      Text(
                        'العنوان *',
                        style: TextStyles.font16BlackSemiBold,
                      ),
                      verticalSpace(8),
                      TextField(
                        controller: _titleController,
                        onChanged: (value) {
                          context.read<CreateItemCubit>().updateTitle(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'مثال: iPhone 13 Pro Max',
                          hintStyle: TextStyles.hintText,
                          filled: true,
                          fillColor: ColorsManager.inputBackground,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.mainColor, width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                        ),
                      ),
                      verticalSpace(24),

                      // Description
                      Text(
                        'الوصف *',
                        style: TextStyles.font16BlackSemiBold,
                      ),
                      verticalSpace(8),
                      TextField(
                        controller: _descriptionController,
                        onChanged: (value) {
                          context.read<CreateItemCubit>().updateDescription(value);
                        },
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'اكتب وصف تفصيلي للمنتج...',
                          hintStyle: TextStyles.hintText,
                          filled: true,
                          fillColor: ColorsManager.inputBackground,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.mainColor, width: 2),
                          ),
                          contentPadding: EdgeInsets.all(16.w),
                        ),
                      ),
                      verticalSpace(24),

                      // Category
                      BlocBuilder<CategoriesCubit, CategoriesState>(
                        builder: (context, categoriesState) {
                          return categoriesState.when(
                            initial: () => const SizedBox.shrink(),
                            loading: () => CategorySelector(
                              selectedCategoryId: state.categoryId,
                              categories: const [],
                              onCategorySelected: (id) {
                                context.read<CreateItemCubit>().updateCategory(id);
                              },
                              onLoadCategories: () {
                                context.read<CategoriesCubit>().getCategories();
                              },
                              isLoading: true,
                            ),
                            success: (categories) => CategorySelector(
                              selectedCategoryId: state.categoryId,
                              categories: categories,
                              onCategorySelected: (id) {
                                context.read<CreateItemCubit>().updateCategory(id);
                              },
                              onLoadCategories: () {
                                context.read<CategoriesCubit>().getCategories();
                              },
                            ),
                            error: (message) => CategorySelector(
                              selectedCategoryId: state.categoryId,
                              categories: const [],
                              onCategorySelected: (id) {
                                context.read<CreateItemCubit>().updateCategory(id);
                              },
                              onLoadCategories: () {
                                context.read<CategoriesCubit>().getCategories();
                              },
                            ),
                          );
                        },
                      ),
                      verticalSpace(24),

                      // Condition
                      ConditionSelector(
                        selectedCondition: state.condition,
                        onConditionSelected: (condition) {
                          context.read<CreateItemCubit>().updateCondition(condition);
                        },
                      ),
                      verticalSpace(24),

                      // City
                      Text(
                        'المدينة *',
                        style: TextStyles.font16BlackSemiBold,
                      ),
                      verticalSpace(8),
                      TextField(
                        controller: _cityController,
                        onChanged: (value) {
                          context.read<CreateItemCubit>().updateCity(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'مثال: دمشق',
                          hintStyle: TextStyles.hintText,
                          filled: true,
                          fillColor: ColorsManager.inputBackground,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.borderColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: ColorsManager.mainColor, width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                        ),
                      ),
                      verticalSpace(12),

      // Get Location Button
                      BlocBuilder<CreateItemCubit, CreateItemState>(
                        buildWhen: (previous, current) =>
                        previous.geoLat != current.geoLat ||
                            previous.geoLng != current.geoLng,
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context.read<CreateItemCubit>().getCurrentLocation();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                              decoration: BoxDecoration(
                                color: state.geoLat != null && state.geoLng != null
                                    ? ColorsManager.success.withOpacity(0.1)
                                    : ColorsManager.mainColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(
                                  color: state.geoLat != null && state.geoLng != null
                                      ? ColorsManager.success
                                      : ColorsManager.mainColor,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    state.geoLat != null && state.geoLng != null
                                        ? Icons.check_circle
                                        : Icons.my_location,
                                    size: 20.sp,
                                    color: state.geoLat != null && state.geoLng != null
                                        ? ColorsManager.success
                                        : ColorsManager.mainColor,
                                  ),
                                  horizontalSpace(8),
                                  Text(
                                    state.geoLat != null && state.geoLng != null
                                        ? 'تم تحديد الموقع ✓'
                                        : 'تحديد موقعي الحالي',
                                    style: TextStyles.font14BlackMedium.copyWith(
                                      color: state.geoLat != null && state.geoLng != null
                                          ? ColorsManager.success
                                          : ColorsManager.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      verticalSpace(24),

                      // Price
                      PriceInputWidget(
                        price: state.price,
                        isFree: state.isFree,
                        onPriceChanged: (price) {
                          context.read<CreateItemCubit>().updatePrice(price);
                        },
                        onIsFreeChanged: (isFree) {
                          context.read<CreateItemCubit>().toggleIsFree(isFree);
                        },
                      ),
                      verticalSpace(100),
                    ],
                  ),
                ),

                // Submit Button
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: ColorsManager.shadowColor,
                          blurRadius: 8,
                          offset: const Offset(0, -2),
                        ),
                      ],
                    ),
                    child: SafeArea(
                      top: false,
                      child: GestureDetector(
                        onTap: state.isSubmitting || state.isUploadingImages
                            ? null
                            : () {
                          context.read<CreateItemCubit>().submitItem();
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          decoration: BoxDecoration(
                            color: state.isSubmitting || state.isUploadingImages
                                ? ColorsManager.mainColor.withOpacity(0.5)
                                : ColorsManager.mainColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Center(
                            child: state.isSubmitting || state.isUploadingImages
                                ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20.w,
                                  height: 20.h,
                                  child: const CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                ),
                                horizontalSpace(12),
                                Text(
                                  state.isUploadingImages ? 'جاري رفع الصور...' : 'جاري النشر...',
                                  style: TextStyles.font16WhiteSemiBold,
                                ),
                              ],
                            )
                                : Text(
                              'نشر الإعلان',
                              style: TextStyles.font16WhiteSemiBold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}