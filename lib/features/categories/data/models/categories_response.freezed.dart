// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoriesResponse {

 bool get success; CategoriesData get data; String get timestamp;
/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesResponseCopyWith<CategoriesResponse> get copyWith => _$CategoriesResponseCopyWithImpl<CategoriesResponse>(this as CategoriesResponse, _$identity);

  /// Serializes this CategoriesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CategoriesResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CategoriesResponseCopyWith<$Res>  {
  factory $CategoriesResponseCopyWith(CategoriesResponse value, $Res Function(CategoriesResponse) _then) = _$CategoriesResponseCopyWithImpl;
@useResult
$Res call({
 bool success, CategoriesData data, String timestamp
});


$CategoriesDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CategoriesResponseCopyWithImpl<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  _$CategoriesResponseCopyWithImpl(this._self, this._then);

  final CategoriesResponse _self;
  final $Res Function(CategoriesResponse) _then;

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoriesData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoriesDataCopyWith<$Res> get data {
  
  return $CategoriesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoriesResponse].
extension CategoriesResponsePatterns on CategoriesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoriesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoriesResponse value)  $default,){
final _that = this;
switch (_that) {
case _CategoriesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoriesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CategoriesData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CategoriesData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _CategoriesResponse():
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CategoriesData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CategoriesResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoriesResponse implements CategoriesResponse {
  const _CategoriesResponse({required this.success, required this.data, required this.timestamp});
  factory _CategoriesResponse.fromJson(Map<String, dynamic> json) => _$CategoriesResponseFromJson(json);

@override final  bool success;
@override final  CategoriesData data;
@override final  String timestamp;

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesResponseCopyWith<_CategoriesResponse> get copyWith => __$CategoriesResponseCopyWithImpl<_CategoriesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CategoriesResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CategoriesResponseCopyWith<$Res> implements $CategoriesResponseCopyWith<$Res> {
  factory _$CategoriesResponseCopyWith(_CategoriesResponse value, $Res Function(_CategoriesResponse) _then) = __$CategoriesResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, CategoriesData data, String timestamp
});


@override $CategoriesDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CategoriesResponseCopyWithImpl<$Res>
    implements _$CategoriesResponseCopyWith<$Res> {
  __$CategoriesResponseCopyWithImpl(this._self, this._then);

  final _CategoriesResponse _self;
  final $Res Function(_CategoriesResponse) _then;

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_CategoriesResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoriesData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CategoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoriesDataCopyWith<$Res> get data {
  
  return $CategoriesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CategoriesData {

 List<CategoryModel> get items; PaginationMeta get meta;
/// Create a copy of CategoriesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesDataCopyWith<CategoriesData> get copyWith => _$CategoriesDataCopyWithImpl<CategoriesData>(this as CategoriesData, _$identity);

  /// Serializes this CategoriesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),meta);

@override
String toString() {
  return 'CategoriesData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CategoriesDataCopyWith<$Res>  {
  factory $CategoriesDataCopyWith(CategoriesData value, $Res Function(CategoriesData) _then) = _$CategoriesDataCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> items, PaginationMeta meta
});


$PaginationMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$CategoriesDataCopyWithImpl<$Res>
    implements $CategoriesDataCopyWith<$Res> {
  _$CategoriesDataCopyWithImpl(this._self, this._then);

  final CategoriesData _self;
  final $Res Function(CategoriesData) _then;

/// Create a copy of CategoriesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}
/// Create a copy of CategoriesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoriesData].
extension CategoriesDataPatterns on CategoriesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoriesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoriesData value)  $default,){
final _that = this;
switch (_that) {
case _CategoriesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoriesData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoriesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> items,  PaginationMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesData() when $default != null:
return $default(_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> items,  PaginationMeta meta)  $default,) {final _that = this;
switch (_that) {
case _CategoriesData():
return $default(_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> items,  PaginationMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _CategoriesData() when $default != null:
return $default(_that.items,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoriesData implements CategoriesData {
  const _CategoriesData({required final  List<CategoryModel> items, required this.meta}): _items = items;
  factory _CategoriesData.fromJson(Map<String, dynamic> json) => _$CategoriesDataFromJson(json);

 final  List<CategoryModel> _items;
@override List<CategoryModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  PaginationMeta meta;

/// Create a copy of CategoriesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesDataCopyWith<_CategoriesData> get copyWith => __$CategoriesDataCopyWithImpl<_CategoriesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),meta);

@override
String toString() {
  return 'CategoriesData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CategoriesDataCopyWith<$Res> implements $CategoriesDataCopyWith<$Res> {
  factory _$CategoriesDataCopyWith(_CategoriesData value, $Res Function(_CategoriesData) _then) = __$CategoriesDataCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> items, PaginationMeta meta
});


@override $PaginationMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$CategoriesDataCopyWithImpl<$Res>
    implements _$CategoriesDataCopyWith<$Res> {
  __$CategoriesDataCopyWithImpl(this._self, this._then);

  final _CategoriesData _self;
  final $Res Function(_CategoriesData) _then;

/// Create a copy of CategoriesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_CategoriesData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}

/// Create a copy of CategoriesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$PaginationMeta {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<PaginationMeta> get copyWith => _$PaginationMetaCopyWithImpl<PaginationMeta>(this as PaginationMeta, _$identity);

  /// Serializes this PaginationMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'PaginationMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationMetaCopyWith<$Res>  {
  factory $PaginationMetaCopyWith(PaginationMeta value, $Res Function(PaginationMeta) _then) = _$PaginationMetaCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._self, this._then);

  final PaginationMeta _self;
  final $Res Function(PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationMeta].
extension PaginationMetaPatterns on PaginationMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationMeta value)  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationMeta value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta():
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int total,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationMeta implements PaginationMeta {
  const _PaginationMeta({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _PaginationMeta.fromJson(Map<String, dynamic> json) => _$PaginationMetaFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  int totalPages;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationMetaCopyWith<_PaginationMeta> get copyWith => __$PaginationMetaCopyWithImpl<_PaginationMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'PaginationMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationMetaCopyWith<$Res> implements $PaginationMetaCopyWith<$Res> {
  factory _$PaginationMetaCopyWith(_PaginationMeta value, $Res Function(_PaginationMeta) _then) = __$PaginationMetaCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$PaginationMetaCopyWithImpl<$Res>
    implements _$PaginationMetaCopyWith<$Res> {
  __$PaginationMetaCopyWithImpl(this._self, this._then);

  final _PaginationMeta _self;
  final $Res Function(_PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_PaginationMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CategoryDetailsResponse {

 bool get success; CategoryModel get data; String get timestamp;
/// Create a copy of CategoryDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailsResponseCopyWith<CategoryDetailsResponse> get copyWith => _$CategoryDetailsResponseCopyWithImpl<CategoryDetailsResponse>(this as CategoryDetailsResponse, _$identity);

  /// Serializes this CategoryDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CategoryDetailsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailsResponseCopyWith<$Res>  {
  factory $CategoryDetailsResponseCopyWith(CategoryDetailsResponse value, $Res Function(CategoryDetailsResponse) _then) = _$CategoryDetailsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, CategoryModel data, String timestamp
});


$CategoryModelCopyWith<$Res> get data;

}
/// @nodoc
class _$CategoryDetailsResponseCopyWithImpl<$Res>
    implements $CategoryDetailsResponseCopyWith<$Res> {
  _$CategoryDetailsResponseCopyWithImpl(this._self, this._then);

  final CategoryDetailsResponse _self;
  final $Res Function(CategoryDetailsResponse) _then;

/// Create a copy of CategoryDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryModel,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CategoryDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get data {
  
  return $CategoryModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDetailsResponse].
extension CategoryDetailsResponsePatterns on CategoryDetailsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailsResponse value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CategoryModel data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailsResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CategoryModel data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsResponse():
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CategoryModel data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailsResponse implements CategoryDetailsResponse {
  const _CategoryDetailsResponse({required this.success, required this.data, required this.timestamp});
  factory _CategoryDetailsResponse.fromJson(Map<String, dynamic> json) => _$CategoryDetailsResponseFromJson(json);

@override final  bool success;
@override final  CategoryModel data;
@override final  String timestamp;

/// Create a copy of CategoryDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailsResponseCopyWith<_CategoryDetailsResponse> get copyWith => __$CategoryDetailsResponseCopyWithImpl<_CategoryDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CategoryDetailsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailsResponseCopyWith<$Res> implements $CategoryDetailsResponseCopyWith<$Res> {
  factory _$CategoryDetailsResponseCopyWith(_CategoryDetailsResponse value, $Res Function(_CategoryDetailsResponse) _then) = __$CategoryDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, CategoryModel data, String timestamp
});


@override $CategoryModelCopyWith<$Res> get data;

}
/// @nodoc
class __$CategoryDetailsResponseCopyWithImpl<$Res>
    implements _$CategoryDetailsResponseCopyWith<$Res> {
  __$CategoryDetailsResponseCopyWithImpl(this._self, this._then);

  final _CategoryDetailsResponse _self;
  final $Res Function(_CategoryDetailsResponse) _then;

/// Create a copy of CategoryDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_CategoryDetailsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryModel,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CategoryDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get data {
  
  return $CategoryModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CategoryListResponse {

 bool get success; List<CategoryModel> get data; String get timestamp;
/// Create a copy of CategoryListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryListResponseCopyWith<CategoryListResponse> get copyWith => _$CategoryListResponseCopyWithImpl<CategoryListResponse>(this as CategoryListResponse, _$identity);

  /// Serializes this CategoryListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),timestamp);

@override
String toString() {
  return 'CategoryListResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CategoryListResponseCopyWith<$Res>  {
  factory $CategoryListResponseCopyWith(CategoryListResponse value, $Res Function(CategoryListResponse) _then) = _$CategoryListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<CategoryModel> data, String timestamp
});




}
/// @nodoc
class _$CategoryListResponseCopyWithImpl<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  _$CategoryListResponseCopyWithImpl(this._self, this._then);

  final CategoryListResponse _self;
  final $Res Function(CategoryListResponse) _then;

/// Create a copy of CategoryListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryListResponse].
extension CategoryListResponsePatterns on CategoryListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryListResponse value)  $default,){
final _that = this;
switch (_that) {
case _CategoryListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<CategoryModel> data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryListResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<CategoryModel> data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _CategoryListResponse():
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<CategoryModel> data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CategoryListResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryListResponse implements CategoryListResponse {
  const _CategoryListResponse({required this.success, required final  List<CategoryModel> data, required this.timestamp}): _data = data;
  factory _CategoryListResponse.fromJson(Map<String, dynamic> json) => _$CategoryListResponseFromJson(json);

@override final  bool success;
 final  List<CategoryModel> _data;
@override List<CategoryModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String timestamp;

/// Create a copy of CategoryListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryListResponseCopyWith<_CategoryListResponse> get copyWith => __$CategoryListResponseCopyWithImpl<_CategoryListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),timestamp);

@override
String toString() {
  return 'CategoryListResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CategoryListResponseCopyWith<$Res> implements $CategoryListResponseCopyWith<$Res> {
  factory _$CategoryListResponseCopyWith(_CategoryListResponse value, $Res Function(_CategoryListResponse) _then) = __$CategoryListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<CategoryModel> data, String timestamp
});




}
/// @nodoc
class __$CategoryListResponseCopyWithImpl<$Res>
    implements _$CategoryListResponseCopyWith<$Res> {
  __$CategoryListResponseCopyWithImpl(this._self, this._then);

  final _CategoryListResponse _self;
  final $Res Function(_CategoryListResponse) _then;

/// Create a copy of CategoryListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_CategoryListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
