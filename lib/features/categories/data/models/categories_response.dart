import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_model.dart';

part 'categories_response.freezed.dart';
part 'categories_response.g.dart';

@freezed
abstract class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse({
    required bool success,
    required CategoriesData data,
    required String timestamp,
  }) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}

@freezed
abstract class CategoriesData with _$CategoriesData {
  const factory CategoriesData({
    required List<CategoryModel> items,
    required PaginationMeta meta,
  }) = _CategoriesData;

  factory CategoriesData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataFromJson(json);
}

@freezed
abstract class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}

// Response for single category (Get by ID / Get by Slug)
@freezed
abstract class CategoryDetailsResponse with _$CategoryDetailsResponse {
  const factory CategoryDetailsResponse({
    required bool success,
    required CategoryModel data,
    required String timestamp,
  }) = _CategoryDetailsResponse;

  factory CategoryDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsResponseFromJson(json);
}

// Response for category tree / popular categories (returns list directly)
@freezed
abstract class CategoryListResponse with _$CategoryListResponse {
  const factory CategoryListResponse({
    required bool success,
    required List<CategoryModel> data,
    required String timestamp,
  }) = _CategoryListResponse;

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseFromJson(json);
}
