// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemsResponse {

 bool get success; ItemsData get data; String get timestamp;
/// Create a copy of ItemsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsResponseCopyWith<ItemsResponse> get copyWith => _$ItemsResponseCopyWithImpl<ItemsResponse>(this as ItemsResponse, _$identity);

  /// Serializes this ItemsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'ItemsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ItemsResponseCopyWith<$Res>  {
  factory $ItemsResponseCopyWith(ItemsResponse value, $Res Function(ItemsResponse) _then) = _$ItemsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ItemsData data, String timestamp
});


$ItemsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ItemsResponseCopyWithImpl<$Res>
    implements $ItemsResponseCopyWith<$Res> {
  _$ItemsResponseCopyWithImpl(this._self, this._then);

  final ItemsResponse _self;
  final $Res Function(ItemsResponse) _then;

/// Create a copy of ItemsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ItemsData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ItemsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsDataCopyWith<$Res> get data {
  
  return $ItemsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsResponse].
extension ItemsResponsePatterns on ItemsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ItemsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ItemsData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ItemsData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _ItemsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ItemsData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ItemsResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemsResponse implements ItemsResponse {
  const _ItemsResponse({required this.success, required this.data, required this.timestamp});
  factory _ItemsResponse.fromJson(Map<String, dynamic> json) => _$ItemsResponseFromJson(json);

@override final  bool success;
@override final  ItemsData data;
@override final  String timestamp;

/// Create a copy of ItemsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsResponseCopyWith<_ItemsResponse> get copyWith => __$ItemsResponseCopyWithImpl<_ItemsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'ItemsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ItemsResponseCopyWith<$Res> implements $ItemsResponseCopyWith<$Res> {
  factory _$ItemsResponseCopyWith(_ItemsResponse value, $Res Function(_ItemsResponse) _then) = __$ItemsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ItemsData data, String timestamp
});


@override $ItemsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ItemsResponseCopyWithImpl<$Res>
    implements _$ItemsResponseCopyWith<$Res> {
  __$ItemsResponseCopyWithImpl(this._self, this._then);

  final _ItemsResponse _self;
  final $Res Function(_ItemsResponse) _then;

/// Create a copy of ItemsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_ItemsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ItemsData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ItemsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsDataCopyWith<$Res> get data {
  
  return $ItemsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ItemsData {

 List<ItemModel> get items; ItemsPaginationMeta get meta;
/// Create a copy of ItemsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsDataCopyWith<ItemsData> get copyWith => _$ItemsDataCopyWithImpl<ItemsData>(this as ItemsData, _$identity);

  /// Serializes this ItemsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),meta);

@override
String toString() {
  return 'ItemsData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ItemsDataCopyWith<$Res>  {
  factory $ItemsDataCopyWith(ItemsData value, $Res Function(ItemsData) _then) = _$ItemsDataCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items, ItemsPaginationMeta meta
});


$ItemsPaginationMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ItemsDataCopyWithImpl<$Res>
    implements $ItemsDataCopyWith<$Res> {
  _$ItemsDataCopyWithImpl(this._self, this._then);

  final ItemsData _self;
  final $Res Function(ItemsData) _then;

/// Create a copy of ItemsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ItemsPaginationMeta,
  ));
}
/// Create a copy of ItemsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsPaginationMetaCopyWith<$Res> get meta {
  
  return $ItemsPaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsData].
