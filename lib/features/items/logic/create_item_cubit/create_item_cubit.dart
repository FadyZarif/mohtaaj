// features/items/logic/create_item_cubit/create_item_cubit.dart

import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/services/location_service.dart';
import '../../data/models/create_item_request.dart';
import '../../data/models/item_model.dart';
import '../../data/models/update_item_request.dart';
import 'create_item_state.dart';

class CreateItemCubit extends Cubit<CreateItemState> {
  final ApiService _apiService;
  final LocationService _locationService;
  final ImagePicker _imagePicker = ImagePicker();

  CreateItemCubit(this._apiService, this._locationService)
      : super(const CreateItemState());
  // Get current location
  Future<void> getCurrentLocation() async {
    emit(state.copyWith(error: null));

    try {
      final coordinates = await _locationService.getLocationCoordinates();

      if (coordinates != null) {
        emit(state.copyWith(
          geoLat: coordinates['lat'],
          geoLng: coordinates['lng'],
        ));
      } else {
        emit(state.copyWith(
          error: 'لم نتمكن من الحصول على موقعك. تأكد من تفعيل خدمة الموقع',
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        error: 'حدث خطأ في الحصول على الموقع',
      ));
    }
  }

  // Pick Images
  Future<void> pickImages() async {
    try {
      final List<XFile> images = await _imagePicker.pickMultiImage(
        imageQuality: 80,
      );

      if (images.isNotEmpty) {
        final files = images.map((xFile) => File(xFile.path)).toList();
        emit(state.copyWith(
          selectedImages: [...state.selectedImages, ...files],
        ));
      }
    } catch (e) {
      emit(state.copyWith(error: 'فشل اختيار الصور'));
    }
  }

  // Pick Single Image from Camera
  Future<void> pickImageFromCamera() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 80,
      );

