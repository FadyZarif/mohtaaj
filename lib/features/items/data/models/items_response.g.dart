// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemsResponse _$ItemsResponseFromJson(Map<String, dynamic> json) =>
    _ItemsResponse(
      success: json['success'] as bool,
      data: ItemsData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$ItemsResponseToJson(_ItemsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_ItemsData _$ItemsDataFromJson(Map<String, dynamic> json) => _ItemsData(
  items: (json['items'] as List<dynamic>)
      .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: ItemsPaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ItemsDataToJson(_ItemsData instance) =>
    <String, dynamic>{'items': instance.items, 'meta': instance.meta};

_ItemsPaginationMeta _$ItemsPaginationMetaFromJson(Map<String, dynamic> json) =>
    _ItemsPaginationMeta(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$ItemsPaginationMetaToJson(
  _ItemsPaginationMeta instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'totalPages': instance.totalPages,
};

_ItemDetailsResponse _$ItemDetailsResponseFromJson(Map<String, dynamic> json) =>
    _ItemDetailsResponse(
      success: json['success'] as bool,
      data: ItemModel.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$ItemDetailsResponseToJson(
  _ItemDetailsResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'timestamp': instance.timestamp,
};

_ItemListResponse _$ItemListResponseFromJson(Map<String, dynamic> json) =>
    _ItemListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$ItemListResponseToJson(_ItemListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };
