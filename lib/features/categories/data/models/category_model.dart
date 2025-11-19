import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name,
    required String slug,
    String? description,
    String? iconUrl,
    String? parentId,
    required bool isActive,
    required int sortOrder,
    required DateTime createdAt,
    required DateTime updatedAt,
    CategoryParent? parent,
    List<CategoryModel>? children,
    @JsonKey(name: '_count') CategoryCount? count,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
abstract class CategoryParent with _$CategoryParent {
  const factory CategoryParent({
    required String id,
    required String name,
    required String slug,
  }) = _CategoryParent;

  factory CategoryParent.fromJson(Map<String, dynamic> json) =>
      _$CategoryParentFromJson(json);
}

@freezed
abstract class CategoryCount with _$CategoryCount {
  const factory CategoryCount({
    required int items,
    required int children,
  }) = _CategoryCount;

  factory CategoryCount.fromJson(Map<String, dynamic> json) =>
      _$CategoryCountFromJson(json);
}
