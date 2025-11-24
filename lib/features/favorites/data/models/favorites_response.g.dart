// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoritesResponse _$FavoritesResponseFromJson(Map<String, dynamic> json) =>
    _FavoritesResponse(
      success: json['success'] as bool,
      data: FavoritesData.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$FavoritesResponseToJson(_FavoritesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };

_FavoritesData _$FavoritesDataFromJson(Map<String, dynamic> json) =>
    _FavoritesData(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: FavoritesMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoritesDataToJson(_FavoritesData instance) =>
    <String, dynamic>{'items': instance.items, 'meta': instance.meta};

_FavoritesMeta _$FavoritesMetaFromJson(Map<String, dynamic> json) =>
    _FavoritesMeta(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$FavoritesMetaToJson(_FavoritesMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
    };
