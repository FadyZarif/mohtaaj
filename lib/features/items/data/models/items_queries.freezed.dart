// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemsQueries {

 int? get page; int? get limit; String? get categoryId; ItemCondition? get condition; ItemStatus? get status; String? get city; bool? get isFree; bool? get isFeatured; String? get search; SortBy? get sortBy; SortOrder? get sortOrder; double? get minLat; double? get maxLat; double? get minLng; double? get maxLng; String? get minPrice; String? get maxPrice;
/// Create a copy of ItemsQueries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsQueriesCopyWith<ItemsQueries> get copyWith => _$ItemsQueriesCopyWithImpl<ItemsQueries>(this as ItemsQueries, _$identity);

  /// Serializes this ItemsQueries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsQueries&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.status, status) || other.status == status)&&(identical(other.city, city) || other.city == city)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.search, search) || other.search == search)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.minLat, minLat) || other.minLat == minLat)&&(identical(other.maxLat, maxLat) || other.maxLat == maxLat)&&(identical(other.minLng, minLng) || other.minLng == minLng)&&(identical(other.maxLng, maxLng) || other.maxLng == maxLng)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,categoryId,condition,status,city,isFree,isFeatured,search,sortBy,sortOrder,minLat,maxLat,minLng,maxLng,minPrice,maxPrice);

