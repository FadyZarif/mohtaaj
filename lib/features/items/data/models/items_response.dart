import 'package:freezed_annotation/freezed_annotation.dart';
import 'item_model.dart';

part 'items_response.freezed.dart';
part 'items_response.g.dart';

// Response for Get All Items, Get Items by Category, Get User Items (with pagination)
@freezed
abstract class ItemsResponse with _$ItemsResponse {
  const factory ItemsResponse({
    required bool success,
    required ItemsData data,
    required String timestamp,
  }) = _ItemsResponse;

  factory ItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemsResponseFromJson(json);
}

@freezed
abstract class ItemsData with _$ItemsData {
  const factory ItemsData({
    required List<ItemModel> items,
    required ItemsPaginationMeta meta,
  }) = _ItemsData;

  factory ItemsData.fromJson(Map<String, dynamic> json) =>
      _$ItemsDataFromJson(json);
}

@freezed
abstract class ItemsPaginationMeta with _$ItemsPaginationMeta {
  const factory ItemsPaginationMeta({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _ItemsPaginationMeta;

  factory ItemsPaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$ItemsPaginationMetaFromJson(json);
}

// Response for Get Single Item
@freezed
abstract class ItemDetailsResponse with _$ItemDetailsResponse {
  const factory ItemDetailsResponse({
    required bool success,
    required ItemModel data,
    required String timestamp,
  }) = _ItemDetailsResponse;

  factory ItemDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailsResponseFromJson(json);
}

// Response for Get Featured Items, Get Similar Items (returns list directly)
@freezed
abstract class ItemListResponse with _$ItemListResponse {
  const factory ItemListResponse({
    required bool success,
    required List<ItemModel> data,
    required String timestamp,
  }) = _ItemListResponse;

  factory ItemListResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemListResponseFromJson(json);
}
