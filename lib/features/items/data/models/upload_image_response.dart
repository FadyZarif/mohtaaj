// features/items/data/models/upload_image_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_response.freezed.dart';
part 'upload_image_response.g.dart';

// Single Image Response
@freezed
abstract class UploadImageResponse with _$UploadImageResponse {
  const factory UploadImageResponse({
    required bool success,
    required UploadedImageData data,
    required String timestamp,
  }) = _UploadImageResponse;

  factory UploadImageResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadImageResponseFromJson(json);
}

@freezed
abstract class UploadedImageData with _$UploadedImageData {
  const factory UploadedImageData({
    required String url,
    required String publicId,
    required int width,
    required int height,
    required String format,
    required int size,
  }) = _UploadedImageData;

  factory UploadedImageData.fromJson(Map<String, dynamic> json) =>
      _$UploadedImageDataFromJson(json);
}

// Multiple Images Response
@freezed
abstract class UploadImagesResponse with _$UploadImagesResponse {
  const factory UploadImagesResponse({
    required bool success,
    required UploadedImagesData data,
    required String timestamp,
  }) = _UploadImagesResponse;

  factory UploadImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadImagesResponseFromJson(json);
}

@freezed
abstract class UploadedImagesData with _$UploadedImagesData {
  const factory UploadedImagesData({
    required List<UploadedImageData> images,
  }) = _UploadedImagesData;

  factory UploadedImagesData.fromJson(Map<String, dynamic> json) =>
      _$UploadedImagesDataFromJson(json);
}