// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadImageResponse _$UploadImageResponseFromJson(Map<String, dynamic> json) =>
    _UploadImageResponse(
      success: json['success'] as bool,
      data: UploadedImageData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$UploadImageResponseToJson(
  _UploadImageResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_UploadedImageData _$UploadedImageDataFromJson(Map<String, dynamic> json) =>
    _UploadedImageData(
      url: json['url'] as String,
      publicId: json['publicId'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      format: json['format'] as String,
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$UploadedImageDataToJson(_UploadedImageData instance) =>
    <String, dynamic>{
      'url': instance.url,
      'publicId': instance.publicId,
      'width': instance.width,
      'height': instance.height,
      'format': instance.format,
      'size': instance.size,
    };

_UploadImagesResponse _$UploadImagesResponseFromJson(
  Map<String, dynamic> json,
) => _UploadImagesResponse(
  success: json['success'] as bool,
  data: UploadedImagesData.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$UploadImagesResponseToJson(
  _UploadImagesResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_UploadedImagesData _$UploadedImagesDataFromJson(Map<String, dynamic> json) =>
    _UploadedImagesData(
      images: (json['images'] as List<dynamic>)
          .map((e) => UploadedImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UploadedImagesDataToJson(_UploadedImagesData instance) =>
    <String, dynamic>{'images': instance.images};
