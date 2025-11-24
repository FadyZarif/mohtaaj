
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';


enum ItemCondition {
  @JsonValue("new")
  newItem,

  @JsonValue("like_new")
  likeNew,

  @JsonValue("good")
  good,

  @JsonValue("fair")
  fair,

  @JsonValue("poor")
  poor,
}

extension ItemConditionX on ItemCondition {
  String get displayName {
    switch (this) {
      case ItemCondition.newItem:
        return 'جديد';
      case ItemCondition.likeNew:
        return 'شبه جديد';
      case ItemCondition.good:
        return 'جيد';
      case ItemCondition.fair:
        return 'مقبول';
      case ItemCondition.poor:
        return 'سيء';
    }
  }
}

enum ItemStatus {

  @JsonValue("pending")
  pending,

  @JsonValue("active")
  active,

  @JsonValue("closed")
  closed,

  @JsonValue("reported")
  reported,
}
/*extension ItemModelX on ItemModel {
  String get conditionText {
    switch (condition) {
      case ItemCondition.newItem:
        return 'جديد';
      case ItemCondition.likeNew:
        return 'شبه جديد';
      case ItemCondition.good:
        return 'جيد';
      case ItemCondition.fair:
        return 'مقبول';
      case ItemCondition.poor:
        return 'سيء';
      default:
        return 'غير محدد';
    }
  }

}*/



@freezed
abstract class ItemModel with _$ItemModel {
  const factory ItemModel({
    required String id,
    required String ownerId,
    required String title,
    required String description,
    required String categoryId,
    required ItemCategory category,
    ItemCondition? condition,
    required List<String> images,
    required String city,
    String? geoLat,
    String? geoLng,
    String? price,
    required bool isFree,
    required bool isFeatured,
    required ItemStatus status,
    required int views,
    required int favoritesCount,
    required DateTime createdAt,
    DateTime? closedAt,
    required ItemOwner owner,
    @JsonKey(name: '_count') ItemCount? count,
    FavoriteInfo? favoriteInfo, // 👈 إضافة للـ favorites
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}

@freezed
abstract class ItemCategory with _$ItemCategory {
  const factory ItemCategory({
    required String id,
    required String name,
    required String slug,
    String? iconUrl,
  }) = _ItemCategory;

  factory ItemCategory.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryFromJson(json);
}

@freezed
abstract class ItemOwner with _$ItemOwner {
  const factory ItemOwner({
    required String id,
    required String name,
    String? avatarUrl,
    required num ratingAvg,
    required int reputationScore,
  }) = _ItemOwner;

  factory ItemOwner.fromJson(Map<String, dynamic> json) =>
      _$ItemOwnerFromJson(json);
}

@freezed
abstract class ItemCount with _$ItemCount {
  const factory ItemCount({
    required int chats,
    required int offers,
    required int favorites,
  }) = _ItemCount;

  factory ItemCount.fromJson(Map<String, dynamic> json) =>
      _$ItemCountFromJson(json);
}

@freezed
abstract class FavoriteInfo with _$FavoriteInfo {
  const factory FavoriteInfo({
    required DateTime favoritedAt,
  }) = _FavoriteInfo;

  factory FavoriteInfo.fromJson(Map<String, dynamic> json) =>
      _$FavoriteInfoFromJson(json);
}