// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemModel {

 String get id; String? get ownerId;// 👈 خليه optional
 String get title; String get description; String? get categoryId;// 👈 خليه optional
 ItemCategory get category; ItemCondition? get condition; List<String> get images; String get city; String? get geoLat; String? get geoLng; String? get price; bool get isFree; bool get isFeatured; ItemStatus get status; int get views; int get favoritesCount; DateTime get createdAt; DateTime? get closedAt; ItemOwner? get owner;// 👈 خليه optional
@JsonKey(name: '_count') ItemCount? get count; FavoriteInfo? get favoriteInfo;
/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemModelCopyWith<ItemModel> get copyWith => _$ItemModelCopyWithImpl<ItemModel>(this as ItemModel, _$identity);

  /// Serializes this ItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.status, status) || other.status == status)&&(identical(other.views, views) || other.views == views)&&(identical(other.favoritesCount, favoritesCount) || other.favoritesCount == favoritesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.count, count) || other.count == count)&&(identical(other.favoriteInfo, favoriteInfo) || other.favoriteInfo == favoriteInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,ownerId,title,description,categoryId,category,condition,const DeepCollectionEquality().hash(images),city,geoLat,geoLng,price,isFree,isFeatured,status,views,favoritesCount,createdAt,closedAt,owner,count,favoriteInfo]);

@override
String toString() {
  return 'ItemModel(id: $id, ownerId: $ownerId, title: $title, description: $description, categoryId: $categoryId, category: $category, condition: $condition, images: $images, city: $city, geoLat: $geoLat, geoLng: $geoLng, price: $price, isFree: $isFree, isFeatured: $isFeatured, status: $status, views: $views, favoritesCount: $favoritesCount, createdAt: $createdAt, closedAt: $closedAt, owner: $owner, count: $count, favoriteInfo: $favoriteInfo)';
}


}

/// @nodoc
abstract mixin class $ItemModelCopyWith<$Res>  {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) _then) = _$ItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String? ownerId, String title, String description, String? categoryId, ItemCategory category, ItemCondition? condition, List<String> images, String city, String? geoLat, String? geoLng, String? price, bool isFree, bool isFeatured, ItemStatus status, int views, int favoritesCount, DateTime createdAt, DateTime? closedAt, ItemOwner? owner,@JsonKey(name: '_count') ItemCount? count, FavoriteInfo? favoriteInfo
});


$ItemCategoryCopyWith<$Res> get category;$ItemOwnerCopyWith<$Res>? get owner;$ItemCountCopyWith<$Res>? get count;$FavoriteInfoCopyWith<$Res>? get favoriteInfo;

}
/// @nodoc
class _$ItemModelCopyWithImpl<$Res>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._self, this._then);

  final ItemModel _self;
  final $Res Function(ItemModel) _then;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerId = freezed,Object? title = null,Object? description = null,Object? categoryId = freezed,Object? category = null,Object? condition = freezed,Object? images = null,Object? city = null,Object? geoLat = freezed,Object? geoLng = freezed,Object? price = freezed,Object? isFree = null,Object? isFeatured = null,Object? status = null,Object? views = null,Object? favoritesCount = null,Object? createdAt = null,Object? closedAt = freezed,Object? owner = freezed,Object? count = freezed,Object? favoriteInfo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ItemCategory,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as String?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemStatus,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,favoritesCount: null == favoritesCount ? _self.favoritesCount : favoritesCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as ItemOwner?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as ItemCount?,favoriteInfo: freezed == favoriteInfo ? _self.favoriteInfo : favoriteInfo // ignore: cast_nullable_to_non_nullable
