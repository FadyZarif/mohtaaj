// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateItemRequest {

 String get title; String get description; String get categoryId; ItemCondition? get condition; List<String> get images; String get city;@JsonKey(includeIfNull: false) double? get geoLat;@JsonKey(includeIfNull: false) double? get geoLng; double? get price; bool get isFree;
/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateItemRequestCopyWith<CreateItemRequest> get copyWith => _$CreateItemRequestCopyWithImpl<CreateItemRequest>(this as CreateItemRequest, _$identity);

  /// Serializes this CreateItemRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateItemRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,categoryId,condition,const DeepCollectionEquality().hash(images),city,geoLat,geoLng,price,isFree);

@override
String toString() {
  return 'CreateItemRequest(title: $title, description: $description, categoryId: $categoryId, condition: $condition, images: $images, city: $city, geoLat: $geoLat, geoLng: $geoLng, price: $price, isFree: $isFree)';
}


}

/// @nodoc
abstract mixin class $CreateItemRequestCopyWith<$Res>  {
  factory $CreateItemRequestCopyWith(CreateItemRequest value, $Res Function(CreateItemRequest) _then) = _$CreateItemRequestCopyWithImpl;
@useResult
$Res call({
 String title, String description, String categoryId, ItemCondition? condition, List<String> images, String city,@JsonKey(includeIfNull: false) double? geoLat,@JsonKey(includeIfNull: false) double? geoLng, double? price, bool isFree
});




}
/// @nodoc
class _$CreateItemRequestCopyWithImpl<$Res>
    implements $CreateItemRequestCopyWith<$Res> {
  _$CreateItemRequestCopyWithImpl(this._self, this._then);

  final CreateItemRequest _self;
  final $Res Function(CreateItemRequest) _then;

/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? categoryId = null,Object? condition = freezed,Object? images = null,Object? city = null,Object? geoLat = freezed,Object? geoLng = freezed,Object? price = freezed,Object? isFree = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateItemRequest].
extension CreateItemRequestPatterns on CreateItemRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateItemRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateItemRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateItemRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateItemRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateItemRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateItemRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String categoryId,  ItemCondition? condition,  List<String> images,  String city, @JsonKey(includeIfNull: false)  double? geoLat, @JsonKey(includeIfNull: false)  double? geoLng,  double? price,  bool isFree)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateItemRequest() when $default != null:
return $default(_that.title,_that.description,_that.categoryId,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String categoryId,  ItemCondition? condition,  List<String> images,  String city, @JsonKey(includeIfNull: false)  double? geoLat, @JsonKey(includeIfNull: false)  double? geoLng,  double? price,  bool isFree)  $default,) {final _that = this;
switch (_that) {
case _CreateItemRequest():
return $default(_that.title,_that.description,_that.categoryId,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String categoryId,  ItemCondition? condition,  List<String> images,  String city, @JsonKey(includeIfNull: false)  double? geoLat, @JsonKey(includeIfNull: false)  double? geoLng,  double? price,  bool isFree)?  $default,) {final _that = this;
switch (_that) {
case _CreateItemRequest() when $default != null:
return $default(_that.title,_that.description,_that.categoryId,_that.condition,_that.images,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateItemRequest implements CreateItemRequest {
  const _CreateItemRequest({required this.title, required this.description, required this.categoryId, this.condition, required final  List<String> images, required this.city, @JsonKey(includeIfNull: false) this.geoLat, @JsonKey(includeIfNull: false) this.geoLng, this.price, required this.isFree}): _images = images;
  factory _CreateItemRequest.fromJson(Map<String, dynamic> json) => _$CreateItemRequestFromJson(json);

@override final  String title;
@override final  String description;
@override final  String categoryId;
@override final  ItemCondition? condition;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String city;
@override@JsonKey(includeIfNull: false) final  double? geoLat;
@override@JsonKey(includeIfNull: false) final  double? geoLng;
@override final  double? price;
@override final  bool isFree;

/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateItemRequestCopyWith<_CreateItemRequest> get copyWith => __$CreateItemRequestCopyWithImpl<_CreateItemRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateItemRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateItemRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,categoryId,condition,const DeepCollectionEquality().hash(_images),city,geoLat,geoLng,price,isFree);

@override
String toString() {
  return 'CreateItemRequest(title: $title, description: $description, categoryId: $categoryId, condition: $condition, images: $images, city: $city, geoLat: $geoLat, geoLng: $geoLng, price: $price, isFree: $isFree)';
}


}

/// @nodoc
abstract mixin class _$CreateItemRequestCopyWith<$Res> implements $CreateItemRequestCopyWith<$Res> {
  factory _$CreateItemRequestCopyWith(_CreateItemRequest value, $Res Function(_CreateItemRequest) _then) = __$CreateItemRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String categoryId, ItemCondition? condition, List<String> images, String city,@JsonKey(includeIfNull: false) double? geoLat,@JsonKey(includeIfNull: false) double? geoLng, double? price, bool isFree
});




}
/// @nodoc
class __$CreateItemRequestCopyWithImpl<$Res>
    implements _$CreateItemRequestCopyWith<$Res> {
  __$CreateItemRequestCopyWithImpl(this._self, this._then);

  final _CreateItemRequest _self;
  final $Res Function(_CreateItemRequest) _then;

/// Create a copy of CreateItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? categoryId = null,Object? condition = freezed,Object? images = null,Object? city = null,Object? geoLat = freezed,Object? geoLng = freezed,Object? price = freezed,Object? isFree = null,}) {
  return _then(_CreateItemRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
