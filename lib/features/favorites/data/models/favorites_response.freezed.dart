// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritesResponse {

 bool get success; FavoritesData get data; String get timestamp;
/// Create a copy of FavoritesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesResponseCopyWith<FavoritesResponse> get copyWith => _$FavoritesResponseCopyWithImpl<FavoritesResponse>(this as FavoritesResponse, _$identity);

  /// Serializes this FavoritesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'FavoritesResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $FavoritesResponseCopyWith<$Res>  {
  factory $FavoritesResponseCopyWith(FavoritesResponse value, $Res Function(FavoritesResponse) _then) = _$FavoritesResponseCopyWithImpl;
@useResult
$Res call({
 bool success, FavoritesData data, String timestamp
});


$FavoritesDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FavoritesResponseCopyWithImpl<$Res>
    implements $FavoritesResponseCopyWith<$Res> {
  _$FavoritesResponseCopyWithImpl(this._self, this._then);

  final FavoritesResponse _self;
  final $Res Function(FavoritesResponse) _then;

/// Create a copy of FavoritesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FavoritesData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of FavoritesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoritesDataCopyWith<$Res> get data {
  
  return $FavoritesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoritesResponse].
extension FavoritesResponsePatterns on FavoritesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritesResponse value)  $default,){
final _that = this;
switch (_that) {
case _FavoritesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  FavoritesData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  FavoritesData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _FavoritesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  FavoritesData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _FavoritesResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoritesResponse implements FavoritesResponse {
  const _FavoritesResponse({required this.success, required this.data, required this.timestamp});
  factory _FavoritesResponse.fromJson(Map<String, dynamic> json) => _$FavoritesResponseFromJson(json);

@override final  bool success;
@override final  FavoritesData data;
@override final  String timestamp;

/// Create a copy of FavoritesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesResponseCopyWith<_FavoritesResponse> get copyWith => __$FavoritesResponseCopyWithImpl<_FavoritesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoritesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'FavoritesResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$FavoritesResponseCopyWith<$Res> implements $FavoritesResponseCopyWith<$Res> {
  factory _$FavoritesResponseCopyWith(_FavoritesResponse value, $Res Function(_FavoritesResponse) _then) = __$FavoritesResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, FavoritesData data, String timestamp
});


@override $FavoritesDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FavoritesResponseCopyWithImpl<$Res>
    implements _$FavoritesResponseCopyWith<$Res> {
  __$FavoritesResponseCopyWithImpl(this._self, this._then);

  final _FavoritesResponse _self;
  final $Res Function(_FavoritesResponse) _then;

/// Create a copy of FavoritesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_FavoritesResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FavoritesData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of FavoritesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoritesDataCopyWith<$Res> get data {
  
  return $FavoritesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FavoritesData {

 List<ItemModel> get items; FavoritesMeta get meta;
/// Create a copy of FavoritesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesDataCopyWith<FavoritesData> get copyWith => _$FavoritesDataCopyWithImpl<FavoritesData>(this as FavoritesData, _$identity);

  /// Serializes this FavoritesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),meta);

@override
String toString() {
  return 'FavoritesData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $FavoritesDataCopyWith<$Res>  {
  factory $FavoritesDataCopyWith(FavoritesData value, $Res Function(FavoritesData) _then) = _$FavoritesDataCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items, FavoritesMeta meta
});


$FavoritesMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$FavoritesDataCopyWithImpl<$Res>
    implements $FavoritesDataCopyWith<$Res> {
  _$FavoritesDataCopyWithImpl(this._self, this._then);

  final FavoritesData _self;
  final $Res Function(FavoritesData) _then;

/// Create a copy of FavoritesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FavoritesMeta,
  ));
}
/// Create a copy of FavoritesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoritesMetaCopyWith<$Res> get meta {
  
  return $FavoritesMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoritesData].
