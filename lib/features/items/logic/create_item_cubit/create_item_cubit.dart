// features/items/logic/create_item_cubit/create_item_cubit.dart

import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/models/create_item_request.dart';
import '../../data/models/item_model.dart';
import 'create_item_state.dart';

class CreateItemCubit extends Cubit<CreateItemState> {
  final ApiService _apiService;
  final ImagePicker _imagePicker = ImagePicker();

  CreateItemCubit(this._apiService) : super(const CreateItemState());

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

  void updatePrice(String price) {
    emit(state.copyWith(price: price, isFree: false, error: null));
  }

  void toggleIsFree(bool isFree) {
    emit(state.copyWith(
      isFree: isFree,
      price: isFree ? null : state.price,
      error: null,
    ));
  }

  // Validate Form
  bool _validateForm() {
    if (state.selectedImages.isEmpty) {
      emit(state.copyWith(error: 'يجب إضافة صورة واحدة على الأقل'));
      return false;
    }

    if (state.title == null || state.title!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال عنوان الإعلان'));
      return false;
    }

    if (state.description == null || state.description!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال وصف الإعلان'));
      return false;
    }

    if (state.categoryId == null) {
      emit(state.copyWith(error: 'يجب اختيار التصنيف'));
      return false;
    }

    if (state.city == null || state.city!.trim().isEmpty) {
      emit(state.copyWith(error: 'يجب إدخال المدينة'));
      return false;
    }

    if (!state.isFree && (state.price == null || state.price!.trim().isEmpty)) {
      emit(state.copyWith(error: 'يجب إدخال السعر أو اختيار مجاني'));
      return false;
    }

    return true;
  }

  // Upload Images (Mock - replace with actual upload)
  Future<List<String>> _uploadImages(List<File> images) async {
    try {
      final response = await _apiService.uploadImages(
        images,
        'items', // folder name
      );

      return response.data.images.map((img) => img.url).toList();
    } catch (error) {
      throw Exception('فشل رفع الصور. حاول مرة أخرى.');
    }
  }

  // Submit Form
  Future<void> submitItem() async {
    if (!_validateForm()) return;

    emit(state.copyWith(isSubmitting: true, error: null));

    try {
      // Upload images first
      emit(state.copyWith(isUploadingImages: true));
      final imageUrls = await _uploadImages(state.selectedImages);
      emit(state.copyWith(
        uploadedImageUrls: imageUrls,
        isUploadingImages: false,
      ));

      // Create item
      final request = CreateItemRequest(
        title: state.title!,
        description: state.description!,
        categoryId: state.categoryId!,
        condition: state.condition?.name,
        images: imageUrls,
        city: state.city!,
        geoLat: state.geoLat,
        geoLng: state.geoLng,
        price: state.price,
        isFree: state.isFree,
      );

      final response = await _apiService.createItem(request);

      emit(state.copyWith(
        isSubmitting: false,
        createdItem: response.data,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isSubmitting: false,
        isUploadingImages: false,
        error: errorMessage,
      ));
    }
  }

  // Reset Form
  void reset() {
    emit(const CreateItemState());
  }
}