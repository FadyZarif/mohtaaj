// features/items/data/models/create_item_request.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mohtaaj/features/items/data/models/item_model.dart';

part 'create_item_request.freezed.dart';
part 'create_item_request.g.dart';

// في create_item_request.dart

@freezed
abstract class CreateItemRequest with _$CreateItemRequest {
  @JsonSerializable(includeIfNull: false)
  const factory CreateItemRequest({
    required String title,
    required String description,
    required String categoryId,
    ItemCondition? condition,
    required List<String> images,
    required String city,
    @JsonKey(includeIfNull: false) double? geoLat,
    @JsonKey(includeIfNull: false) double? geoLng,
    double? price,
    required bool isFree,
  }) = _CreateItemRequest;

  factory CreateItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateItemRequestFromJson(json);
}