// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveFavoriteResponse {

 bool get success; RemoveFavoriteData get data; String get timestamp;
/// Create a copy of RemoveFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFavoriteResponseCopyWith<RemoveFavoriteResponse> get copyWith => _$RemoveFavoriteResponseCopyWithImpl<RemoveFavoriteResponse>(this as RemoveFavoriteResponse, _$identity);

  /// Serializes this RemoveFavoriteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFavoriteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'RemoveFavoriteResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $RemoveFavoriteResponseCopyWith<$Res>  {
  factory $RemoveFavoriteResponseCopyWith(RemoveFavoriteResponse value, $Res Function(RemoveFavoriteResponse) _then) = _$RemoveFavoriteResponseCopyWithImpl;
@useResult
$Res call({
 bool success, RemoveFavoriteData data, String timestamp
});


$RemoveFavoriteDataCopyWith<$Res> get data;

}
/// @nodoc
class _$RemoveFavoriteResponseCopyWithImpl<$Res>
    implements $RemoveFavoriteResponseCopyWith<$Res> {
  _$RemoveFavoriteResponseCopyWithImpl(this._self, this._then);

  final RemoveFavoriteResponse _self;
  final $Res Function(RemoveFavoriteResponse) _then;

/// Create a copy of RemoveFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RemoveFavoriteData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RemoveFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoveFavoriteDataCopyWith<$Res> get data {
  
  return $RemoveFavoriteDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RemoveFavoriteResponse].
extension RemoveFavoriteResponsePatterns on RemoveFavoriteResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveFavoriteResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveFavoriteResponse value)  $default,){
final _that = this;
switch (_that) {
case _RemoveFavoriteResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveFavoriteResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  RemoveFavoriteData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  RemoveFavoriteData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _RemoveFavoriteResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  RemoveFavoriteData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _RemoveFavoriteResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoveFavoriteResponse implements RemoveFavoriteResponse {
  const _RemoveFavoriteResponse({required this.success, required this.data, required this.timestamp});
  factory _RemoveFavoriteResponse.fromJson(Map<String, dynamic> json) => _$RemoveFavoriteResponseFromJson(json);

@override final  bool success;
@override final  RemoveFavoriteData data;
@override final  String timestamp;

/// Create a copy of RemoveFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFavoriteResponseCopyWith<_RemoveFavoriteResponse> get copyWith => __$RemoveFavoriteResponseCopyWithImpl<_RemoveFavoriteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveFavoriteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFavoriteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'RemoveFavoriteResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$RemoveFavoriteResponseCopyWith<$Res> implements $RemoveFavoriteResponseCopyWith<$Res> {
  factory _$RemoveFavoriteResponseCopyWith(_RemoveFavoriteResponse value, $Res Function(_RemoveFavoriteResponse) _then) = __$RemoveFavoriteResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, RemoveFavoriteData data, String timestamp
});


@override $RemoveFavoriteDataCopyWith<$Res> get data;

}
/// @nodoc
class __$RemoveFavoriteResponseCopyWithImpl<$Res>
    implements _$RemoveFavoriteResponseCopyWith<$Res> {
  __$RemoveFavoriteResponseCopyWithImpl(this._self, this._then);

  final _RemoveFavoriteResponse _self;
  final $Res Function(_RemoveFavoriteResponse) _then;

/// Create a copy of RemoveFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_RemoveFavoriteResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RemoveFavoriteData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RemoveFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoveFavoriteDataCopyWith<$Res> get data {
  
  return $RemoveFavoriteDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RemoveFavoriteData {

 String get message;
/// Create a copy of RemoveFavoriteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFavoriteDataCopyWith<RemoveFavoriteData> get copyWith => _$RemoveFavoriteDataCopyWithImpl<RemoveFavoriteData>(this as RemoveFavoriteData, _$identity);

  /// Serializes this RemoveFavoriteData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFavoriteData&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RemoveFavoriteData(message: $message)';
}


}

/// @nodoc
abstract mixin class $RemoveFavoriteDataCopyWith<$Res>  {
  factory $RemoveFavoriteDataCopyWith(RemoveFavoriteData value, $Res Function(RemoveFavoriteData) _then) = _$RemoveFavoriteDataCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RemoveFavoriteDataCopyWithImpl<$Res>
    implements $RemoveFavoriteDataCopyWith<$Res> {
  _$RemoveFavoriteDataCopyWithImpl(this._self, this._then);

  final RemoveFavoriteData _self;
  final $Res Function(RemoveFavoriteData) _then;

/// Create a copy of RemoveFavoriteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoveFavoriteData].
extension RemoveFavoriteDataPatterns on RemoveFavoriteData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveFavoriteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveFavoriteData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveFavoriteData value)  $default,){
final _that = this;
switch (_that) {
case _RemoveFavoriteData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveFavoriteData value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveFavoriteData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveFavoriteData() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _RemoveFavoriteData():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _RemoveFavoriteData() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoveFavoriteData implements RemoveFavoriteData {
  const _RemoveFavoriteData({required this.message});
  factory _RemoveFavoriteData.fromJson(Map<String, dynamic> json) => _$RemoveFavoriteDataFromJson(json);

@override final  String message;

/// Create a copy of RemoveFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFavoriteDataCopyWith<_RemoveFavoriteData> get copyWith => __$RemoveFavoriteDataCopyWithImpl<_RemoveFavoriteData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveFavoriteDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFavoriteData&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RemoveFavoriteData(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RemoveFavoriteDataCopyWith<$Res> implements $RemoveFavoriteDataCopyWith<$Res> {
  factory _$RemoveFavoriteDataCopyWith(_RemoveFavoriteData value, $Res Function(_RemoveFavoriteData) _then) = __$RemoveFavoriteDataCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RemoveFavoriteDataCopyWithImpl<$Res>
    implements _$RemoveFavoriteDataCopyWith<$Res> {
  __$RemoveFavoriteDataCopyWithImpl(this._self, this._then);

  final _RemoveFavoriteData _self;
  final $Res Function(_RemoveFavoriteData) _then;

/// Create a copy of RemoveFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RemoveFavoriteData(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
