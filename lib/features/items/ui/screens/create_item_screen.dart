// features/items/ui/screens/create_item_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/services/auth_service.dart';
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
import '../widgets/governorate_selector.dart';

class CreateItemScreen extends StatelessWidget {
  const CreateItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt<AuthService>().isLoggedIn(),
      builder: (context, asyncSnapshot) {
        if (!asyncSnapshot.hasData) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (asyncSnapshot.data == false) {
          return const SizedBox.shrink();
        }else {
          return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<CreateItemCubit>()..getCurrentLocation()),
            BlocProvider(create: (context) => getIt<CategoriesCubit>()..getCategories()),
          ],
          child: const _CreateItemScreenBody(),
        );
        }
      }
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
  final int _maxDescriptionLength = 500;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Widget _buildSectionHeader({
    required String title,
    required IconData icon,
    bool isRequired = false,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: ColorsManager.mainColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            icon,
            size: 20.sp,
            color: ColorsManager.mainColor,
          ),
        ),
        horizontalSpace(12),
        Text(
          title,
          style: TextStyles.font16BlackSemiBold,
        ),
        if (isRequired) ...[
          horizontalSpace(4),
          Text(
            '*',
            style: TextStyles.font16BlackSemiBold.copyWith(
              color: ColorsManager.error,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required Function(String) onChanged,
    int maxLines = 1,
    int? maxLength,
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.hintText,
        filled: true,
        fillColor: Colors.white,
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
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: maxLines > 1 ? 16.h : 14.h,
        ),
        counterStyle: TextStyles.font12BlackMedium.copyWith(
          color: ColorsManager.textSecondary,
        ),
      ),
    );
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
          shadowColor: ColorsManager.shadowColor,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      ColorsManager.mainColor,
                      ColorsManager.mainColorLight,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 24.sp,
                ),
              ),
              horizontalSpace(12),
              Text(
                'إضافة إعلان جديد',
                style: TextStyles.font20BlackBold,
              ),
            ],
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    ColorsManager.borderColor,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ),
        body: BlocConsumer<CreateItemCubit, CreateItemState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.white,
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Text(
                          state.error!,
                          style: TextStyles.font14WhiteMedium,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: ColorsManager.error,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  margin: EdgeInsets.all(16.w),
                ),
              );
            }

            if (state.createdItem != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Text(
                          'تم إضافة الإعلان بنجاح',
                          style: TextStyles.font14WhiteMedium,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: ColorsManager.success,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  margin: EdgeInsets.all(16.w),
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
                      // Images Section
                      _buildSectionHeader(
                        title: 'صور الإعلان',
                        icon: Icons.image_outlined,
                        isRequired: true,
                      ),
                      verticalSpace(12),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorsManager.borderColor),
                        ),
                        padding: EdgeInsets.all(12.w),
                        child: ImagePickerWidget(
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
                      ),
                      verticalSpace(24),

                      // Title Section
                      _buildSectionHeader(
                        title: 'عنوان الإعلان',
                        icon: Icons.title,
                        isRequired: true,
                      ),
                      verticalSpace(12),
                      _buildTextField(
                        controller: _titleController,
                        hintText: 'مثال: iPhone 13 Pro Max',
                        onChanged: (value) {
                          context.read<CreateItemCubit>().updateTitle(value);
                        },
                      ),
                      verticalSpace(24),

                      // Description Section
                      _buildSectionHeader(
                        title: 'الوصف',
                        icon: Icons.description_outlined,
                        isRequired: true,
                      ),
                      verticalSpace(12),
                      _buildTextField(
                        controller: _descriptionController,
                        hintText: 'اكتب وصف تفصيلي للمنتج...',
                        onChanged: (value) {
                          context.read<CreateItemCubit>().updateDescription(value);
                        },
                        maxLines: 5,
                        maxLength: _maxDescriptionLength,
                      ),
                      verticalSpace(24),

                      // Category Section
                      _buildSectionHeader(
                        title: 'التصنيف',
                        icon: Icons.category_outlined,
                        isRequired: true,
                      ),
                      verticalSpace(12),
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

                      // Condition Section
                      _buildSectionHeader(
                        title: 'الحالة',
                        icon: Icons.star_outline,
                        isRequired: true,
                      ),
                      verticalSpace(12),
                      ConditionSelector(
                        selectedCondition: state.condition,
                        onConditionSelected: (condition) {
                          context.read<CreateItemCubit>().updateCondition(condition);
                        },
                      ),
                      verticalSpace(24),

                      // City Section
                      _buildSectionHeader(
                        title: 'المحافظة',
                        icon: Icons.location_city_outlined,
                        isRequired: true,
                      ),
                      verticalSpace(12),
                      GovernorateSelector(
                        country: state.country,
                        selectedGovernorate: state.city,
                        onGovernorateSelected: (governorate) {
                          if (governorate != null) {
                            context.read<CreateItemCubit>().updateCity(governorate);
                          }
                        },
                      ),
                      verticalSpace(16),

                      // Location Section
                      BlocBuilder<CreateItemCubit, CreateItemState>(
                        buildWhen: (previous, current) =>
                        previous.geoLat != current.geoLat ||
                            previous.geoLng != current.geoLng,
                        builder: (context, state) {
                          final hasLocation = state.geoLat != null && state.geoLng != null;

                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: hasLocation
                                    ? ColorsManager.success.withOpacity(0.3)
                                    : ColorsManager.borderColor,
                              ),
                            ),
                            padding: EdgeInsets.all(16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: ColorsManager.mainColor,
                                      size: 20.sp,
                                    ),
                                    horizontalSpace(8),
                                    Text(
                                      'الموقع الجغرافي',
                                      style: TextStyles.font14BlackSemiBold,
                                    ),
                                    if (!hasLocation) ...[
                                      horizontalSpace(4),
                                      Text(
                                        '(اختياري)',
                                        style: TextStyles.font12BlackMedium.copyWith(
                                          color: ColorsManager.textSecondary,
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                                if (!hasLocation) ...[
                                  verticalSpace(8),
                                  Container(
                                    padding: EdgeInsets.all(10.w),
                                    decoration: BoxDecoration(
                                      color: ColorsManager.warning.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.info_outline,
                                          color: ColorsManager.warning,
                                          size: 18.sp,
                                        ),
                                        horizontalSpace(8),
                                        Expanded(
                                          child: Text(
                                            'يُفضل تحديد موقعك لزيادة ظهور إعلانك',
                                            style: TextStyles.font12BlackMedium.copyWith(
                                              color: ColorsManager.warning,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                verticalSpace(12),
                                GestureDetector(
                                  onTap: () {
                                    context.read<CreateItemCubit>().getCurrentLocation();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                      vertical: 14.h,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: hasLocation
                                          ? null
                                          : LinearGradient(
                                              colors: [
                                                ColorsManager.mainColor,
                                                ColorsManager.mainColorLight,
                                              ],
                                            ),
                                      color: hasLocation ? ColorsManager.success : null,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          hasLocation
                                              ? Icons.check_circle
                                              : Icons.my_location,
                                          size: 20.sp,
                                          color: Colors.white,
                                        ),
                                        horizontalSpace(8),
                                        Text(
                                          hasLocation
                                              ? 'تم تحديد الموقع بنجاح'
                                              : 'تحديد موقعي الحالي',
                                          style: TextStyles.font14WhiteSemiBold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      verticalSpace(24),

                      // Price Section
                      _buildSectionHeader(
                        title: 'السعر',
                        icon: Icons.monetization_on_outlined,
                        isRequired: true,
                      ),
                      verticalSpace(12),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorsManager.borderColor),
                        ),
                        padding: EdgeInsets.all(16.w),
                        child: PriceInputWidget(
                          price: state.price,
                          isFree: state.isFree,
                          onPriceChanged: (price) {
                            context.read<CreateItemCubit>().updatePrice(price);
                          },
                          onIsFreeChanged: (isFree) {
                            context.read<CreateItemCubit>().toggleIsFree(isFree);
                          },
                        ),
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: ColorsManager.shadowColor.withOpacity(0.15),
                          blurRadius: 20,
                          offset: const Offset(0, -5),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    child: SafeArea(
                      top: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Upload progress indicator
                          if (state.isUploadingImages) ...[
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: ColorsManager.mainColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 16.w,
                                    height: 16.h,
                                    child: CircularProgressIndicator(
                                      color: ColorsManager.mainColor,
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  horizontalSpace(8),
                                  Text(
                                    'جاري رفع الصور...',
                                    style: TextStyles.font12BlackMedium.copyWith(
                                      color: ColorsManager.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            verticalSpace(8),
                          ],

                          // Submit Button
                          GestureDetector(
                            onTap: state.isSubmitting || state.isUploadingImages
                                ? null
                                : () {
                              context.read<CreateItemCubit>().submitItem();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              decoration: BoxDecoration(
                                gradient: state.isSubmitting || state.isUploadingImages
                                    ? null
                                    : const LinearGradient(
                                        colors: [
                                          ColorsManager.mainColor,
                                          ColorsManager.mainColorLight,
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                color: state.isSubmitting || state.isUploadingImages
                                    ? ColorsManager.mainColor.withOpacity(0.4)
                                    : null,
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow: state.isSubmitting || state.isUploadingImages
                                    ? null
                                    : [
                                        BoxShadow(
                                          color: ColorsManager.mainColor.withOpacity(0.3),
                                          blurRadius: 12,
                                          offset: const Offset(0, 4),
                                        ),
                                      ],
                              ),
                              child: Center(
                                child: state.isSubmitting
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
                                      'جاري النشر...',
                                      style: TextStyles.font16WhiteSemiBold,
                                    ),
                                  ],
                                )
                                    : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.publish,
                                      color: Colors.white,
                                      size: 22.sp,
                                    ),
                                    horizontalSpace(8),
                                    Text(
                                      'نشر الإعلان',
                                      style: TextStyles.font16WhiteSemiBold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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