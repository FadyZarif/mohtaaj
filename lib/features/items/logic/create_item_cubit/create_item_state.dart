// features/items/logic/create_item_cubit/create_item_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';
import '../../data/models/item_model.dart';

part 'create_item_state.freezed.dart';

// في create_item_state.dart

@freezed
abstract class CreateItemState with _$CreateItemState {
  const factory CreateItemState({
    // Images
    @Default([]) List<File> selectedImages,
    @Default([]) List<String> uploadedImageUrls,
    @Default(false) bool isUploadingImages,

    // Form Data
    String? title,
    String? description,
    String? categoryId,
    ItemCondition? condition,
    String? city,
    double? geoLat,  // 👈 غير من String لـ double
    double? geoLng,  // 👈 غير من String لـ double
    String? price,
    @Default(false) bool isFree,

    // State
    @Default(false) bool isSubmitting,
    String? error,
    ItemModel? createdItem,
  }) = _CreateItemState;
}