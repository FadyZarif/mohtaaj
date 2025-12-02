// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateItemRequest _$UpdateItemRequestFromJson(Map<String, dynamic> json) =>
    _UpdateItemRequest(
      title: json['title'] as String,
      description: json['description'] as String,
      categoryId: json['categoryId'] as String,
      price: (json['price'] as num?)?.toDouble(),
      isFree: json['isFree'] as bool? ?? true,
      condition: $enumDecodeNullable(_$ItemConditionEnumMap, json['condition']),
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      city: json['city'] as String,
      geoLat: (json['geoLat'] as num?)?.toDouble(),
      geoLng: (json['geoLng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateItemRequestToJson(_UpdateItemRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'price': instance.price,
      'isFree': instance.isFree,
      'condition': _$ItemConditionEnumMap[instance.condition],
      'images': instance.images,
      'city': instance.city,
      'geoLat': instance.geoLat,
      'geoLng': instance.geoLng,
    };

const _$ItemConditionEnumMap = {
  ItemCondition.newItem: 'new',
  ItemCondition.likeNew: 'like_new',
  ItemCondition.good: 'good',
  ItemCondition.fair: 'fair',
  ItemCondition.poor: 'poor',
};