as FavoriteInfo?,
  ));
}
/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCategoryCopyWith<$Res> get category {
  
  return $ItemCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $ItemOwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $ItemCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteInfoCopyWith<$Res>? get favoriteInfo {
    if (_self.favoriteInfo == null) {
    return null;
  }

  return $FavoriteInfoCopyWith<$Res>(_self.favoriteInfo!, (value) {
    return _then(_self.copyWith(favoriteInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemModel].
extension ItemModelPatterns on ItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemModel value)  $default,){
final _that = this;
switch (_that) {
case _ItemModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? ownerId,  String title,  String description,  String? categoryId,  ItemCategory category,  ItemCondition? condition,  List<String> images,  String city,  String? geoLat,  String? geoLng,  String? price,  bool isFree,  bool isFeatured,  ItemStatus status,  int views,  int favoritesCount,  DateTime createdAt,  DateTime? closedAt,  ItemOwner? owner, @JsonKey(name: '_count')  ItemCount? count,  FavoriteInfo? favoriteInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that.id,_that.ownerId,_that.title,_that.description,_that.categoryId,_that.category,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree,_that.isFeatured,_that.status,_that.views,_that.favoritesCount,_that.createdAt,_that.closedAt,_that.owner,_that.count,_that.favoriteInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? ownerId,  String title,  String description,  String? categoryId,  ItemCategory category,  ItemCondition? condition,  List<String> images,  String city,  String? geoLat,  String? geoLng,  String? price,  bool isFree,  bool isFeatured,  ItemStatus status,  int views,  int favoritesCount,  DateTime createdAt,  DateTime? closedAt,  ItemOwner? owner, @JsonKey(name: '_count')  ItemCount? count,  FavoriteInfo? favoriteInfo)  $default,) {final _that = this;
switch (_that) {
case _ItemModel():
return $default(_that.id,_that.ownerId,_that.title,_that.description,_that.categoryId,_that.category,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree,_that.isFeatured,_that.status,_that.views,_that.favoritesCount,_that.createdAt,_that.closedAt,_that.owner,_that.count,_that.favoriteInfo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? ownerId,  String title,  String description,  String? categoryId,  ItemCategory category,  ItemCondition? condition,  List<String> images,  String city,  String? geoLat,  String? geoLng,  String? price,  bool isFree,  bool isFeatured,  ItemStatus status,  int views,  int favoritesCount,  DateTime createdAt,  DateTime? closedAt,  ItemOwner? owner, @JsonKey(name: '_count')  ItemCount? count,  FavoriteInfo? favoriteInfo)?  $default,) {final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that.id,_that.ownerId,_that.title,_that.description,_that.categoryId,_that.category,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree,_that.isFeatured,_that.status,_that.views,_that.favoritesCount,_that.createdAt,_that.closedAt,_that.owner,_that.count,_that.favoriteInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemModel implements ItemModel {
  const _ItemModel({required this.id, this.ownerId, required this.title, required this.description, this.categoryId, required this.category, this.condition, required final  List<String> images, required this.city, this.geoLat, this.geoLng, this.price, required this.isFree, required this.isFeatured, required this.status, required this.views, required this.favoritesCount, required this.createdAt, this.closedAt, this.owner, @JsonKey(name: '_count') this.count, this.favoriteInfo}): _images = images;
  factory _ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

@override final  String id;
@override final  String? ownerId;
// 👈 خليه optional
@override final  String title;
@override final  String description;
@override final  String? categoryId;
// 👈 خليه optional
@override final  ItemCategory category;
@override final  ItemCondition? condition;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String city;
@override final  String? geoLat;
@override final  String? geoLng;
@override final  String? price;
@override final  bool isFree;
@override final  bool isFeatured;
@override final  ItemStatus status;
@override final  int views;
@override final  int favoritesCount;
@override final  DateTime createdAt;
@override final  DateTime? closedAt;
@override final  ItemOwner? owner;
// 👈 خليه optional
@override@JsonKey(name: '_count') final  ItemCount? count;
@override final  FavoriteInfo? favoriteInfo;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemModelCopyWith<_ItemModel> get copyWith => __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.status, status) || other.status == status)&&(identical(other.views, views) || other.views == views)&&(identical(other.favoritesCount, favoritesCount) || other.favoritesCount == favoritesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.count, count) || other.count == count)&&(identical(other.favoriteInfo, favoriteInfo) || other.favoriteInfo == favoriteInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,ownerId,title,description,categoryId,category,condition,const DeepCollectionEquality().hash(_images),city,geoLat,geoLng,price,isFree,isFeatured,status,views,favoritesCount,createdAt,closedAt,owner,count,favoriteInfo]);

@override
String toString() {
  return 'ItemModel(id: $id, ownerId: $ownerId, title: $title, description: $description, categoryId: $categoryId, category: $category, condition: $condition, images: $images, city: $city, geoLat: $geoLat, geoLng: $geoLng, price: $price, isFree: $isFree, isFeatured: $isFeatured, status: $status, views: $views, favoritesCount: $favoritesCount, createdAt: $createdAt, closedAt: $closedAt, owner: $owner, count: $count, favoriteInfo: $favoriteInfo)';
}


}

/// @nodoc
abstract mixin class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(_ItemModel value, $Res Function(_ItemModel) _then) = __$ItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? ownerId, String title, String description, String? categoryId, ItemCategory category, ItemCondition? condition, List<String> images, String city, String? geoLat, String? geoLng, String? price, bool isFree, bool isFeatured, ItemStatus status, int views, int favoritesCount, DateTime createdAt, DateTime? closedAt, ItemOwner? owner,@JsonKey(name: '_count') ItemCount? count, FavoriteInfo? favoriteInfo
});