@override
String toString() {
  return 'ItemsQueries(page: $page, limit: $limit, categoryId: $categoryId, condition: $condition, status: $status, city: $city, isFree: $isFree, isFeatured: $isFeatured, search: $search, sortBy: $sortBy, sortOrder: $sortOrder, minLat: $minLat, maxLat: $maxLat, minLng: $minLng, maxLng: $maxLng, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class $ItemsQueriesCopyWith<$Res>  {
  factory $ItemsQueriesCopyWith(ItemsQueries value, $Res Function(ItemsQueries) _then) = _$ItemsQueriesCopyWithImpl;
@useResult
$Res call({
 int? page, int? limit, String? categoryId, ItemCondition? condition, ItemStatus? status, String? city, bool? isFree, bool? isFeatured, String? search, SortBy? sortBy, SortOrder? sortOrder, double? minLat, double? maxLat, double? minLng, double? maxLng, String? minPrice, String? maxPrice
});




}
/// @nodoc
class _$ItemsQueriesCopyWithImpl<$Res>
    implements $ItemsQueriesCopyWith<$Res> {
  _$ItemsQueriesCopyWithImpl(this._self, this._then);

  final ItemsQueries _self;
  final $Res Function(ItemsQueries) _then;

/// Create a copy of ItemsQueries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? limit = freezed,Object? categoryId = freezed,Object? condition = freezed,Object? status = freezed,Object? city = freezed,Object? isFree = freezed,Object? isFeatured = freezed,Object? search = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? minLat = freezed,Object? maxLat = freezed,Object? minLng = freezed,Object? maxLng = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemStatus?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,isFree: freezed == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder?,minLat: freezed == minLat ? _self.minLat : minLat // ignore: cast_nullable_to_non_nullable
as double?,maxLat: freezed == maxLat ? _self.maxLat : maxLat // ignore: cast_nullable_to_non_nullable
as double?,minLng: freezed == minLng ? _self.minLng : minLng // ignore: cast_nullable_to_non_nullable
as double?,maxLng: freezed == maxLng ? _self.maxLng : maxLng // ignore: cast_nullable_to_non_nullable
as double?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemsQueries].
extension ItemsQueriesPatterns on ItemsQueries {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsQueries value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsQueries() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsQueries value)  $default,){
final _that = this;
switch (_that) {
case _ItemsQueries():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsQueries value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsQueries() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? page,  int? limit,  String? categoryId,  ItemCondition? condition,  ItemStatus? status,  String? city,  bool? isFree,  bool? isFeatured,  String? search,  SortBy? sortBy,  SortOrder? sortOrder,  double? minLat,  double? maxLat,  double? minLng,  double? maxLng,  String? minPrice,  String? maxPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsQueries() when $default != null:
return $default(_that.page,_that.limit,_that.categoryId,_that.condition,_that.status,_that.city,_that.isFree,_that.isFeatured,_that.search,_that.sortBy,_that.sortOrder,_that.minLat,_that.maxLat,_that.minLng,_that.maxLng,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? page,  int? limit,  String? categoryId,  ItemCondition? condition,  ItemStatus? status,  String? city,  bool? isFree,  bool? isFeatured,  String? search,  SortBy? sortBy,  SortOrder? sortOrder,  double? minLat,  double? maxLat,  double? minLng,  double? maxLng,  String? minPrice,  String? maxPrice)  $default,) {final _that = this;
switch (_that) {
case _ItemsQueries():
return $default(_that.page,_that.limit,_that.categoryId,_that.condition,_that.status,_that.city,_that.isFree,_that.isFeatured,_that.search,_that.sortBy,_that.sortOrder,_that.minLat,_that.maxLat,_that.minLng,_that.maxLng,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? page,  int? limit,  String? categoryId,  ItemCondition? condition,  ItemStatus? status,  String? city,  bool? isFree,  bool? isFeatured,  String? search,  SortBy? sortBy,  SortOrder? sortOrder,  double? minLat,  double? maxLat,  double? minLng,  double? maxLng,  String? minPrice,  String? maxPrice)?  $default,) {final _that = this;
switch (_that) {
case _ItemsQueries() when $default != null:
return $default(_that.page,_that.limit,_that.categoryId,_that.condition,_that.status,_that.city,_that.isFree,_that.isFeatured,_that.search,_that.sortBy,_that.sortOrder,_that.minLat,_that.maxLat,_that.minLng,_that.maxLng,_that.minPrice,_that.maxPrice);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ItemsQueries implements ItemsQueries {
  const _ItemsQueries({this.page, this.limit, this.categoryId, this.condition, this.status, this.city, this.isFree, this.isFeatured, this.search, this.sortBy, this.sortOrder, this.minLat, this.maxLat, this.minLng, this.maxLng, this.minPrice, this.maxPrice});
  factory _ItemsQueries.fromJson(Map<String, dynamic> json) => _$ItemsQueriesFromJson(json);

@override final  int? page;
@override final  int? limit;
@override final  String? categoryId;
@override final  ItemCondition? condition;
@override final  ItemStatus? status;
@override final  String? city;
@override final  bool? isFree;
@override final  bool? isFeatured;
@override final  String? search;
@override final  SortBy? sortBy;
@override final  SortOrder? sortOrder;
@override final  double? minLat;
@override final  double? maxLat;
@override final  double? minLng;
@override final  double? maxLng;
@override final  String? minPrice;
@override final  String? maxPrice;

/// Create a copy of ItemsQueries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsQueriesCopyWith<_ItemsQueries> get copyWith => __$ItemsQueriesCopyWithImpl<_ItemsQueries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsQueriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsQueries&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.status, status) || other.status == status)&&(identical(other.city, city) || other.city == city)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.search, search) || other.search == search)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.minLat, minLat) || other.minLat == minLat)&&(identical(other.maxLat, maxLat) || other.maxLat == maxLat)&&(identical(other.minLng, minLng) || other.minLng == minLng)&&(identical(other.maxLng, maxLng) || other.maxLng == maxLng)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,categoryId,condition,status,city,isFree,isFeatured,search,sortBy,sortOrder,minLat,maxLat,minLng,maxLng,minPrice,maxPrice);

@override
String toString() {
  return 'ItemsQueries(page: $page, limit: $limit, categoryId: $categoryId, condition: $condition, status: $status, city: $city, isFree: $isFree, isFeatured: $isFeatured, search: $search, sortBy: $sortBy, sortOrder: $sortOrder, minLat: $minLat, maxLat: $maxLat, minLng: $minLng, maxLng: $maxLng, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$ItemsQueriesCopyWith<$Res> implements $ItemsQueriesCopyWith<$Res> {
  factory _$ItemsQueriesCopyWith(_ItemsQueries value, $Res Function(_ItemsQueries) _then) = __$ItemsQueriesCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? limit, String? categoryId, ItemCondition? condition, ItemStatus? status, String? city, bool? isFree, bool? isFeatured, String? search, SortBy? sortBy, SortOrder? sortOrder, double? minLat, double? maxLat, double? minLng, double? maxLng, String? minPrice, String? maxPrice
});




}
/// @nodoc
class __$ItemsQueriesCopyWithImpl<$Res>
    implements _$ItemsQueriesCopyWith<$Res> {
  __$ItemsQueriesCopyWithImpl(this._self, this._then);

  final _ItemsQueries _self;
  final $Res Function(_ItemsQueries) _then;

/// Create a copy of ItemsQueries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? limit = freezed,Object? categoryId = freezed,Object? condition = freezed,Object? status = freezed,Object? city = freezed,Object? isFree = freezed,Object? isFeatured = freezed,Object? search = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? minLat = freezed,Object? maxLat = freezed,Object? minLng = freezed,Object? maxLng = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_ItemsQueries(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemStatus?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,isFree: freezed == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder?,minLat: freezed == minLat ? _self.minLat : minLat // ignore: cast_nullable_to_non_nullable
as double?,maxLat: freezed == maxLat ? _self.maxLat : maxLat // ignore: cast_nullable_to_non_nullable
as double?,minLng: freezed == minLng ? _self.minLng : minLng // ignore: cast_nullable_to_non_nullable
as double?,maxLng: freezed == maxLng ? _self.maxLng : maxLng // ignore: cast_nullable_to_non_nullable
as double?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
