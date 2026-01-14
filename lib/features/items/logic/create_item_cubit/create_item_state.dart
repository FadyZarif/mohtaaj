// features/items/logic/create_item_cubit/create_item_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';
import '../../data/models/item_model.dart';

part 'create_item_state.freezed.dart';

@freezed
abstract class CreateItemState with _$CreateItemState {
  const factory CreateItemState({
    @Default([]) List<File> selectedImages,
    @Default([]) List<String> uploadedImageUrls,
    @Default(false) bool isUploadingImages,

    String? title,
    String? description,
    String? categoryId,
    ItemCondition? condition,
    String? city,
    double? geoLat,
    double? geoLng,
    double? price,
    @Default(false) bool isFree,

    @Default(false) bool isSubmitting,
    String? error,
    ItemModel? createdItem,
    // For Edit Mode
    @Default(false) bool isEditMode,
    String? editingItemId,
    @Default([]) List<String> existingImageUrls, // للصور الموجودة من قبل
  }) = _CreateItemState;
}