@override $ItemCategoryCopyWith<$Res> get category;@override $ItemOwnerCopyWith<$Res>? get owner;@override $ItemCountCopyWith<$Res>? get count;@override $FavoriteInfoCopyWith<$Res>? get favoriteInfo;

}
/// @nodoc
class __$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(this._self, this._then);

  final _ItemModel _self;
  final $Res Function(_ItemModel) _then;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerId = freezed,Object? title = null,Object? description = null,Object? categoryId = freezed,Object? category = null,Object? condition = freezed,Object? images = null,Object? city = null,Object? geoLat = freezed,Object? geoLng = freezed,Object? price = freezed,Object? isFree = null,Object? isFeatured = null,Object? status = null,Object? views = null,Object? favoritesCount = null,Object? createdAt = null,Object? closedAt = freezed,Object? owner = freezed,Object? count = freezed,Object? favoriteInfo = freezed,}) {
  return _then(_ItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ItemCategory,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as String?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemStatus,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,favoritesCount: null == favoritesCount ? _self.favoritesCount : favoritesCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as ItemOwner?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as ItemCount?,favoriteInfo: freezed == favoriteInfo ? _self.favoriteInfo : favoriteInfo // ignore: cast_nullable_to_non_nullable
as FavoriteInfo?,
  ));
}

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCategoryCopyWith<$Res> get category {
  
  return $ItemCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $ItemOwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $ItemCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteInfoCopyWith<$Res>? get favoriteInfo {
    if (_self.favoriteInfo == null) {
    return null;
  }

  return $FavoriteInfoCopyWith<$Res>(_self.favoriteInfo!, (value) {
    return _then(_self.copyWith(favoriteInfo: value));
  });
}
}


