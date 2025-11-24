// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => _ItemModel(
  id: json['id'] as String,
  ownerId: json['ownerId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  categoryId: json['categoryId'] as String,
  category: ItemCategory.fromJson(json['category'] as Map<String, dynamic>),
  condition: json['condition'] as String?,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  city: json['city'] as String,
  geoLat: json['geoLat'] as String?,
  geoLng: json['geoLng'] as String?,
  price: json['price'] as String?,
  isFree: json['isFree'] as bool,
  isFeatured: json['isFeatured'] as bool,
  status: json['status'] as String,
  views: (json['views'] as num).toInt(),
  favoritesCount: (json['favoritesCount'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  closedAt: json['closedAt'] == null
      ? null
      : DateTime.parse(json['closedAt'] as String),
  owner: ItemOwner.fromJson(json['owner'] as Map<String, dynamic>),
  count: ItemCount.fromJson(json['_count'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ItemModelToJson(_ItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'title': instance.title,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'condition': instance.condition,
      'images': instance.images,
      'city': instance.city,
      'geoLat': instance.geoLat,
      'geoLng': instance.geoLng,
      'price': instance.price,
      'isFree': instance.isFree,
      'isFeatured': instance.isFeatured,
      'status': instance.status,
      'views': instance.views,
      'favoritesCount': instance.favoritesCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
      'owner': instance.owner,
      '_count': instance.count,
    };

_ItemCategory _$ItemCategoryFromJson(Map<String, dynamic> json) =>
    _ItemCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      iconUrl: json['iconUrl'] as String?,
    );

Map<String, dynamic> _$ItemCategoryToJson(_ItemCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'iconUrl': instance.iconUrl,
    };

_ItemOwner _$ItemOwnerFromJson(Map<String, dynamic> json) => _ItemOwner(
  id: json['id'] as String,
  name: json['name'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  ratingAvg: json['ratingAvg'] as num,
  reputationScore: (json['reputationScore'] as num).toInt(),
);

Map<String, dynamic> _$ItemOwnerToJson(_ItemOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'ratingAvg': instance.ratingAvg,
      'reputationScore': instance.reputationScore,
    };

_ItemCount _$ItemCountFromJson(Map<String, dynamic> json) => _ItemCount(
  chats: (json['chats'] as num).toInt(),
  offers: (json['offers'] as num).toInt(),
  favorites: (json['favorites'] as num).toInt(),
);

Map<String, dynamic> _$ItemCountToJson(_ItemCount instance) =>
    <String, dynamic>{
      'chats': instance.chats,
      'offers': instance.offers,
      'favorites': instance.favorites,
    };
