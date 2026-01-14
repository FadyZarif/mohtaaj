// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateItemRequest {

 String get title; String get description; String get categoryId; double? get price;// ✅ double
 bool get isFree; ItemCondition? get condition;// ✅ enum
 List<String> get images; String get city;@JsonKey(includeIfNull: false) double? get geoLat;@JsonKey(includeIfNull: false) double? get geoLng;
/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateItemRequestCopyWith<UpdateItemRequest> get copyWith => _$UpdateItemRequestCopyWithImpl<UpdateItemRequest>(this as UpdateItemRequest, _$identity);

  /// Serializes this UpdateItemRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateItemRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,categoryId,price,isFree,condition,const DeepCollectionEquality().hash(images),city,geoLat,geoLng);

@override
String toString() {
  return 'UpdateItemRequest(title: $title, description: $description, categoryId: $categoryId, price: $price, isFree: $isFree, condition: $condition, images: $images, city: $city, geoLat: $geoLat, geoLng: $geoLng)';
}


}

/// @nodoc
abstract mixin class $UpdateItemRequestCopyWith<$Res>  {
  factory $UpdateItemRequestCopyWith(UpdateItemRequest value, $Res Function(UpdateItemRequest) _then) = _$UpdateItemRequestCopyWithImpl;
@useResult
$Res call({
 String title, String description, String categoryId, double? price, bool isFree, ItemCondition? condition, List<String> images, String city,@JsonKey(includeIfNull: false) double? geoLat,@JsonKey(includeIfNull: false) double? geoLng
});




}
/// @nodoc
class _$UpdateItemRequestCopyWithImpl<$Res>
    implements $UpdateItemRequestCopyWith<$Res> {
  _$UpdateItemRequestCopyWithImpl(this._self, this._then);

  final UpdateItemRequest _self;
  final $Res Function(UpdateItemRequest) _then;

/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? categoryId = null,Object? price = freezed,Object? isFree = null,Object? condition = freezed,Object? images = null,Object? city = null,Object? geoLat = freezed,Object? geoLng = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateItemRequest].
extension UpdateItemRequestPatterns on UpdateItemRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateItemRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateItemRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateItemRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateItemRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateItemRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateItemRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String categoryId,  double? price,  bool isFree,  ItemCondition? condition,  List<String> images,  String city, @JsonKey(includeIfNull: false)  double? geoLat, @JsonKey(includeIfNull: false)  double? geoLng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateItemRequest() when $default != null:
return $default(_that.title,_that.description,_that.categoryId,_that.price,_that.isFree,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String categoryId,  double? price,  bool isFree,  ItemCondition? condition,  List<String> images,  String city, @JsonKey(includeIfNull: false)  double? geoLat, @JsonKey(includeIfNull: false)  double? geoLng)  $default,) {final _that = this;
switch (_that) {
case _UpdateItemRequest():
return $default(_that.title,_that.description,_that.categoryId,_that.price,_that.isFree,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String categoryId,  double? price,  bool isFree,  ItemCondition? condition,  List<String> images,  String city, @JsonKey(includeIfNull: false)  double? geoLat, @JsonKey(includeIfNull: false)  double? geoLng)?  $default,) {final _that = this;
switch (_that) {
case _UpdateItemRequest() when $default != null:
return $default(_that.title,_that.description,_that.categoryId,_that.price,_that.isFree,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateItemRequest implements UpdateItemRequest {
  const _UpdateItemRequest({required this.title, required this.description, required this.categoryId, this.price, this.isFree = true, this.condition, required final  List<String> images, required this.city, @JsonKey(includeIfNull: false) this.geoLat, @JsonKey(includeIfNull: false) this.geoLng}): _images = images;
  factory _UpdateItemRequest.fromJson(Map<String, dynamic> json) => _$UpdateItemRequestFromJson(json);

@override final  String title;
@override final  String description;
@override final  String categoryId;
@override final  double? price;
// ✅ double
@override@JsonKey() final  bool isFree;
@override final  ItemCondition? condition;
// ✅ enum
 final  List<String> _images;
// ✅ enum
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String city;
@override@JsonKey(includeIfNull: false) final  double? geoLat;
@override@JsonKey(includeIfNull: false) final  double? geoLng;

/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemRequestCopyWith<_UpdateItemRequest> get copyWith => __$UpdateItemRequestCopyWithImpl<_UpdateItemRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateItemRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItemRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,categoryId,price,isFree,condition,const DeepCollectionEquality().hash(_images),city,geoLat,geoLng);

@override
String toString() {
  return 'UpdateItemRequest(title: $title, description: $description, categoryId: $categoryId, price: $price, isFree: $isFree, condition: $condition, images: $images, city: $city, geoLat: $geoLat, geoLng: $geoLng)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemRequestCopyWith<$Res> implements $UpdateItemRequestCopyWith<$Res> {
  factory _$UpdateItemRequestCopyWith(_UpdateItemRequest value, $Res Function(_UpdateItemRequest) _then) = __$UpdateItemRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String categoryId, double? price, bool isFree, ItemCondition? condition, List<String> images, String city,@JsonKey(includeIfNull: false) double? geoLat,@JsonKey(includeIfNull: false) double? geoLng
});




}
/// @nodoc
class __$UpdateItemRequestCopyWithImpl<$Res>
    implements _$UpdateItemRequestCopyWith<$Res> {
  __$UpdateItemRequestCopyWithImpl(this._self, this._then);

  final _UpdateItemRequest _self;
  final $Res Function(_UpdateItemRequest) _then;

/// Create a copy of UpdateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? categoryId = null,Object? price = freezed,Object? isFree = null,Object? condition = freezed,Object? images = null,Object? city = null,Object? geoLat = freezed,Object? geoLng = freezed,}) {
  return _then(_UpdateItemRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
