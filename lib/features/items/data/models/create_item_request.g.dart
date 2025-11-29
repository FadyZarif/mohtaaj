// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateItemRequest _$CreateItemRequestFromJson(Map<String, dynamic> json) =>
    _CreateItemRequest(
      title: json['title'] as String,
      description: json['description'] as String,
      categoryId: json['categoryId'] as String,
      condition: $enumDecodeNullable(_$ItemConditionEnumMap, json['condition']),
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      city: json['city'] as String,
      geoLat: (json['geoLat'] as num?)?.toDouble(),
      geoLng: (json['geoLng'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      isFree: json['isFree'] as bool,
    );

Map<String, dynamic> _$CreateItemRequestToJson(_CreateItemRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'condition': ?_$ItemConditionEnumMap[instance.condition],
      'images': instance.images,
      'city': instance.city,
      'geoLat': ?instance.geoLat,
      'geoLng': ?instance.geoLng,
      'price': ?instance.price,
      'isFree': instance.isFree,
    };

const _$ItemConditionEnumMap = {
  ItemCondition.newItem: 'new',
  ItemCondition.likeNew: 'like_new',
  ItemCondition.good: 'good',
  ItemCondition.fair: 'fair',
  ItemCondition.poor: 'poor',
};
