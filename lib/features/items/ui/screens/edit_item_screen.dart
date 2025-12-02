// lib/features/items/ui/screens/edit_item_screen.dart
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
import '../../data/models/item_model.dart';
import '../../logic/create_item_cubit/create_item_cubit.dart';
import '../../logic/create_item_cubit/create_item_state.dart';
import '../widgets/category_selector.dart';
import '../widgets/condition_selector.dart';
import '../widgets/price_input_widget.dart';

class EditItemScreen extends StatelessWidget {
  final ItemModel item;

  const EditItemScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CreateItemCubit>()..initEditMode(item)..getCurrentLocation(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoriesCubit>()..getCategories(),
        ),
      ],
      child: const _EditItemScreenBody(),
    );
  }
}

class _EditItemScreenBody extends StatefulWidget {
  const _EditItemScreenBody();

  @override
  State<_EditItemScreenBody> createState() => _EditItemScreenBodyState();
}

class _EditItemScreenBodyState extends State<_EditItemScreenBody> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _cityController;

  @override
  void initState() {
    super.initState();
    final state = context.read<CreateItemCubit>().state;
    _titleController = TextEditingController(text: state.title);
    _descriptionController = TextEditingController(text: state.description);
    _cityController = TextEditingController(text: state.city);
  }

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: ColorsManager.textPrimary),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'تعديل الإعلان',
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
                  content: Text('تم تحديث الإعلان بنجاح'),
                  backgroundColor: ColorsManager.success,
                ),
              );

              // Navigate back or to item details
              Navigator.pop(context);
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
                      // Existing Images
                      if (state.existingImageUrls.isNotEmpty) ...[
                        Text(
                          'الصور الحالية',
                          style: TextStyles.font16BlackSemiBold,
                        ),
                        verticalSpace(8),
                        SizedBox(
                          height: 100.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.existingImageUrls.length,
                            separatorBuilder: (context, index) => horizontalSpace(8),
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.r),
                                    child: Image.network(
                                      state.existingImageUrls[index],
                                      width: 100.w,
                                      height: 100.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 4.h,
                                    right: 4.w,
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<CreateItemCubit>()
                                            .removeExistingImage(index);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(4.w),
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          size: 16.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        verticalSpace(16),
                      ],

                      // New Images
                      if (state.selectedImages.isNotEmpty) ...[
                        Text(
                          'صور جديدة',
                          style: TextStyles.font16BlackSemiBold,
                        ),
                        verticalSpace(8),
                        SizedBox(
                          height: 100.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.selectedImages.length,
                            separatorBuilder: (context, index) => horizontalSpace(8),
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.r),
                                    child: Image.file(
                                      state.selectedImages[index],
                                      width: 100.w,
                                      height: 100.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 4.h,
                                    right: 4.w,
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<CreateItemCubit>()
                                            .removeImage(index);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(4.w),
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          size: 16.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        verticalSpace(16),
                      ],

                      // Add Images Buttons
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                context.read<CreateItemCubit>().pickImages();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                decoration: BoxDecoration(
                                  color: ColorsManager.mainColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: ColorsManager.mainColor,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_photo_alternate,
                                      color: ColorsManager.mainColor,
                                      size: 20.sp,
                                    ),
                                    horizontalSpace(8),
                                    Text(
                                      'إضافة صور',
                                      style: TextStyles.font14BlackMedium.copyWith(
                                        color: ColorsManager.mainColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          horizontalSpace(8),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                context.read<CreateItemCubit>().pickImageFromCamera();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                decoration: BoxDecoration(
                                  color: ColorsManager.mainColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: ColorsManager.mainColor,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      color: ColorsManager.mainColor,
                                      size: 20.sp,
                                    ),
                                    horizontalSpace(8),
                                    Text(
                                      'التقاط صورة',
                                      style: TextStyles.font14BlackMedium.copyWith(
                                        color: ColorsManager.mainColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
                            borderSide: BorderSide(
                                color: ColorsManager.mainColor, width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 14.h),
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
                            borderSide: BorderSide(
                                color: ColorsManager.mainColor, width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 14.h),
                        ),
                      ),
                      verticalSpace(24),

                      // Category
                      BlocBuilder<CategoriesCubit, CategoriesState>(
                        builder: (context, categoriesState) {
                          return categoriesState.when(
                            initial: () => const SizedBox.shrink(),
                            loading: () => const Center(
                              child: CircularProgressIndicator(
                                color: ColorsManager.mainColor,
                              ),
                            ),
                            success: (categories) => CategorySelector(
                              categories: categories,
                              selectedCategoryId: state.categoryId,
                              onCategorySelected: (categoryId) {
                                context.read<CreateItemCubit>().updateCategory(categoryId);
                              },
                              onLoadCategories: () {
                                context.read<CategoriesCubit>().getCategories();
                              },
                              isLoading: false,
                            ),
                            error: (message) => Text(
                              message,
                              style: TextStyles.font14GreyRegular,
                            ),
                          );
                        },
                      ),
                      verticalSpace(24),

                      // Condition
                      Text(
                        'حالة المنتج *',
                        style: TextStyles.font16BlackSemiBold,
                      ),
                      verticalSpace(8),
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
                            borderSide: BorderSide(
                                color: ColorsManager.mainColor, width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 14.h),
                        ),
                      ),
                      verticalSpace(24),

                      // Get Location Button
                      BlocBuilder<CreateItemCubit, CreateItemState>(
                        buildWhen: (previous, current) =>
                        previous.geoLat != current.geoLat ||
                            previous.geoLng != current.geoLng,
                        builder: (context, state) {
                          final hasLocation = state.geoLat != null && state.geoLng != null;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!hasLocation)
                                Container(
                                  padding: EdgeInsets.all(12.w),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(color: Colors.orange),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.info_outline, color: Colors.orange, size: 20.sp),
                                      horizontalSpace(8),
                                      Expanded(
                                        child: Text(
                                          'يُفضل تحديد موقعك لتحسين ظهور الإعلان',
                                          style: TextStyles.font12BlackMedium.copyWith(
                                            color: Colors.orange.shade700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (!hasLocation) verticalSpace(8),

                              GestureDetector(
                                onTap: () {
                                  context.read<CreateItemCubit>().getCurrentLocation();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                                  decoration: BoxDecoration(
                                    color: hasLocation
                                        ? ColorsManager.success.withOpacity(0.1)
                                        : ColorsManager.mainColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12.r),
                                    border: Border.all(
                                      color: hasLocation
                                          ? ColorsManager.success
                                          : ColorsManager.mainColor,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        hasLocation ? Icons.check_circle : Icons.my_location,
                                        size: 20.sp,
                                        color: hasLocation
                                            ? ColorsManager.success
                                            : ColorsManager.mainColor,
                                      ),
                                      horizontalSpace(8),
                                      Text(
                                        hasLocation ? 'تم تحديد الموقع ✓' : 'تحديد موقعي الحالي',
                                        style: TextStyles.font14BlackMedium.copyWith(
                                          color: hasLocation
                                              ? ColorsManager.success
                                              : ColorsManager.mainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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

                // Update Button
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
                          context.read<CreateItemCubit>().updateItem();
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
                                  state.isUploadingImages
                                      ? 'جاري رفع الصور...'
                                      : 'جاري التحديث...',
                                  style: TextStyles.font16WhiteSemiBold,
                                ),
                              ],
                            )
                                : Text(
                              'تحديث الإعلان',
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