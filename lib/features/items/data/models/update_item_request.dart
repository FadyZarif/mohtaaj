// features/items/data/models/update_item_request.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_item_request.freezed.dart';
part 'update_item_request.g.dart';

@freezed
abstract class UpdateItemRequest with _$UpdateItemRequest {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateItemRequest({
    String? title,
    String? description,
    String? categoryId,
    String? condition,
    List<String>? images,
    String? city,
    String? geoLat,
    String? geoLng,
    String? price,
    bool? isFree,
  }) = _UpdateItemRequest;

  factory UpdateItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateItemRequestFromJson(json);
}