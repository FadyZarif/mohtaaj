// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckFavoriteResponse {

 bool get success; CheckFavoriteData get data; String get timestamp;
/// Create a copy of CheckFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckFavoriteResponseCopyWith<CheckFavoriteResponse> get copyWith => _$CheckFavoriteResponseCopyWithImpl<CheckFavoriteResponse>(this as CheckFavoriteResponse, _$identity);

  /// Serializes this CheckFavoriteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckFavoriteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CheckFavoriteResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CheckFavoriteResponseCopyWith<$Res>  {
  factory $CheckFavoriteResponseCopyWith(CheckFavoriteResponse value, $Res Function(CheckFavoriteResponse) _then) = _$CheckFavoriteResponseCopyWithImpl;
@useResult
$Res call({
 bool success, CheckFavoriteData data, String timestamp
});


$CheckFavoriteDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CheckFavoriteResponseCopyWithImpl<$Res>
    implements $CheckFavoriteResponseCopyWith<$Res> {
  _$CheckFavoriteResponseCopyWithImpl(this._self, this._then);

  final CheckFavoriteResponse _self;
  final $Res Function(CheckFavoriteResponse) _then;

/// Create a copy of CheckFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckFavoriteData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CheckFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckFavoriteDataCopyWith<$Res> get data {
  
  return $CheckFavoriteDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckFavoriteResponse].
extension CheckFavoriteResponsePatterns on CheckFavoriteResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckFavoriteResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckFavoriteResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckFavoriteResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckFavoriteResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CheckFavoriteData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CheckFavoriteData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _CheckFavoriteResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CheckFavoriteData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CheckFavoriteResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckFavoriteResponse implements CheckFavoriteResponse {
  const _CheckFavoriteResponse({required this.success, required this.data, required this.timestamp});
  factory _CheckFavoriteResponse.fromJson(Map<String, dynamic> json) => _$CheckFavoriteResponseFromJson(json);

@override final  bool success;
@override final  CheckFavoriteData data;
@override final  String timestamp;

/// Create a copy of CheckFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckFavoriteResponseCopyWith<_CheckFavoriteResponse> get copyWith => __$CheckFavoriteResponseCopyWithImpl<_CheckFavoriteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckFavoriteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckFavoriteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CheckFavoriteResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CheckFavoriteResponseCopyWith<$Res> implements $CheckFavoriteResponseCopyWith<$Res> {
  factory _$CheckFavoriteResponseCopyWith(_CheckFavoriteResponse value, $Res Function(_CheckFavoriteResponse) _then) = __$CheckFavoriteResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, CheckFavoriteData data, String timestamp
});


@override $CheckFavoriteDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CheckFavoriteResponseCopyWithImpl<$Res>
    implements _$CheckFavoriteResponseCopyWith<$Res> {
  __$CheckFavoriteResponseCopyWithImpl(this._self, this._then);

  final _CheckFavoriteResponse _self;
  final $Res Function(_CheckFavoriteResponse) _then;

/// Create a copy of CheckFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_CheckFavoriteResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckFavoriteData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CheckFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckFavoriteDataCopyWith<$Res> get data {
  
  return $CheckFavoriteDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CheckFavoriteData {

 String get itemId; bool get isFavorited;
/// Create a copy of CheckFavoriteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckFavoriteDataCopyWith<CheckFavoriteData> get copyWith => _$CheckFavoriteDataCopyWithImpl<CheckFavoriteData>(this as CheckFavoriteData, _$identity);

  /// Serializes this CheckFavoriteData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckFavoriteData&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,isFavorited);

@override
String toString() {
  return 'CheckFavoriteData(itemId: $itemId, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class $CheckFavoriteDataCopyWith<$Res>  {
  factory $CheckFavoriteDataCopyWith(CheckFavoriteData value, $Res Function(CheckFavoriteData) _then) = _$CheckFavoriteDataCopyWithImpl;
@useResult
$Res call({
 String itemId, bool isFavorited
});




}
/// @nodoc
class _$CheckFavoriteDataCopyWithImpl<$Res>
    implements $CheckFavoriteDataCopyWith<$Res> {
  _$CheckFavoriteDataCopyWithImpl(this._self, this._then);

  final CheckFavoriteData _self;
  final $Res Function(CheckFavoriteData) _then;

/// Create a copy of CheckFavoriteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? isFavorited = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckFavoriteData].
extension CheckFavoriteDataPatterns on CheckFavoriteData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckFavoriteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckFavoriteData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckFavoriteData value)  $default,){
final _that = this;
switch (_that) {
case _CheckFavoriteData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckFavoriteData value)?  $default,){
final _that = this;
switch (_that) {
case _CheckFavoriteData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  bool isFavorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckFavoriteData() when $default != null:
return $default(_that.itemId,_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  bool isFavorited)  $default,) {final _that = this;
switch (_that) {
case _CheckFavoriteData():
return $default(_that.itemId,_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  bool isFavorited)?  $default,) {final _that = this;
switch (_that) {
case _CheckFavoriteData() when $default != null:
return $default(_that.itemId,_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckFavoriteData implements CheckFavoriteData {
  const _CheckFavoriteData({required this.itemId, required this.isFavorited});
  factory _CheckFavoriteData.fromJson(Map<String, dynamic> json) => _$CheckFavoriteDataFromJson(json);

@override final  String itemId;
@override final  bool isFavorited;

/// Create a copy of CheckFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckFavoriteDataCopyWith<_CheckFavoriteData> get copyWith => __$CheckFavoriteDataCopyWithImpl<_CheckFavoriteData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckFavoriteDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckFavoriteData&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,isFavorited);

@override
String toString() {
  return 'CheckFavoriteData(itemId: $itemId, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$CheckFavoriteDataCopyWith<$Res> implements $CheckFavoriteDataCopyWith<$Res> {
  factory _$CheckFavoriteDataCopyWith(_CheckFavoriteData value, $Res Function(_CheckFavoriteData) _then) = __$CheckFavoriteDataCopyWithImpl;
@override @useResult
$Res call({
 String itemId, bool isFavorited
});




}
/// @nodoc
class __$CheckFavoriteDataCopyWithImpl<$Res>
    implements _$CheckFavoriteDataCopyWith<$Res> {
  __$CheckFavoriteDataCopyWithImpl(this._self, this._then);

  final _CheckFavoriteData _self;
  final $Res Function(_CheckFavoriteData) _then;

/// Create a copy of CheckFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? isFavorited = null,}) {
  return _then(_CheckFavoriteData(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
