// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemsQueries _$ItemsQueriesFromJson(Map<String, dynamic> json) =>
    _ItemsQueries(
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      category: json['category'] as String?,
      condition: json['condition'] as String?,
      status: json['status'] as String?,
      city: json['city'] as String?,
      isFree: json['isFree'] as bool?,
      isFeatured: json['isFeatured'] as bool?,
      search: json['search'] as String?,
      sortBy: json['sortBy'] as String?,
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sortOrder']),
    );

Map<String, dynamic> _$ItemsQueriesToJson(_ItemsQueries instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'category': instance.category,
      'condition': instance.condition,
      'status': instance.status,
      'city': instance.city,
      'isFree': instance.isFree,
      'isFeatured': instance.isFeatured,
      'search': instance.search,
      'sortBy': instance.sortBy,
      'sortOrder': _$SortOrderEnumMap[instance.sortOrder],
    };

const _$SortOrderEnumMap = {SortOrder.asc: 'asc', SortOrder.desc: 'desc'};
