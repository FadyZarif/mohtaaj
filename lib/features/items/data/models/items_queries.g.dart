// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemsQueries _$ItemsQueriesFromJson(Map<String, dynamic> json) =>
    _ItemsQueries(
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      categoryId: json['categoryId'] as String?,
      condition: $enumDecodeNullable(_$ItemConditionEnumMap, json['condition']),
      status: $enumDecodeNullable(_$ItemStatusEnumMap, json['status']),
      city: json['city'] as String?,
      isFree: json['isFree'] as bool?,
      isFeatured: json['isFeatured'] as bool?,
      search: json['search'] as String?,
      sortBy: $enumDecodeNullable(_$SortByEnumMap, json['sortBy']),
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sortOrder']),
      minLat: (json['minLat'] as num?)?.toDouble(),
      maxLat: (json['maxLat'] as num?)?.toDouble(),
      minLng: (json['minLng'] as num?)?.toDouble(),
      maxLng: (json['maxLng'] as num?)?.toDouble(),
      minPrice: json['minPrice'] as String?,
      maxPrice: json['maxPrice'] as String?,
    );

Map<String, dynamic> _$ItemsQueriesToJson(_ItemsQueries instance) =>
    <String, dynamic>{
      'page': ?instance.page,
      'limit': ?instance.limit,
      'categoryId': ?instance.categoryId,
      'condition': ?_$ItemConditionEnumMap[instance.condition],
      'status': ?_$ItemStatusEnumMap[instance.status],
      'city': ?instance.city,
      'isFree': ?instance.isFree,
      'isFeatured': ?instance.isFeatured,
      'search': ?instance.search,
      'sortBy': ?_$SortByEnumMap[instance.sortBy],
      'sortOrder': ?_$SortOrderEnumMap[instance.sortOrder],
      'minLat': ?instance.minLat,
      'maxLat': ?instance.maxLat,
      'minLng': ?instance.minLng,
      'maxLng': ?instance.maxLng,
      'minPrice': ?instance.minPrice,
      'maxPrice': ?instance.maxPrice,
    };

const _$ItemConditionEnumMap = {
  ItemCondition.newItem: 'new',
  ItemCondition.likeNew: 'like_new',
  ItemCondition.good: 'good',
  ItemCondition.fair: 'fair',
  ItemCondition.poor: 'poor',
};

const _$ItemStatusEnumMap = {
  ItemStatus.pending: 'pending',
  ItemStatus.active: 'active',
  ItemStatus.closed: 'closed',
  ItemStatus.reported: 'reported',
};

const _$SortByEnumMap = {
  SortBy.createdAt: 'createdAt',
  SortBy.favoritesCount: 'favoritesCount',
  SortBy.views: 'views',
  SortBy.price: 'price',
};

const _$SortOrderEnumMap = {SortOrder.asc: 'asc', SortOrder.desc: 'desc'};