extension FavoritesDataPatterns on FavoritesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritesData value)  $default,){
final _that = this;
switch (_that) {
case _FavoritesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritesData value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ItemModel> items,  FavoritesMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritesData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ItemModel> items,  FavoritesMeta meta)  $default,) {final _that = this;
switch (_that) {
case _FavoritesData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ItemModel> items,  FavoritesMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _FavoritesData() when $default != null:
return $default(_that.items,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoritesData implements FavoritesData {
  const _FavoritesData({required final  List<ItemModel> items, required this.meta}): _items = items;
  factory _FavoritesData.fromJson(Map<String, dynamic> json) => _$FavoritesDataFromJson(json);

 final  List<ItemModel> _items;
@override List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  FavoritesMeta meta;

/// Create a copy of FavoritesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesDataCopyWith<_FavoritesData> get copyWith => __$FavoritesDataCopyWithImpl<_FavoritesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoritesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),meta);

@override
String toString() {
  return 'FavoritesData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FavoritesDataCopyWith<$Res> implements $FavoritesDataCopyWith<$Res> {
  factory _$FavoritesDataCopyWith(_FavoritesData value, $Res Function(_FavoritesData) _then) = __$FavoritesDataCopyWithImpl;
@override @useResult
$Res call({
 List<ItemModel> items, FavoritesMeta meta
});


@override $FavoritesMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$FavoritesDataCopyWithImpl<$Res>
    implements _$FavoritesDataCopyWith<$Res> {
  __$FavoritesDataCopyWithImpl(this._self, this._then);

  final _FavoritesData _self;
  final $Res Function(_FavoritesData) _then;

/// Create a copy of FavoritesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_FavoritesData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FavoritesMeta,
  ));
}

/// Create a copy of FavoritesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoritesMetaCopyWith<$Res> get meta {
  
  return $FavoritesMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$FavoritesMeta {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of FavoritesMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesMetaCopyWith<FavoritesMeta> get copyWith => _$FavoritesMetaCopyWithImpl<FavoritesMeta>(this as FavoritesMeta, _$identity);

  /// Serializes this FavoritesMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'FavoritesMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $FavoritesMetaCopyWith<$Res>  {
  factory $FavoritesMetaCopyWith(FavoritesMeta value, $Res Function(FavoritesMeta) _then) = _$FavoritesMetaCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$FavoritesMetaCopyWithImpl<$Res>
    implements $FavoritesMetaCopyWith<$Res> {
  _$FavoritesMetaCopyWithImpl(this._self, this._then);

  final FavoritesMeta _self;
  final $Res Function(FavoritesMeta) _then;

/// Create a copy of FavoritesMeta
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


/// Adds pattern-matching-related methods to [FavoritesMeta].
extension FavoritesMetaPatterns on FavoritesMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritesMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritesMeta value)  $default,){
final _that = this;
switch (_that) {
case _FavoritesMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritesMeta value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritesMeta() when $default != null:
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
case _FavoritesMeta() when $default != null:
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
case _FavoritesMeta():
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
case _FavoritesMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoritesMeta implements FavoritesMeta {
  const _FavoritesMeta({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _FavoritesMeta.fromJson(Map<String, dynamic> json) => _$FavoritesMetaFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  int totalPages;

/// Create a copy of FavoritesMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesMetaCopyWith<_FavoritesMeta> get copyWith => __$FavoritesMetaCopyWithImpl<_FavoritesMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoritesMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'FavoritesMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$FavoritesMetaCopyWith<$Res> implements $FavoritesMetaCopyWith<$Res> {
  factory _$FavoritesMetaCopyWith(_FavoritesMeta value, $Res Function(_FavoritesMeta) _then) = __$FavoritesMetaCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$FavoritesMetaCopyWithImpl<$Res>
    implements _$FavoritesMetaCopyWith<$Res> {
  __$FavoritesMetaCopyWithImpl(this._self, this._then);

  final _FavoritesMeta _self;
  final $Res Function(_FavoritesMeta) _then;

/// Create a copy of FavoritesMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_FavoritesMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
