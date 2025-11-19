// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    _CategoriesResponse(
      success: json['success'] as bool,
      data: CategoriesData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$CategoriesResponseToJson(_CategoriesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_CategoriesData _$CategoriesDataFromJson(Map<String, dynamic> json) =>
    _CategoriesData(
      items: (json['items'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesDataToJson(_CategoriesData instance) =>
    <String, dynamic>{'items': instance.items, 'meta': instance.meta};

_PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    _PaginationMeta(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationMetaToJson(_PaginationMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
    };

_CategoryDetailsResponse _$CategoryDetailsResponseFromJson(
  Map<String, dynamic> json,
) => _CategoryDetailsResponse(
  success: json['success'] as bool,
  data: CategoryModel.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$CategoryDetailsResponseToJson(
  _CategoryDetailsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_CategoryListResponse _$CategoryListResponseFromJson(
  Map<String, dynamic> json,
) => _CategoryListResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$CategoryListResponseToJson(
  _CategoryListResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
