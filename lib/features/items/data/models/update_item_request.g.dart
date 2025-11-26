// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateItemRequest _$UpdateItemRequestFromJson(Map<String, dynamic> json) =>
    _UpdateItemRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryId: json['categoryId'] as String?,
      condition: json['condition'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      city: json['city'] as String?,
      geoLat: json['geoLat'] as String?,
      geoLng: json['geoLng'] as String?,
      price: json['price'] as String?,
      isFree: json['isFree'] as bool?,
    );

Map<String, dynamic> _$UpdateItemRequestToJson(_UpdateItemRequest instance) =>
    <String, dynamic>{
      'title': ?instance.title,
      'description': ?instance.description,
      'categoryId': ?instance.categoryId,
      'condition': ?instance.condition,
      'images': ?instance.images,
      'city': ?instance.city,
      'geoLat': ?instance.geoLat,
      'geoLng': ?instance.geoLng,
      'price': ?instance.price,
      'isFree': ?instance.isFree,
    };