/// @nodoc
mixin _$ItemCategory {

 String get id; String get name; String get slug; String? get iconUrl; String? get description;// 👈 إضافة
 String? get parentId;// 👈 إضافة
 bool? get isActive;// 👈 إضافة
 int? get sortOrder;// 👈 إضافة
 DateTime? get createdAt;// 👈 إضافة
 DateTime? get updatedAt;
/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCategoryCopyWith<ItemCategory> get copyWith => _$ItemCategoryCopyWithImpl<ItemCategory>(this as ItemCategory, _$identity);

  /// Serializes this ItemCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,iconUrl,description,parentId,isActive,sortOrder,createdAt,updatedAt);

@override
String toString() {
  return 'ItemCategory(id: $id, name: $name, slug: $slug, iconUrl: $iconUrl, description: $description, parentId: $parentId, isActive: $isActive, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ItemCategoryCopyWith<$Res>  {
  factory $ItemCategoryCopyWith(ItemCategory value, $Res Function(ItemCategory) _then) = _$ItemCategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String? iconUrl, String? description, String? parentId, bool? isActive, int? sortOrder, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ItemCategoryCopyWithImpl<$Res>
    implements $ItemCategoryCopyWith<$Res> {
  _$ItemCategoryCopyWithImpl(this._self, this._then);

  final ItemCategory _self;
  final $Res Function(ItemCategory) _then;

/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? iconUrl = freezed,Object? description = freezed,Object? parentId = freezed,Object? isActive = freezed,Object? sortOrder = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemCategory].
extension ItemCategoryPatterns on ItemCategory {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemCategory value)  $default,){
final _that = this;
switch (_that) {
case _ItemCategory():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? iconUrl,  String? description,  String? parentId,  bool? isActive,  int? sortOrder,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.iconUrl,_that.description,_that.parentId,_that.isActive,_that.sortOrder,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? iconUrl,  String? description,  String? parentId,  bool? isActive,  int? sortOrder,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ItemCategory():
return $default(_that.id,_that.name,_that.slug,_that.iconUrl,_that.description,_that.parentId,_that.isActive,_that.sortOrder,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String? iconUrl,  String? description,  String? parentId,  bool? isActive,  int? sortOrder,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ItemCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.iconUrl,_that.description,_that.parentId,_that.isActive,_that.sortOrder,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemCategory implements ItemCategory {
  const _ItemCategory({required this.id, required this.name, required this.slug, this.iconUrl, this.description, this.parentId, this.isActive, this.sortOrder, this.createdAt, this.updatedAt});
  factory _ItemCategory.fromJson(Map<String, dynamic> json) => _$ItemCategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String? iconUrl;
@override final  String? description;
// 👈 إضافة
@override final  String? parentId;
// 👈 إضافة
@override final  bool? isActive;
// 👈 إضافة
@override final  int? sortOrder;
// 👈 إضافة
@override final  DateTime? createdAt;
// 👈 إضافة
@override final  DateTime? updatedAt;

/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCategoryCopyWith<_ItemCategory> get copyWith => __$ItemCategoryCopyWithImpl<_ItemCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,iconUrl,description,parentId,isActive,sortOrder,createdAt,updatedAt);

@override
String toString() {
  return 'ItemCategory(id: $id, name: $name, slug: $slug, iconUrl: $iconUrl, description: $description, parentId: $parentId, isActive: $isActive, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ItemCategoryCopyWith<$Res> implements $ItemCategoryCopyWith<$Res> {
  factory _$ItemCategoryCopyWith(_ItemCategory value, $Res Function(_ItemCategory) _then) = __$ItemCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String? iconUrl, String? description, String? parentId, bool? isActive, int? sortOrder, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ItemCategoryCopyWithImpl<$Res>
    implements _$ItemCategoryCopyWith<$Res> {
  __$ItemCategoryCopyWithImpl(this._self, this._then);

  final _ItemCategory _self;
  final $Res Function(_ItemCategory) _then;

/// Create a copy of ItemCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? iconUrl = freezed,Object? description = freezed,Object? parentId = freezed,Object? isActive = freezed,Object? sortOrder = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ItemCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ItemOwner {

 String get id; String get name; String? get avatarUrl; num get ratingAvg; int get reputationScore;
/// Create a copy of ItemOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemOwnerCopyWith<ItemOwner> get copyWith => _$ItemOwnerCopyWithImpl<ItemOwner>(this as ItemOwner, _$identity);

  /// Serializes this ItemOwner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemOwner&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.ratingAvg, ratingAvg) || other.ratingAvg == ratingAvg)&&(identical(other.reputationScore, reputationScore) || other.reputationScore == reputationScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,ratingAvg,reputationScore);

@override
String toString() {
  return 'ItemOwner(id: $id, name: $name, avatarUrl: $avatarUrl, ratingAvg: $ratingAvg, reputationScore: $reputationScore)';
}


}

/// @nodoc
abstract mixin class $ItemOwnerCopyWith<$Res>  {
  factory $ItemOwnerCopyWith(ItemOwner value, $Res Function(ItemOwner) _then) = _$ItemOwnerCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatarUrl, num ratingAvg, int reputationScore
});




}
/// @nodoc
class _$ItemOwnerCopyWithImpl<$Res>
    implements $ItemOwnerCopyWith<$Res> {
  _$ItemOwnerCopyWithImpl(this._self, this._then);

  final ItemOwner _self;
  final $Res Function(ItemOwner) _then;

/// Create a copy of ItemOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,Object? ratingAvg = null,Object? reputationScore = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,ratingAvg: null == ratingAvg ? _self.ratingAvg : ratingAvg // ignore: cast_nullable_to_non_nullable
as num,reputationScore: null == reputationScore ? _self.reputationScore : reputationScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemOwner].
extension ItemOwnerPatterns on ItemOwner {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemOwner() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemOwner value)  $default,){
final _that = this;
switch (_that) {
case _ItemOwner():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemOwner value)?  $default,){
final _that = this;
switch (_that) {
case _ItemOwner() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? avatarUrl,  num ratingAvg,  int reputationScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemOwner() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.ratingAvg,_that.reputationScore);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? avatarUrl,  num ratingAvg,  int reputationScore)  $default,) {final _that = this;
switch (_that) {
case _ItemOwner():
return $default(_that.id,_that.name,_that.avatarUrl,_that.ratingAvg,_that.reputationScore);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? avatarUrl,  num ratingAvg,  int reputationScore)?  $default,) {final _that = this;
switch (_that) {
case _ItemOwner() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.ratingAvg,_that.reputationScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemOwner implements ItemOwner {
  const _ItemOwner({required this.id, required this.name, this.avatarUrl, required this.ratingAvg, required this.reputationScore});
  factory _ItemOwner.fromJson(Map<String, dynamic> json) => _$ItemOwnerFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatarUrl;
@override final  num ratingAvg;
@override final  int reputationScore;

/// Create a copy of ItemOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemOwnerCopyWith<_ItemOwner> get copyWith => __$ItemOwnerCopyWithImpl<_ItemOwner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemOwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemOwner&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.ratingAvg, ratingAvg) || other.ratingAvg == ratingAvg)&&(identical(other.reputationScore, reputationScore) || other.reputationScore == reputationScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,ratingAvg,reputationScore);

@override
String toString() {
  return 'ItemOwner(id: $id, name: $name, avatarUrl: $avatarUrl, ratingAvg: $ratingAvg, reputationScore: $reputationScore)';
}


}

/// @nodoc
abstract mixin class _$ItemOwnerCopyWith<$Res> implements $ItemOwnerCopyWith<$Res> {
  factory _$ItemOwnerCopyWith(_ItemOwner value, $Res Function(_ItemOwner) _then) = __$ItemOwnerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatarUrl, num ratingAvg, int reputationScore
});




}
/// @nodoc
class __$ItemOwnerCopyWithImpl<$Res>
    implements _$ItemOwnerCopyWith<$Res> {
  __$ItemOwnerCopyWithImpl(this._self, this._then);

  final _ItemOwner _self;
  final $Res Function(_ItemOwner) _then;

/// Create a copy of ItemOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,Object? ratingAvg = null,Object? reputationScore = null,}) {
  return _then(_ItemOwner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,ratingAvg: null == ratingAvg ? _self.ratingAvg : ratingAvg // ignore: cast_nullable_to_non_nullable
as num,reputationScore: null == reputationScore ? _self.reputationScore : reputationScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ItemCount {

 int get chats; int get offers; int get favorites;
/// Create a copy of ItemCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCountCopyWith<ItemCount> get copyWith => _$ItemCountCopyWithImpl<ItemCount>(this as ItemCount, _$identity);

  /// Serializes this ItemCount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCount&&(identical(other.chats, chats) || other.chats == chats)&&(identical(other.offers, offers) || other.offers == offers)&&(identical(other.favorites, favorites) || other.favorites == favorites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chats,offers,favorites);

@override
String toString() {
  return 'ItemCount(chats: $chats, offers: $offers, favorites: $favorites)';
}


}

/// @nodoc
abstract mixin class $ItemCountCopyWith<$Res>  {
  factory $ItemCountCopyWith(ItemCount value, $Res Function(ItemCount) _then) = _$ItemCountCopyWithImpl;
@useResult
$Res call({
 int chats, int offers, int favorites
});




}
/// @nodoc
class _$ItemCountCopyWithImpl<$Res>
    implements $ItemCountCopyWith<$Res> {
  _$ItemCountCopyWithImpl(this._self, this._then);

  final ItemCount _self;
  final $Res Function(ItemCount) _then;

/// Create a copy of ItemCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chats = null,Object? offers = null,Object? favorites = null,}) {
  return _then(_self.copyWith(
chats: null == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as int,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as int,favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemCount].
extension ItemCountPatterns on ItemCount {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemCount() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemCount value)  $default,){
final _that = this;
switch (_that) {
case _ItemCount():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemCount value)?  $default,){
final _that = this;
switch (_that) {
case _ItemCount() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int chats,  int offers,  int favorites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemCount() when $default != null:
return $default(_that.chats,_that.offers,_that.favorites);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int chats,  int offers,  int favorites)  $default,) {final _that = this;
switch (_that) {
case _ItemCount():
return $default(_that.chats,_that.offers,_that.favorites);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int chats,  int offers,  int favorites)?  $default,) {final _that = this;
switch (_that) {
case _ItemCount() when $default != null:
return $default(_that.chats,_that.offers,_that.favorites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemCount implements ItemCount {
  const _ItemCount({required this.chats, required this.offers, required this.favorites});
  factory _ItemCount.fromJson(Map<String, dynamic> json) => _$ItemCountFromJson(json);

@override final  int chats;
@override final  int offers;
@override final  int favorites;

/// Create a copy of ItemCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCountCopyWith<_ItemCount> get copyWith => __$ItemCountCopyWithImpl<_ItemCount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemCountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemCount&&(identical(other.chats, chats) || other.chats == chats)&&(identical(other.offers, offers) || other.offers == offers)&&(identical(other.favorites, favorites) || other.favorites == favorites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chats,offers,favorites);

@override
String toString() {
  return 'ItemCount(chats: $chats, offers: $offers, favorites: $favorites)';
}


}

/// @nodoc
abstract mixin class _$ItemCountCopyWith<$Res> implements $ItemCountCopyWith<$Res> {
  factory _$ItemCountCopyWith(_ItemCount value, $Res Function(_ItemCount) _then) = __$ItemCountCopyWithImpl;
@override @useResult
$Res call({
 int chats, int offers, int favorites
});




}
/// @nodoc
class __$ItemCountCopyWithImpl<$Res>
    implements _$ItemCountCopyWith<$Res> {
  __$ItemCountCopyWithImpl(this._self, this._then);

  final _ItemCount _self;
  final $Res Function(_ItemCount) _then;

/// Create a copy of ItemCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chats = null,Object? offers = null,Object? favorites = null,}) {
  return _then(_ItemCount(
chats: null == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as int,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as int,favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FavoriteInfo {

 DateTime get favoritedAt;
/// Create a copy of FavoriteInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteInfoCopyWith<FavoriteInfo> get copyWith => _$FavoriteInfoCopyWithImpl<FavoriteInfo>(this as FavoriteInfo, _$identity);

  /// Serializes this FavoriteInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteInfo&&(identical(other.favoritedAt, favoritedAt) || other.favoritedAt == favoritedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,favoritedAt);

@override
String toString() {
  return 'FavoriteInfo(favoritedAt: $favoritedAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteInfoCopyWith<$Res>  {
  factory $FavoriteInfoCopyWith(FavoriteInfo value, $Res Function(FavoriteInfo) _then) = _$FavoriteInfoCopyWithImpl;
@useResult
$Res call({
 DateTime favoritedAt
});




}
/// @nodoc
class _$FavoriteInfoCopyWithImpl<$Res>
    implements $FavoriteInfoCopyWith<$Res> {
  _$FavoriteInfoCopyWithImpl(this._self, this._then);

  final FavoriteInfo _self;
  final $Res Function(FavoriteInfo) _then;

/// Create a copy of FavoriteInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? favoritedAt = null,}) {
  return _then(_self.copyWith(
favoritedAt: null == favoritedAt ? _self.favoritedAt : favoritedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteInfo].
extension FavoriteInfoPatterns on FavoriteInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteInfo value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteInfo value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime favoritedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteInfo() when $default != null:
return $default(_that.favoritedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime favoritedAt)  $default,) {final _that = this;
switch (_that) {
case _FavoriteInfo():
return $default(_that.favoritedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime favoritedAt)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteInfo() when $default != null:
return $default(_that.favoritedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteInfo implements FavoriteInfo {
  const _FavoriteInfo({required this.favoritedAt});
  factory _FavoriteInfo.fromJson(Map<String, dynamic> json) => _$FavoriteInfoFromJson(json);

@override final  DateTime favoritedAt;

/// Create a copy of FavoriteInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteInfoCopyWith<_FavoriteInfo> get copyWith => __$FavoriteInfoCopyWithImpl<_FavoriteInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteInfo&&(identical(other.favoritedAt, favoritedAt) || other.favoritedAt == favoritedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,favoritedAt);

@override
String toString() {
  return 'FavoriteInfo(favoritedAt: $favoritedAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteInfoCopyWith<$Res> implements $FavoriteInfoCopyWith<$Res> {
  factory _$FavoriteInfoCopyWith(_FavoriteInfo value, $Res Function(_FavoriteInfo) _then) = __$FavoriteInfoCopyWithImpl;
@override @useResult
$Res call({
 DateTime favoritedAt
});




}
/// @nodoc
class __$FavoriteInfoCopyWithImpl<$Res>
    implements _$FavoriteInfoCopyWith<$Res> {
  __$FavoriteInfoCopyWithImpl(this._self, this._then);

  final _FavoriteInfo _self;
  final $Res Function(_FavoriteInfo) _then;

/// Create a copy of FavoriteInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? favoritedAt = null,}) {
  return _then(_FavoriteInfo(
favoritedAt: null == favoritedAt ? _self.favoritedAt : favoritedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