      if (image != null) {
        final file = File(image.path);
        emit(state.copyWith(
          selectedImages: [...state.selectedImages, file],
        ));
      }
    } catch (e) {
      emit(state.copyWith(error: 'فشل التقاط الصورة'));
    }
  }

  // Remove Image
  void removeImage(int index) {
    final updatedImages = List<File>.from(state.selectedImages);
    updatedImages.removeAt(index);
    emit(state.copyWith(selectedImages: updatedImages));
  }

  // Update Form Fields
  void updateTitle(String title) {
    emit(state.copyWith(title: title, error: null));
  }

  void updateDescription(String description) {
    emit(state.copyWith(description: description, error: null));
  }

  void updateCategory(String categoryId) {
    emit(state.copyWith(categoryId: categoryId, error: null));
  }

  void updateCondition(ItemCondition condition) {
    emit(state.copyWith(condition: condition, error: null));
  }

  void updateCity(String city) {
    emit(state.copyWith(city: city, error: null));
  }


  void updateLocation(double lat, double lng) {
    emit(state.copyWith(geoLat: lat, geoLng: lng, error: null));
  }

  void updatePrice(String priceText) {
    if (priceText.isEmpty) {
      emit(state.copyWith(price: null, error: null));
      return;
    }

    final price = double.tryParse(priceText);
    if (price != null) {
      emit(state.copyWith(price: price, isFree: false, error: null));
    }
  }

  void toggleIsFree(bool isFree) {
    emit(state.copyWith(
      isFree: isFree,
      price: isFree ? null : state.price,
      error: null,
    ));
  }

  // Reset Form
  void reset() {
    emit(const CreateItemState());
  }

 // ========================== Edit Item Functionality ==========================

  // Initialize Edit Mode
  void initEditMode(ItemModel item) {
    emit(state.copyWith(
      isEditMode: true,
      editingItemId: item.id,
      title: item.title,
      description: item.description,
      categoryId: item.category.id,
      condition: item.condition,
      price: item.isFree ? null : (item.price != null ? double.tryParse(item.price!) : null),
      isFree: item.isFree,
      city: item.city,
      existingImageUrls: item.images,
      error: null,
    ));
  }

  // Remove existing image
  void removeExistingImage(int index) {
    final updatedImages = List<String>.from(state.existingImageUrls);
    updatedImages.removeAt(index);
    emit(state.copyWith(existingImageUrls: updatedImages));
  }

  // Submit Item (Create)
  Future<void> submitItem() async {
    if (!_validateCreateForm()) return;

    emit(state.copyWith(isSubmitting: true, error: null));

    try {
      // 1. Upload images
      emit(state.copyWith(isUploadingImages: true));
      final imageUrls = await _uploadImagesToCloudinary(state.selectedImages);
      emit(state.copyWith(isUploadingImages: false));

      if (imageUrls.isEmpty) {
        emit(state.copyWith(
          isSubmitting: false,
          error: 'فشل رفع الصور',
        ));
        return;
      }

      // 2. Create request
      final request = CreateItemRequest(
        title: state.title ?? '',
        description: state.description ?? '',
        categoryId: state.categoryId!,
        price: state.isFree ? null : state.price,
        isFree: state.isFree,
        condition: state.condition,
        images: imageUrls,
        city: state.city ?? '',
        geoLat: state.geoLat,
        geoLng: state.geoLng,
      );

      // 3. Call API
      final response = await _apiService.createItem(request);

      emit(state.copyWith(
        isSubmitting: false,
        createdItem: response.data,
      ));
    } catch (error) {
      emit(state.copyWith(
        isSubmitting: false,
        error: ApiErrorHandler.handle(error).message,
      ));
    }
  }

  // Update Item (Edit)
  Future<void> updateItem() async {
    if (!_validateEditForm()) return;

    emit(state.copyWith(isSubmitting: true, error: null));

    try {
      // 1. Upload new images if any
      List<String> newImageUrls = [];
      if (state.selectedImages.isNotEmpty) {
        emit(state.copyWith(isUploadingImages: true));
        newImageUrls = await _uploadImagesToCloudinary(state.selectedImages);
        emit(state.copyWith(isUploadingImages: false));
      }

      // 2. Combine existing + new images
      final allImageUrls = [...state.existingImageUrls, ...newImageUrls];

      if (allImageUrls.isEmpty) {
        emit(state.copyWith(
          isSubmitting: false,
          error: 'يجب إضافة صورة واحدة على الأقل',
        ));
        return;
      }

      // 3. Create update request
      final request = UpdateItemRequest(
        title: state.title ?? '',
        description: state.description ?? '',
        categoryId: state.categoryId!,
        price: state.isFree ? null : state.price,
        isFree: state.isFree,
        condition: state.condition,
        images: allImageUrls,
        city: state.city ?? '',
        geoLat: state.geoLat,
        geoLng: state.geoLng,
      );

      // 4. Call API
      final response = await _apiService.updateItem(state.editingItemId!, request);

      emit(state.copyWith(
        isSubmitting: false,
        createdItem: response.data,
      ));
    } catch (error) {
      emit(state.copyWith(
        isSubmitting: false,
        error: ApiErrorHandler.handle(error).message,
      ));
    }
  }

  // Validate for Create
  bool _validateCreateForm() {
    if (state.title == null || state.title!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال عنوان الإعلان'));
      return false;
    }

    if (state.description == null || state.description!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال وصف الإعلان'));
      return false;
    }

    if (state.categoryId == null || state.categoryId!.isEmpty) {
      emit(state.copyWith(error: 'يجب اختيار التصنيف'));
      return false;
    }

    if (state.city == null || state.city!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال المدينة'));
      return false;
    }

    if (state.selectedImages.isEmpty) {
      emit(state.copyWith(error: 'يجب إضافة صورة واحدة على الأقل'));
      return false;
    }

    return true;
  }

  // Validate for Edit
  bool _validateEditForm() {
    if (state.title == null || state.title!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال عنوان الإعلان'));
      return false;
    }

    if (state.description == null || state.description!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال وصف الإعلان'));
      return false;
    }

    if (state.categoryId == null || state.categoryId!.isEmpty) {
      emit(state.copyWith(error: 'يجب اختيار التصنيف'));
      return false;
    }

    if (state.city == null || state.city!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال المدينة'));
      return false;
    }

    if (state.selectedImages.isEmpty && state.existingImageUrls.isEmpty) {
      emit(state.copyWith(error: 'يجب إضافة صورة واحدة على الأقل'));
      return false;
    }

    return true;
  }

  // Upload images to Cloudinary
  Future<List<String>> _uploadImagesToCloudinary(List<File> images) async {
    final List<String> uploadedUrls = [];

    for (final image in images) {
      try {
        final response = await _apiService.uploadImage(image, 'items');
        uploadedUrls.add(response.data.url);
      } catch (e) {
        throw Exception('فشل رفع الصور');
      }
    }

    return uploadedUrls;
  }
}