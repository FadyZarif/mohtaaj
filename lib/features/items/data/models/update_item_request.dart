// lib/features/items/data/models/update_item_request.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'item_model.dart';

part 'update_item_request.freezed.dart';
part 'update_item_request.g.dart';

@freezed
abstract class UpdateItemRequest with _$UpdateItemRequest {
  const factory UpdateItemRequest({
    required String title,
    required String description,
    required String categoryId,
    double? price, // ✅ double
    @Default(true) bool isFree,
    ItemCondition? condition, // ✅ enum
    required List<String> images,
    required String city,
    @JsonKey(includeIfNull: false) double? geoLat,
    @JsonKey(includeIfNull: false) double? geoLng,
  }) = _UpdateItemRequest;

  factory UpdateItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateItemRequestFromJson(json);
}