extension ItemsDataPatterns on ItemsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsData value)  $default,){
final _that = this;
switch (_that) {
case _ItemsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsData value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ItemModel> items,  ItemsPaginationMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ItemModel> items,  ItemsPaginationMeta meta)  $default,) {final _that = this;
switch (_that) {
case _ItemsData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ItemModel> items,  ItemsPaginationMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _ItemsData() when $default != null:
return $default(_that.items,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemsData implements ItemsData {
  const _ItemsData({required final  List<ItemModel> items, required this.meta}): _items = items;
  factory _ItemsData.fromJson(Map<String, dynamic> json) => _$ItemsDataFromJson(json);

 final  List<ItemModel> _items;
@override List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  ItemsPaginationMeta meta;

/// Create a copy of ItemsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsDataCopyWith<_ItemsData> get copyWith => __$ItemsDataCopyWithImpl<_ItemsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),meta);

@override
String toString() {
  return 'ItemsData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ItemsDataCopyWith<$Res> implements $ItemsDataCopyWith<$Res> {
  factory _$ItemsDataCopyWith(_ItemsData value, $Res Function(_ItemsData) _then) = __$ItemsDataCopyWithImpl;
@override @useResult
$Res call({
 List<ItemModel> items, ItemsPaginationMeta meta
});


@override $ItemsPaginationMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ItemsDataCopyWithImpl<$Res>
    implements _$ItemsDataCopyWith<$Res> {
  __$ItemsDataCopyWithImpl(this._self, this._then);

  final _ItemsData _self;
  final $Res Function(_ItemsData) _then;

/// Create a copy of ItemsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_ItemsData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ItemsPaginationMeta,
  ));
}

/// Create a copy of ItemsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsPaginationMetaCopyWith<$Res> get meta {
  
  return $ItemsPaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ItemsPaginationMeta {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of ItemsPaginationMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsPaginationMetaCopyWith<ItemsPaginationMeta> get copyWith => _$ItemsPaginationMetaCopyWithImpl<ItemsPaginationMeta>(this as ItemsPaginationMeta, _$identity);

  /// Serializes this ItemsPaginationMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsPaginationMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'ItemsPaginationMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ItemsPaginationMetaCopyWith<$Res>  {
  factory $ItemsPaginationMetaCopyWith(ItemsPaginationMeta value, $Res Function(ItemsPaginationMeta) _then) = _$ItemsPaginationMetaCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$ItemsPaginationMetaCopyWithImpl<$Res>
    implements $ItemsPaginationMetaCopyWith<$Res> {
  _$ItemsPaginationMetaCopyWithImpl(this._self, this._then);

  final ItemsPaginationMeta _self;
  final $Res Function(ItemsPaginationMeta) _then;

/// Create a copy of ItemsPaginationMeta
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


/// Adds pattern-matching-related methods to [ItemsPaginationMeta].
extension ItemsPaginationMetaPatterns on ItemsPaginationMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsPaginationMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsPaginationMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsPaginationMeta value)  $default,){
final _that = this;
switch (_that) {
case _ItemsPaginationMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsPaginationMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsPaginationMeta() when $default != null:
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
case _ItemsPaginationMeta() when $default != null:
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
case _ItemsPaginationMeta():
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
case _ItemsPaginationMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemsPaginationMeta implements ItemsPaginationMeta {
  const _ItemsPaginationMeta({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _ItemsPaginationMeta.fromJson(Map<String, dynamic> json) => _$ItemsPaginationMetaFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  int totalPages;

/// Create a copy of ItemsPaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsPaginationMetaCopyWith<_ItemsPaginationMeta> get copyWith => __$ItemsPaginationMetaCopyWithImpl<_ItemsPaginationMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsPaginationMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsPaginationMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'ItemsPaginationMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ItemsPaginationMetaCopyWith<$Res> implements $ItemsPaginationMetaCopyWith<$Res> {
  factory _$ItemsPaginationMetaCopyWith(_ItemsPaginationMeta value, $Res Function(_ItemsPaginationMeta) _then) = __$ItemsPaginationMetaCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$ItemsPaginationMetaCopyWithImpl<$Res>
    implements _$ItemsPaginationMetaCopyWith<$Res> {
  __$ItemsPaginationMetaCopyWithImpl(this._self, this._then);

  final _ItemsPaginationMeta _self;
  final $Res Function(_ItemsPaginationMeta) _then;

/// Create a copy of ItemsPaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_ItemsPaginationMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ItemDetailsResponse {

 bool get success; ItemModel get data; String get timestamp;
/// Create a copy of ItemDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemDetailsResponseCopyWith<ItemDetailsResponse> get copyWith => _$ItemDetailsResponseCopyWithImpl<ItemDetailsResponse>(this as ItemDetailsResponse, _$identity);

  /// Serializes this ItemDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemDetailsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'ItemDetailsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ItemDetailsResponseCopyWith<$Res>  {
  factory $ItemDetailsResponseCopyWith(ItemDetailsResponse value, $Res Function(ItemDetailsResponse) _then) = _$ItemDetailsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ItemModel data, String timestamp
});


$ItemModelCopyWith<$Res> get data;

}
/// @nodoc
class _$ItemDetailsResponseCopyWithImpl<$Res>
    implements $ItemDetailsResponseCopyWith<$Res> {
  _$ItemDetailsResponseCopyWithImpl(this._self, this._then);

  final ItemDetailsResponse _self;
  final $Res Function(ItemDetailsResponse) _then;

/// Create a copy of ItemDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ItemModel,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ItemDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res> get data {
  
  return $ItemModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemDetailsResponse].
extension ItemDetailsResponsePatterns on ItemDetailsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemDetailsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemDetailsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ItemDetailsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemDetailsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ItemDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ItemModel data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ItemModel data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _ItemDetailsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ItemModel data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ItemDetailsResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemDetailsResponse implements ItemDetailsResponse {
  const _ItemDetailsResponse({required this.success, required this.data, required this.timestamp});
  factory _ItemDetailsResponse.fromJson(Map<String, dynamic> json) => _$ItemDetailsResponseFromJson(json);

@override final  bool success;
@override final  ItemModel data;
@override final  String timestamp;

/// Create a copy of ItemDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemDetailsResponseCopyWith<_ItemDetailsResponse> get copyWith => __$ItemDetailsResponseCopyWithImpl<_ItemDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemDetailsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemDetailsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'ItemDetailsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ItemDetailsResponseCopyWith<$Res> implements $ItemDetailsResponseCopyWith<$Res> {
  factory _$ItemDetailsResponseCopyWith(_ItemDetailsResponse value, $Res Function(_ItemDetailsResponse) _then) = __$ItemDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ItemModel data, String timestamp
});


@override $ItemModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ItemDetailsResponseCopyWithImpl<$Res>
    implements _$ItemDetailsResponseCopyWith<$Res> {
  __$ItemDetailsResponseCopyWithImpl(this._self, this._then);

  final _ItemDetailsResponse _self;
  final $Res Function(_ItemDetailsResponse) _then;

/// Create a copy of ItemDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_ItemDetailsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ItemModel,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ItemDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res> get data {
  
  return $ItemModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ItemListResponse {

 bool get success; List<ItemModel> get data; String get timestamp;
/// Create a copy of ItemListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemListResponseCopyWith<ItemListResponse> get copyWith => _$ItemListResponseCopyWithImpl<ItemListResponse>(this as ItemListResponse, _$identity);

  /// Serializes this ItemListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),timestamp);

@override
String toString() {
  return 'ItemListResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ItemListResponseCopyWith<$Res>  {
  factory $ItemListResponseCopyWith(ItemListResponse value, $Res Function(ItemListResponse) _then) = _$ItemListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<ItemModel> data, String timestamp
});




}
/// @nodoc
class _$ItemListResponseCopyWithImpl<$Res>
    implements $ItemListResponseCopyWith<$Res> {
  _$ItemListResponseCopyWithImpl(this._self, this._then);

  final ItemListResponse _self;
  final $Res Function(ItemListResponse) _then;

/// Create a copy of ItemListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemListResponse].
extension ItemListResponsePatterns on ItemListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ItemListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ItemListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ItemModel> data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ItemModel> data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _ItemListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ItemModel> data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ItemListResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemListResponse implements ItemListResponse {
  const _ItemListResponse({required this.success, required final  List<ItemModel> data, required this.timestamp}): _data = data;
  factory _ItemListResponse.fromJson(Map<String, dynamic> json) => _$ItemListResponseFromJson(json);

@override final  bool success;
 final  List<ItemModel> _data;
@override List<ItemModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String timestamp;

/// Create a copy of ItemListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemListResponseCopyWith<_ItemListResponse> get copyWith => __$ItemListResponseCopyWithImpl<_ItemListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),timestamp);

@override
String toString() {
  return 'ItemListResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ItemListResponseCopyWith<$Res> implements $ItemListResponseCopyWith<$Res> {
  factory _$ItemListResponseCopyWith(_ItemListResponse value, $Res Function(_ItemListResponse) _then) = __$ItemListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ItemModel> data, String timestamp
});




}
/// @nodoc
class __$ItemListResponseCopyWithImpl<$Res>
    implements _$ItemListResponseCopyWith<$Res> {
  __$ItemListResponseCopyWithImpl(this._self, this._then);

  final _ItemListResponse _self;
  final $Res Function(_ItemListResponse) _then;

/// Create a copy of ItemListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_ItemListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
