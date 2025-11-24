// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_count_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteCountResponse {

 bool get success; FavoriteCountData get data; String get timestamp;
/// Create a copy of FavoriteCountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCountResponseCopyWith<FavoriteCountResponse> get copyWith => _$FavoriteCountResponseCopyWithImpl<FavoriteCountResponse>(this as FavoriteCountResponse, _$identity);

  /// Serializes this FavoriteCountResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteCountResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'FavoriteCountResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $FavoriteCountResponseCopyWith<$Res>  {
  factory $FavoriteCountResponseCopyWith(FavoriteCountResponse value, $Res Function(FavoriteCountResponse) _then) = _$FavoriteCountResponseCopyWithImpl;
@useResult
$Res call({
 bool success, FavoriteCountData data, String timestamp
});


$FavoriteCountDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FavoriteCountResponseCopyWithImpl<$Res>
    implements $FavoriteCountResponseCopyWith<$Res> {
  _$FavoriteCountResponseCopyWithImpl(this._self, this._then);

  final FavoriteCountResponse _self;
  final $Res Function(FavoriteCountResponse) _then;

/// Create a copy of FavoriteCountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FavoriteCountData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of FavoriteCountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteCountDataCopyWith<$Res> get data {
  
  return $FavoriteCountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoriteCountResponse].
extension FavoriteCountResponsePatterns on FavoriteCountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteCountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteCountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteCountResponse value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteCountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteCountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteCountResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  FavoriteCountData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteCountResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  FavoriteCountData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _FavoriteCountResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  FavoriteCountData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteCountResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteCountResponse implements FavoriteCountResponse {
  const _FavoriteCountResponse({required this.success, required this.data, required this.timestamp});
  factory _FavoriteCountResponse.fromJson(Map<String, dynamic> json) => _$FavoriteCountResponseFromJson(json);

@override final  bool success;
@override final  FavoriteCountData data;
@override final  String timestamp;

/// Create a copy of FavoriteCountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteCountResponseCopyWith<_FavoriteCountResponse> get copyWith => __$FavoriteCountResponseCopyWithImpl<_FavoriteCountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteCountResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteCountResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'FavoriteCountResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$FavoriteCountResponseCopyWith<$Res> implements $FavoriteCountResponseCopyWith<$Res> {
  factory _$FavoriteCountResponseCopyWith(_FavoriteCountResponse value, $Res Function(_FavoriteCountResponse) _then) = __$FavoriteCountResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, FavoriteCountData data, String timestamp
});


@override $FavoriteCountDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FavoriteCountResponseCopyWithImpl<$Res>
    implements _$FavoriteCountResponseCopyWith<$Res> {
  __$FavoriteCountResponseCopyWithImpl(this._self, this._then);

  final _FavoriteCountResponse _self;
  final $Res Function(_FavoriteCountResponse) _then;

/// Create a copy of FavoriteCountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_FavoriteCountResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FavoriteCountData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of FavoriteCountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteCountDataCopyWith<$Res> get data {
  
  return $FavoriteCountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FavoriteCountData {

 String get itemId; int get count;
/// Create a copy of FavoriteCountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCountDataCopyWith<FavoriteCountData> get copyWith => _$FavoriteCountDataCopyWithImpl<FavoriteCountData>(this as FavoriteCountData, _$identity);

  /// Serializes this FavoriteCountData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteCountData&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,count);

@override
String toString() {
  return 'FavoriteCountData(itemId: $itemId, count: $count)';
}


}

/// @nodoc
abstract mixin class $FavoriteCountDataCopyWith<$Res>  {
  factory $FavoriteCountDataCopyWith(FavoriteCountData value, $Res Function(FavoriteCountData) _then) = _$FavoriteCountDataCopyWithImpl;
@useResult
$Res call({
 String itemId, int count
});




}
/// @nodoc
class _$FavoriteCountDataCopyWithImpl<$Res>
    implements $FavoriteCountDataCopyWith<$Res> {
  _$FavoriteCountDataCopyWithImpl(this._self, this._then);

  final FavoriteCountData _self;
  final $Res Function(FavoriteCountData) _then;

/// Create a copy of FavoriteCountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? count = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteCountData].
extension FavoriteCountDataPatterns on FavoriteCountData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteCountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteCountData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteCountData value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteCountData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteCountData value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteCountData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteCountData() when $default != null:
return $default(_that.itemId,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  int count)  $default,) {final _that = this;
switch (_that) {
case _FavoriteCountData():
return $default(_that.itemId,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  int count)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteCountData() when $default != null:
return $default(_that.itemId,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteCountData implements FavoriteCountData {
  const _FavoriteCountData({required this.itemId, required this.count});
  factory _FavoriteCountData.fromJson(Map<String, dynamic> json) => _$FavoriteCountDataFromJson(json);

@override final  String itemId;
@override final  int count;

/// Create a copy of FavoriteCountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteCountDataCopyWith<_FavoriteCountData> get copyWith => __$FavoriteCountDataCopyWithImpl<_FavoriteCountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteCountDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteCountData&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,count);

@override
String toString() {
  return 'FavoriteCountData(itemId: $itemId, count: $count)';
}


}

/// @nodoc
abstract mixin class _$FavoriteCountDataCopyWith<$Res> implements $FavoriteCountDataCopyWith<$Res> {
  factory _$FavoriteCountDataCopyWith(_FavoriteCountData value, $Res Function(_FavoriteCountData) _then) = __$FavoriteCountDataCopyWithImpl;
@override @useResult
$Res call({
 String itemId, int count
});




}
/// @nodoc
class __$FavoriteCountDataCopyWithImpl<$Res>
    implements _$FavoriteCountDataCopyWith<$Res> {
  __$FavoriteCountDataCopyWithImpl(this._self, this._then);

  final _FavoriteCountData _self;
  final $Res Function(_FavoriteCountData) _then;

/// Create a copy of FavoriteCountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? count = null,}) {
  return _then(_FavoriteCountData(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
