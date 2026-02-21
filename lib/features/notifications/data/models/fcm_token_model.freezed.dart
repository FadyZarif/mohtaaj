// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmRegisterTokenRequest {

 String get token;@JsonKey(includeIfNull: false) String? get deviceType;@JsonKey(includeIfNull: false) String? get deviceId;
/// Create a copy of FcmRegisterTokenRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmRegisterTokenRequestCopyWith<FcmRegisterTokenRequest> get copyWith => _$FcmRegisterTokenRequestCopyWithImpl<FcmRegisterTokenRequest>(this as FcmRegisterTokenRequest, _$identity);

  /// Serializes this FcmRegisterTokenRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmRegisterTokenRequest&&(identical(other.token, token) || other.token == token)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,deviceType,deviceId);

@override
String toString() {
  return 'FcmRegisterTokenRequest(token: $token, deviceType: $deviceType, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $FcmRegisterTokenRequestCopyWith<$Res>  {
  factory $FcmRegisterTokenRequestCopyWith(FcmRegisterTokenRequest value, $Res Function(FcmRegisterTokenRequest) _then) = _$FcmRegisterTokenRequestCopyWithImpl;
@useResult
$Res call({
 String token,@JsonKey(includeIfNull: false) String? deviceType,@JsonKey(includeIfNull: false) String? deviceId
});




}
/// @nodoc
class _$FcmRegisterTokenRequestCopyWithImpl<$Res>
    implements $FcmRegisterTokenRequestCopyWith<$Res> {
  _$FcmRegisterTokenRequestCopyWithImpl(this._self, this._then);

  final FcmRegisterTokenRequest _self;
  final $Res Function(FcmRegisterTokenRequest) _then;

/// Create a copy of FcmRegisterTokenRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? deviceType = freezed,Object? deviceId = freezed,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmRegisterTokenRequest].
extension FcmRegisterTokenRequestPatterns on FcmRegisterTokenRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmRegisterTokenRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmRegisterTokenRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmRegisterTokenRequest value)  $default,){
final _that = this;
switch (_that) {
case _FcmRegisterTokenRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmRegisterTokenRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FcmRegisterTokenRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token, @JsonKey(includeIfNull: false)  String? deviceType, @JsonKey(includeIfNull: false)  String? deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmRegisterTokenRequest() when $default != null:
return $default(_that.token,_that.deviceType,_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token, @JsonKey(includeIfNull: false)  String? deviceType, @JsonKey(includeIfNull: false)  String? deviceId)  $default,) {final _that = this;
switch (_that) {
case _FcmRegisterTokenRequest():
return $default(_that.token,_that.deviceType,_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token, @JsonKey(includeIfNull: false)  String? deviceType, @JsonKey(includeIfNull: false)  String? deviceId)?  $default,) {final _that = this;
switch (_that) {
case _FcmRegisterTokenRequest() when $default != null:
return $default(_that.token,_that.deviceType,_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmRegisterTokenRequest implements FcmRegisterTokenRequest {
  const _FcmRegisterTokenRequest({required this.token, @JsonKey(includeIfNull: false) this.deviceType, @JsonKey(includeIfNull: false) this.deviceId});
  factory _FcmRegisterTokenRequest.fromJson(Map<String, dynamic> json) => _$FcmRegisterTokenRequestFromJson(json);

@override final  String token;
@override@JsonKey(includeIfNull: false) final  String? deviceType;
@override@JsonKey(includeIfNull: false) final  String? deviceId;

/// Create a copy of FcmRegisterTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmRegisterTokenRequestCopyWith<_FcmRegisterTokenRequest> get copyWith => __$FcmRegisterTokenRequestCopyWithImpl<_FcmRegisterTokenRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmRegisterTokenRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmRegisterTokenRequest&&(identical(other.token, token) || other.token == token)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,deviceType,deviceId);

@override
String toString() {
  return 'FcmRegisterTokenRequest(token: $token, deviceType: $deviceType, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$FcmRegisterTokenRequestCopyWith<$Res> implements $FcmRegisterTokenRequestCopyWith<$Res> {
  factory _$FcmRegisterTokenRequestCopyWith(_FcmRegisterTokenRequest value, $Res Function(_FcmRegisterTokenRequest) _then) = __$FcmRegisterTokenRequestCopyWithImpl;
@override @useResult
$Res call({
 String token,@JsonKey(includeIfNull: false) String? deviceType,@JsonKey(includeIfNull: false) String? deviceId
});




}
/// @nodoc
class __$FcmRegisterTokenRequestCopyWithImpl<$Res>
    implements _$FcmRegisterTokenRequestCopyWith<$Res> {
  __$FcmRegisterTokenRequestCopyWithImpl(this._self, this._then);

  final _FcmRegisterTokenRequest _self;
  final $Res Function(_FcmRegisterTokenRequest) _then;

/// Create a copy of FcmRegisterTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? deviceType = freezed,Object? deviceId = freezed,}) {
  return _then(_FcmRegisterTokenRequest(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FcmUpdateTokenRequest {

 String get oldToken; String get newToken;@JsonKey(includeIfNull: false) String? get deviceType;@JsonKey(includeIfNull: false) String? get deviceId;
/// Create a copy of FcmUpdateTokenRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmUpdateTokenRequestCopyWith<FcmUpdateTokenRequest> get copyWith => _$FcmUpdateTokenRequestCopyWithImpl<FcmUpdateTokenRequest>(this as FcmUpdateTokenRequest, _$identity);

  /// Serializes this FcmUpdateTokenRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmUpdateTokenRequest&&(identical(other.oldToken, oldToken) || other.oldToken == oldToken)&&(identical(other.newToken, newToken) || other.newToken == newToken)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldToken,newToken,deviceType,deviceId);

@override
String toString() {
  return 'FcmUpdateTokenRequest(oldToken: $oldToken, newToken: $newToken, deviceType: $deviceType, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $FcmUpdateTokenRequestCopyWith<$Res>  {
  factory $FcmUpdateTokenRequestCopyWith(FcmUpdateTokenRequest value, $Res Function(FcmUpdateTokenRequest) _then) = _$FcmUpdateTokenRequestCopyWithImpl;
@useResult
$Res call({
 String oldToken, String newToken,@JsonKey(includeIfNull: false) String? deviceType,@JsonKey(includeIfNull: false) String? deviceId
});




}
/// @nodoc
class _$FcmUpdateTokenRequestCopyWithImpl<$Res>
    implements $FcmUpdateTokenRequestCopyWith<$Res> {
  _$FcmUpdateTokenRequestCopyWithImpl(this._self, this._then);

  final FcmUpdateTokenRequest _self;
  final $Res Function(FcmUpdateTokenRequest) _then;

/// Create a copy of FcmUpdateTokenRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldToken = null,Object? newToken = null,Object? deviceType = freezed,Object? deviceId = freezed,}) {
  return _then(_self.copyWith(
oldToken: null == oldToken ? _self.oldToken : oldToken // ignore: cast_nullable_to_non_nullable
as String,newToken: null == newToken ? _self.newToken : newToken // ignore: cast_nullable_to_non_nullable
as String,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmUpdateTokenRequest].
extension FcmUpdateTokenRequestPatterns on FcmUpdateTokenRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmUpdateTokenRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmUpdateTokenRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmUpdateTokenRequest value)  $default,){
final _that = this;
switch (_that) {
case _FcmUpdateTokenRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmUpdateTokenRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FcmUpdateTokenRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String oldToken,  String newToken, @JsonKey(includeIfNull: false)  String? deviceType, @JsonKey(includeIfNull: false)  String? deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmUpdateTokenRequest() when $default != null:
return $default(_that.oldToken,_that.newToken,_that.deviceType,_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String oldToken,  String newToken, @JsonKey(includeIfNull: false)  String? deviceType, @JsonKey(includeIfNull: false)  String? deviceId)  $default,) {final _that = this;
switch (_that) {
case _FcmUpdateTokenRequest():
return $default(_that.oldToken,_that.newToken,_that.deviceType,_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String oldToken,  String newToken, @JsonKey(includeIfNull: false)  String? deviceType, @JsonKey(includeIfNull: false)  String? deviceId)?  $default,) {final _that = this;
switch (_that) {
case _FcmUpdateTokenRequest() when $default != null:
return $default(_that.oldToken,_that.newToken,_that.deviceType,_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmUpdateTokenRequest implements FcmUpdateTokenRequest {
  const _FcmUpdateTokenRequest({required this.oldToken, required this.newToken, @JsonKey(includeIfNull: false) this.deviceType, @JsonKey(includeIfNull: false) this.deviceId});
  factory _FcmUpdateTokenRequest.fromJson(Map<String, dynamic> json) => _$FcmUpdateTokenRequestFromJson(json);

@override final  String oldToken;
@override final  String newToken;
@override@JsonKey(includeIfNull: false) final  String? deviceType;
@override@JsonKey(includeIfNull: false) final  String? deviceId;

/// Create a copy of FcmUpdateTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmUpdateTokenRequestCopyWith<_FcmUpdateTokenRequest> get copyWith => __$FcmUpdateTokenRequestCopyWithImpl<_FcmUpdateTokenRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmUpdateTokenRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmUpdateTokenRequest&&(identical(other.oldToken, oldToken) || other.oldToken == oldToken)&&(identical(other.newToken, newToken) || other.newToken == newToken)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldToken,newToken,deviceType,deviceId);

@override
String toString() {
  return 'FcmUpdateTokenRequest(oldToken: $oldToken, newToken: $newToken, deviceType: $deviceType, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$FcmUpdateTokenRequestCopyWith<$Res> implements $FcmUpdateTokenRequestCopyWith<$Res> {
  factory _$FcmUpdateTokenRequestCopyWith(_FcmUpdateTokenRequest value, $Res Function(_FcmUpdateTokenRequest) _then) = __$FcmUpdateTokenRequestCopyWithImpl;
@override @useResult
$Res call({
 String oldToken, String newToken,@JsonKey(includeIfNull: false) String? deviceType,@JsonKey(includeIfNull: false) String? deviceId
});




}
/// @nodoc
class __$FcmUpdateTokenRequestCopyWithImpl<$Res>
    implements _$FcmUpdateTokenRequestCopyWith<$Res> {
  __$FcmUpdateTokenRequestCopyWithImpl(this._self, this._then);

  final _FcmUpdateTokenRequest _self;
  final $Res Function(_FcmUpdateTokenRequest) _then;

/// Create a copy of FcmUpdateTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldToken = null,Object? newToken = null,Object? deviceType = freezed,Object? deviceId = freezed,}) {
  return _then(_FcmUpdateTokenRequest(
oldToken: null == oldToken ? _self.oldToken : oldToken // ignore: cast_nullable_to_non_nullable
as String,newToken: null == newToken ? _self.newToken : newToken // ignore: cast_nullable_to_non_nullable
as String,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FcmDeleteTokenRequest {

 String get token;
/// Create a copy of FcmDeleteTokenRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmDeleteTokenRequestCopyWith<FcmDeleteTokenRequest> get copyWith => _$FcmDeleteTokenRequestCopyWithImpl<FcmDeleteTokenRequest>(this as FcmDeleteTokenRequest, _$identity);

  /// Serializes this FcmDeleteTokenRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmDeleteTokenRequest&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'FcmDeleteTokenRequest(token: $token)';
}


}

/// @nodoc
abstract mixin class $FcmDeleteTokenRequestCopyWith<$Res>  {
  factory $FcmDeleteTokenRequestCopyWith(FcmDeleteTokenRequest value, $Res Function(FcmDeleteTokenRequest) _then) = _$FcmDeleteTokenRequestCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$FcmDeleteTokenRequestCopyWithImpl<$Res>
    implements $FcmDeleteTokenRequestCopyWith<$Res> {
  _$FcmDeleteTokenRequestCopyWithImpl(this._self, this._then);

  final FcmDeleteTokenRequest _self;
  final $Res Function(FcmDeleteTokenRequest) _then;

/// Create a copy of FcmDeleteTokenRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmDeleteTokenRequest].
extension FcmDeleteTokenRequestPatterns on FcmDeleteTokenRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmDeleteTokenRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmDeleteTokenRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmDeleteTokenRequest value)  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteTokenRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmDeleteTokenRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteTokenRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmDeleteTokenRequest() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token)  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteTokenRequest():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token)?  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteTokenRequest() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmDeleteTokenRequest implements FcmDeleteTokenRequest {
  const _FcmDeleteTokenRequest({required this.token});
  factory _FcmDeleteTokenRequest.fromJson(Map<String, dynamic> json) => _$FcmDeleteTokenRequestFromJson(json);

@override final  String token;

/// Create a copy of FcmDeleteTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmDeleteTokenRequestCopyWith<_FcmDeleteTokenRequest> get copyWith => __$FcmDeleteTokenRequestCopyWithImpl<_FcmDeleteTokenRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmDeleteTokenRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmDeleteTokenRequest&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'FcmDeleteTokenRequest(token: $token)';
}


}

/// @nodoc
abstract mixin class _$FcmDeleteTokenRequestCopyWith<$Res> implements $FcmDeleteTokenRequestCopyWith<$Res> {
  factory _$FcmDeleteTokenRequestCopyWith(_FcmDeleteTokenRequest value, $Res Function(_FcmDeleteTokenRequest) _then) = __$FcmDeleteTokenRequestCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$FcmDeleteTokenRequestCopyWithImpl<$Res>
    implements _$FcmDeleteTokenRequestCopyWith<$Res> {
  __$FcmDeleteTokenRequestCopyWithImpl(this._self, this._then);

  final _FcmDeleteTokenRequest _self;
  final $Res Function(_FcmDeleteTokenRequest) _then;

/// Create a copy of FcmDeleteTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_FcmDeleteTokenRequest(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FcmTokenData {

 String get id; String get deviceType; bool get isValid;
/// Create a copy of FcmTokenData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmTokenDataCopyWith<FcmTokenData> get copyWith => _$FcmTokenDataCopyWithImpl<FcmTokenData>(this as FcmTokenData, _$identity);

  /// Serializes this FcmTokenData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmTokenData&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceType,isValid);

@override
String toString() {
  return 'FcmTokenData(id: $id, deviceType: $deviceType, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $FcmTokenDataCopyWith<$Res>  {
  factory $FcmTokenDataCopyWith(FcmTokenData value, $Res Function(FcmTokenData) _then) = _$FcmTokenDataCopyWithImpl;
@useResult
$Res call({
 String id, String deviceType, bool isValid
});




}
/// @nodoc
class _$FcmTokenDataCopyWithImpl<$Res>
    implements $FcmTokenDataCopyWith<$Res> {
  _$FcmTokenDataCopyWithImpl(this._self, this._then);

  final FcmTokenData _self;
  final $Res Function(FcmTokenData) _then;

/// Create a copy of FcmTokenData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceType = null,Object? isValid = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmTokenData].
extension FcmTokenDataPatterns on FcmTokenData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmTokenData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmTokenData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmTokenData value)  $default,){
final _that = this;
switch (_that) {
case _FcmTokenData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmTokenData value)?  $default,){
final _that = this;
switch (_that) {
case _FcmTokenData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deviceType,  bool isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmTokenData() when $default != null:
return $default(_that.id,_that.deviceType,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deviceType,  bool isValid)  $default,) {final _that = this;
switch (_that) {
case _FcmTokenData():
return $default(_that.id,_that.deviceType,_that.isValid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deviceType,  bool isValid)?  $default,) {final _that = this;
switch (_that) {
case _FcmTokenData() when $default != null:
return $default(_that.id,_that.deviceType,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmTokenData implements FcmTokenData {
  const _FcmTokenData({required this.id, required this.deviceType, required this.isValid});
  factory _FcmTokenData.fromJson(Map<String, dynamic> json) => _$FcmTokenDataFromJson(json);

@override final  String id;
@override final  String deviceType;
@override final  bool isValid;

/// Create a copy of FcmTokenData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmTokenDataCopyWith<_FcmTokenData> get copyWith => __$FcmTokenDataCopyWithImpl<_FcmTokenData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmTokenDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmTokenData&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceType,isValid);

@override
String toString() {
  return 'FcmTokenData(id: $id, deviceType: $deviceType, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$FcmTokenDataCopyWith<$Res> implements $FcmTokenDataCopyWith<$Res> {
  factory _$FcmTokenDataCopyWith(_FcmTokenData value, $Res Function(_FcmTokenData) _then) = __$FcmTokenDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String deviceType, bool isValid
});




}
/// @nodoc
class __$FcmTokenDataCopyWithImpl<$Res>
    implements _$FcmTokenDataCopyWith<$Res> {
  __$FcmTokenDataCopyWithImpl(this._self, this._then);

  final _FcmTokenData _self;
  final $Res Function(_FcmTokenData) _then;

/// Create a copy of FcmTokenData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceType = null,Object? isValid = null,}) {
  return _then(_FcmTokenData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FcmTokenModel {

 String get id; String get deviceType; String? get deviceId; bool get isValid; String? get lastUsedAt; String? get createdAt;
/// Create a copy of FcmTokenModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmTokenModelCopyWith<FcmTokenModel> get copyWith => _$FcmTokenModelCopyWithImpl<FcmTokenModel>(this as FcmTokenModel, _$identity);

  /// Serializes this FcmTokenModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmTokenModel&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceType,deviceId,isValid,lastUsedAt,createdAt);

@override
String toString() {
  return 'FcmTokenModel(id: $id, deviceType: $deviceType, deviceId: $deviceId, isValid: $isValid, lastUsedAt: $lastUsedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FcmTokenModelCopyWith<$Res>  {
  factory $FcmTokenModelCopyWith(FcmTokenModel value, $Res Function(FcmTokenModel) _then) = _$FcmTokenModelCopyWithImpl;
@useResult
$Res call({
 String id, String deviceType, String? deviceId, bool isValid, String? lastUsedAt, String? createdAt
});




}
/// @nodoc
class _$FcmTokenModelCopyWithImpl<$Res>
    implements $FcmTokenModelCopyWith<$Res> {
  _$FcmTokenModelCopyWithImpl(this._self, this._then);

  final FcmTokenModel _self;
  final $Res Function(FcmTokenModel) _then;

/// Create a copy of FcmTokenModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceType = null,Object? deviceId = freezed,Object? isValid = null,Object? lastUsedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmTokenModel].
extension FcmTokenModelPatterns on FcmTokenModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmTokenModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmTokenModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmTokenModel value)  $default,){
final _that = this;
switch (_that) {
case _FcmTokenModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmTokenModel value)?  $default,){
final _that = this;
switch (_that) {
case _FcmTokenModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deviceType,  String? deviceId,  bool isValid,  String? lastUsedAt,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmTokenModel() when $default != null:
return $default(_that.id,_that.deviceType,_that.deviceId,_that.isValid,_that.lastUsedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deviceType,  String? deviceId,  bool isValid,  String? lastUsedAt,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FcmTokenModel():
return $default(_that.id,_that.deviceType,_that.deviceId,_that.isValid,_that.lastUsedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deviceType,  String? deviceId,  bool isValid,  String? lastUsedAt,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FcmTokenModel() when $default != null:
return $default(_that.id,_that.deviceType,_that.deviceId,_that.isValid,_that.lastUsedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmTokenModel implements FcmTokenModel {
  const _FcmTokenModel({required this.id, required this.deviceType, this.deviceId, required this.isValid, this.lastUsedAt, this.createdAt});
  factory _FcmTokenModel.fromJson(Map<String, dynamic> json) => _$FcmTokenModelFromJson(json);

@override final  String id;
@override final  String deviceType;
@override final  String? deviceId;
@override final  bool isValid;
@override final  String? lastUsedAt;
@override final  String? createdAt;

/// Create a copy of FcmTokenModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmTokenModelCopyWith<_FcmTokenModel> get copyWith => __$FcmTokenModelCopyWithImpl<_FcmTokenModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmTokenModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmTokenModel&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceType,deviceId,isValid,lastUsedAt,createdAt);

@override
String toString() {
  return 'FcmTokenModel(id: $id, deviceType: $deviceType, deviceId: $deviceId, isValid: $isValid, lastUsedAt: $lastUsedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FcmTokenModelCopyWith<$Res> implements $FcmTokenModelCopyWith<$Res> {
  factory _$FcmTokenModelCopyWith(_FcmTokenModel value, $Res Function(_FcmTokenModel) _then) = __$FcmTokenModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String deviceType, String? deviceId, bool isValid, String? lastUsedAt, String? createdAt
});




}
/// @nodoc
class __$FcmTokenModelCopyWithImpl<$Res>
    implements _$FcmTokenModelCopyWith<$Res> {
  __$FcmTokenModelCopyWithImpl(this._self, this._then);

  final _FcmTokenModel _self;
  final $Res Function(_FcmTokenModel) _then;

/// Create a copy of FcmTokenModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceType = null,Object? deviceId = freezed,Object? isValid = null,Object? lastUsedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_FcmTokenModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FcmTokensData {

 List<FcmTokenModel> get tokens; int get count;
/// Create a copy of FcmTokensData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmTokensDataCopyWith<FcmTokensData> get copyWith => _$FcmTokensDataCopyWithImpl<FcmTokensData>(this as FcmTokensData, _$identity);

  /// Serializes this FcmTokensData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmTokensData&&const DeepCollectionEquality().equals(other.tokens, tokens)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tokens),count);

@override
String toString() {
  return 'FcmTokensData(tokens: $tokens, count: $count)';
}


}

/// @nodoc
abstract mixin class $FcmTokensDataCopyWith<$Res>  {
  factory $FcmTokensDataCopyWith(FcmTokensData value, $Res Function(FcmTokensData) _then) = _$FcmTokensDataCopyWithImpl;
@useResult
$Res call({
 List<FcmTokenModel> tokens, int count
});




}
/// @nodoc
class _$FcmTokensDataCopyWithImpl<$Res>
    implements $FcmTokensDataCopyWith<$Res> {
  _$FcmTokensDataCopyWithImpl(this._self, this._then);

  final FcmTokensData _self;
  final $Res Function(FcmTokensData) _then;

/// Create a copy of FcmTokensData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = null,Object? count = null,}) {
  return _then(_self.copyWith(
tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as List<FcmTokenModel>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmTokensData].
extension FcmTokensDataPatterns on FcmTokensData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmTokensData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmTokensData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmTokensData value)  $default,){
final _that = this;
switch (_that) {
case _FcmTokensData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmTokensData value)?  $default,){
final _that = this;
switch (_that) {
case _FcmTokensData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FcmTokenModel> tokens,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmTokensData() when $default != null:
return $default(_that.tokens,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FcmTokenModel> tokens,  int count)  $default,) {final _that = this;
switch (_that) {
case _FcmTokensData():
return $default(_that.tokens,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FcmTokenModel> tokens,  int count)?  $default,) {final _that = this;
switch (_that) {
case _FcmTokensData() when $default != null:
return $default(_that.tokens,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmTokensData implements FcmTokensData {
  const _FcmTokensData({required final  List<FcmTokenModel> tokens, required this.count}): _tokens = tokens;
  factory _FcmTokensData.fromJson(Map<String, dynamic> json) => _$FcmTokensDataFromJson(json);

 final  List<FcmTokenModel> _tokens;
@override List<FcmTokenModel> get tokens {
  if (_tokens is EqualUnmodifiableListView) return _tokens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tokens);
}

@override final  int count;

/// Create a copy of FcmTokensData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmTokensDataCopyWith<_FcmTokensData> get copyWith => __$FcmTokensDataCopyWithImpl<_FcmTokensData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmTokensDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmTokensData&&const DeepCollectionEquality().equals(other._tokens, _tokens)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tokens),count);

@override
String toString() {
  return 'FcmTokensData(tokens: $tokens, count: $count)';
}


}

/// @nodoc
abstract mixin class _$FcmTokensDataCopyWith<$Res> implements $FcmTokensDataCopyWith<$Res> {
  factory _$FcmTokensDataCopyWith(_FcmTokensData value, $Res Function(_FcmTokensData) _then) = __$FcmTokensDataCopyWithImpl;
@override @useResult
$Res call({
 List<FcmTokenModel> tokens, int count
});




}
/// @nodoc
class __$FcmTokensDataCopyWithImpl<$Res>
    implements _$FcmTokensDataCopyWith<$Res> {
  __$FcmTokensDataCopyWithImpl(this._self, this._then);

  final _FcmTokensData _self;
  final $Res Function(_FcmTokensData) _then;

/// Create a copy of FcmTokensData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = null,Object? count = null,}) {
  return _then(_FcmTokensData(
tokens: null == tokens ? _self._tokens : tokens // ignore: cast_nullable_to_non_nullable
as List<FcmTokenModel>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FcmDeleteAllData {

 int? get deletedCount;
/// Create a copy of FcmDeleteAllData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmDeleteAllDataCopyWith<FcmDeleteAllData> get copyWith => _$FcmDeleteAllDataCopyWithImpl<FcmDeleteAllData>(this as FcmDeleteAllData, _$identity);

  /// Serializes this FcmDeleteAllData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmDeleteAllData&&(identical(other.deletedCount, deletedCount) || other.deletedCount == deletedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedCount);

@override
String toString() {
  return 'FcmDeleteAllData(deletedCount: $deletedCount)';
}


}

/// @nodoc
abstract mixin class $FcmDeleteAllDataCopyWith<$Res>  {
  factory $FcmDeleteAllDataCopyWith(FcmDeleteAllData value, $Res Function(FcmDeleteAllData) _then) = _$FcmDeleteAllDataCopyWithImpl;
@useResult
$Res call({
 int? deletedCount
});




}
/// @nodoc
class _$FcmDeleteAllDataCopyWithImpl<$Res>
    implements $FcmDeleteAllDataCopyWith<$Res> {
  _$FcmDeleteAllDataCopyWithImpl(this._self, this._then);

  final FcmDeleteAllData _self;
  final $Res Function(FcmDeleteAllData) _then;

/// Create a copy of FcmDeleteAllData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deletedCount = freezed,}) {
  return _then(_self.copyWith(
deletedCount: freezed == deletedCount ? _self.deletedCount : deletedCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmDeleteAllData].
extension FcmDeleteAllDataPatterns on FcmDeleteAllData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmDeleteAllData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmDeleteAllData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmDeleteAllData value)  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteAllData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmDeleteAllData value)?  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteAllData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? deletedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmDeleteAllData() when $default != null:
return $default(_that.deletedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? deletedCount)  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteAllData():
return $default(_that.deletedCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? deletedCount)?  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteAllData() when $default != null:
return $default(_that.deletedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmDeleteAllData implements FcmDeleteAllData {
  const _FcmDeleteAllData({this.deletedCount});
  factory _FcmDeleteAllData.fromJson(Map<String, dynamic> json) => _$FcmDeleteAllDataFromJson(json);

@override final  int? deletedCount;

/// Create a copy of FcmDeleteAllData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmDeleteAllDataCopyWith<_FcmDeleteAllData> get copyWith => __$FcmDeleteAllDataCopyWithImpl<_FcmDeleteAllData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmDeleteAllDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmDeleteAllData&&(identical(other.deletedCount, deletedCount) || other.deletedCount == deletedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedCount);

@override
String toString() {
  return 'FcmDeleteAllData(deletedCount: $deletedCount)';
}


}

/// @nodoc
abstract mixin class _$FcmDeleteAllDataCopyWith<$Res> implements $FcmDeleteAllDataCopyWith<$Res> {
  factory _$FcmDeleteAllDataCopyWith(_FcmDeleteAllData value, $Res Function(_FcmDeleteAllData) _then) = __$FcmDeleteAllDataCopyWithImpl;
@override @useResult
$Res call({
 int? deletedCount
});




}
/// @nodoc
class __$FcmDeleteAllDataCopyWithImpl<$Res>
    implements _$FcmDeleteAllDataCopyWith<$Res> {
  __$FcmDeleteAllDataCopyWithImpl(this._self, this._then);

  final _FcmDeleteAllData _self;
  final $Res Function(_FcmDeleteAllData) _then;

/// Create a copy of FcmDeleteAllData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deletedCount = freezed,}) {
  return _then(_FcmDeleteAllData(
deletedCount: freezed == deletedCount ? _self.deletedCount : deletedCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FcmTokenResponse {

 bool get success; String? get message; FcmTokenData get data;
/// Create a copy of FcmTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmTokenResponseCopyWith<FcmTokenResponse> get copyWith => _$FcmTokenResponseCopyWithImpl<FcmTokenResponse>(this as FcmTokenResponse, _$identity);

  /// Serializes this FcmTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmTokenResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmTokenResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FcmTokenResponseCopyWith<$Res>  {
  factory $FcmTokenResponseCopyWith(FcmTokenResponse value, $Res Function(FcmTokenResponse) _then) = _$FcmTokenResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message, FcmTokenData data
});


$FcmTokenDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FcmTokenResponseCopyWithImpl<$Res>
    implements $FcmTokenResponseCopyWith<$Res> {
  _$FcmTokenResponseCopyWithImpl(this._self, this._then);

  final FcmTokenResponse _self;
  final $Res Function(FcmTokenResponse) _then;

/// Create a copy of FcmTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmTokenData,
  ));
}
/// Create a copy of FcmTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmTokenDataCopyWith<$Res> get data {
  
  return $FcmTokenDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcmTokenResponse].
extension FcmTokenResponsePatterns on FcmTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _FcmTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FcmTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmTokenData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmTokenResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmTokenData data)  $default,) {final _that = this;
switch (_that) {
case _FcmTokenResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message,  FcmTokenData data)?  $default,) {final _that = this;
switch (_that) {
case _FcmTokenResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmTokenResponse implements FcmTokenResponse {
  const _FcmTokenResponse({required this.success, this.message, required this.data});
  factory _FcmTokenResponse.fromJson(Map<String, dynamic> json) => _$FcmTokenResponseFromJson(json);

@override final  bool success;
@override final  String? message;
@override final  FcmTokenData data;

/// Create a copy of FcmTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmTokenResponseCopyWith<_FcmTokenResponse> get copyWith => __$FcmTokenResponseCopyWithImpl<_FcmTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmTokenResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmTokenResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FcmTokenResponseCopyWith<$Res> implements $FcmTokenResponseCopyWith<$Res> {
  factory _$FcmTokenResponseCopyWith(_FcmTokenResponse value, $Res Function(_FcmTokenResponse) _then) = __$FcmTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message, FcmTokenData data
});


@override $FcmTokenDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FcmTokenResponseCopyWithImpl<$Res>
    implements _$FcmTokenResponseCopyWith<$Res> {
  __$FcmTokenResponseCopyWithImpl(this._self, this._then);

  final _FcmTokenResponse _self;
  final $Res Function(_FcmTokenResponse) _then;

/// Create a copy of FcmTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_FcmTokenResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmTokenData,
  ));
}

/// Create a copy of FcmTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmTokenDataCopyWith<$Res> get data {
  
  return $FcmTokenDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FcmDeleteTokenResponse {

 bool get success; String? get message;
/// Create a copy of FcmDeleteTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmDeleteTokenResponseCopyWith<FcmDeleteTokenResponse> get copyWith => _$FcmDeleteTokenResponseCopyWithImpl<FcmDeleteTokenResponse>(this as FcmDeleteTokenResponse, _$identity);

  /// Serializes this FcmDeleteTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmDeleteTokenResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'FcmDeleteTokenResponse(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class $FcmDeleteTokenResponseCopyWith<$Res>  {
  factory $FcmDeleteTokenResponseCopyWith(FcmDeleteTokenResponse value, $Res Function(FcmDeleteTokenResponse) _then) = _$FcmDeleteTokenResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message
});




}
/// @nodoc
class _$FcmDeleteTokenResponseCopyWithImpl<$Res>
    implements $FcmDeleteTokenResponseCopyWith<$Res> {
  _$FcmDeleteTokenResponseCopyWithImpl(this._self, this._then);

  final FcmDeleteTokenResponse _self;
  final $Res Function(FcmDeleteTokenResponse) _then;

/// Create a copy of FcmDeleteTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmDeleteTokenResponse].
extension FcmDeleteTokenResponsePatterns on FcmDeleteTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmDeleteTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmDeleteTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmDeleteTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmDeleteTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmDeleteTokenResponse() when $default != null:
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message)  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteTokenResponse():
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteTokenResponse() when $default != null:
return $default(_that.success,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmDeleteTokenResponse implements FcmDeleteTokenResponse {
  const _FcmDeleteTokenResponse({required this.success, this.message});
  factory _FcmDeleteTokenResponse.fromJson(Map<String, dynamic> json) => _$FcmDeleteTokenResponseFromJson(json);

@override final  bool success;
@override final  String? message;

/// Create a copy of FcmDeleteTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmDeleteTokenResponseCopyWith<_FcmDeleteTokenResponse> get copyWith => __$FcmDeleteTokenResponseCopyWithImpl<_FcmDeleteTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmDeleteTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmDeleteTokenResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'FcmDeleteTokenResponse(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FcmDeleteTokenResponseCopyWith<$Res> implements $FcmDeleteTokenResponseCopyWith<$Res> {
  factory _$FcmDeleteTokenResponseCopyWith(_FcmDeleteTokenResponse value, $Res Function(_FcmDeleteTokenResponse) _then) = __$FcmDeleteTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message
});




}
/// @nodoc
class __$FcmDeleteTokenResponseCopyWithImpl<$Res>
    implements _$FcmDeleteTokenResponseCopyWith<$Res> {
  __$FcmDeleteTokenResponseCopyWithImpl(this._self, this._then);

  final _FcmDeleteTokenResponse _self;
  final $Res Function(_FcmDeleteTokenResponse) _then;

/// Create a copy of FcmDeleteTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,}) {
  return _then(_FcmDeleteTokenResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FcmDeleteAllTokensResponse {

 bool get success; String? get message; FcmDeleteAllData get data;
/// Create a copy of FcmDeleteAllTokensResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmDeleteAllTokensResponseCopyWith<FcmDeleteAllTokensResponse> get copyWith => _$FcmDeleteAllTokensResponseCopyWithImpl<FcmDeleteAllTokensResponse>(this as FcmDeleteAllTokensResponse, _$identity);

  /// Serializes this FcmDeleteAllTokensResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmDeleteAllTokensResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmDeleteAllTokensResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FcmDeleteAllTokensResponseCopyWith<$Res>  {
  factory $FcmDeleteAllTokensResponseCopyWith(FcmDeleteAllTokensResponse value, $Res Function(FcmDeleteAllTokensResponse) _then) = _$FcmDeleteAllTokensResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message, FcmDeleteAllData data
});


$FcmDeleteAllDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FcmDeleteAllTokensResponseCopyWithImpl<$Res>
    implements $FcmDeleteAllTokensResponseCopyWith<$Res> {
  _$FcmDeleteAllTokensResponseCopyWithImpl(this._self, this._then);

  final FcmDeleteAllTokensResponse _self;
  final $Res Function(FcmDeleteAllTokensResponse) _then;

/// Create a copy of FcmDeleteAllTokensResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmDeleteAllData,
  ));
}
/// Create a copy of FcmDeleteAllTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmDeleteAllDataCopyWith<$Res> get data {
  
  return $FcmDeleteAllDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcmDeleteAllTokensResponse].
extension FcmDeleteAllTokensResponsePatterns on FcmDeleteAllTokensResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmDeleteAllTokensResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmDeleteAllTokensResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmDeleteAllTokensResponse value)  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteAllTokensResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmDeleteAllTokensResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FcmDeleteAllTokensResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmDeleteAllData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmDeleteAllTokensResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmDeleteAllData data)  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteAllTokensResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message,  FcmDeleteAllData data)?  $default,) {final _that = this;
switch (_that) {
case _FcmDeleteAllTokensResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmDeleteAllTokensResponse implements FcmDeleteAllTokensResponse {
  const _FcmDeleteAllTokensResponse({required this.success, this.message, required this.data});
  factory _FcmDeleteAllTokensResponse.fromJson(Map<String, dynamic> json) => _$FcmDeleteAllTokensResponseFromJson(json);

@override final  bool success;
@override final  String? message;
@override final  FcmDeleteAllData data;

/// Create a copy of FcmDeleteAllTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmDeleteAllTokensResponseCopyWith<_FcmDeleteAllTokensResponse> get copyWith => __$FcmDeleteAllTokensResponseCopyWithImpl<_FcmDeleteAllTokensResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmDeleteAllTokensResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmDeleteAllTokensResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmDeleteAllTokensResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FcmDeleteAllTokensResponseCopyWith<$Res> implements $FcmDeleteAllTokensResponseCopyWith<$Res> {
  factory _$FcmDeleteAllTokensResponseCopyWith(_FcmDeleteAllTokensResponse value, $Res Function(_FcmDeleteAllTokensResponse) _then) = __$FcmDeleteAllTokensResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message, FcmDeleteAllData data
});


@override $FcmDeleteAllDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FcmDeleteAllTokensResponseCopyWithImpl<$Res>
    implements _$FcmDeleteAllTokensResponseCopyWith<$Res> {
  __$FcmDeleteAllTokensResponseCopyWithImpl(this._self, this._then);

  final _FcmDeleteAllTokensResponse _self;
  final $Res Function(_FcmDeleteAllTokensResponse) _then;

/// Create a copy of FcmDeleteAllTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_FcmDeleteAllTokensResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmDeleteAllData,
  ));
}

/// Create a copy of FcmDeleteAllTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmDeleteAllDataCopyWith<$Res> get data {
  
  return $FcmDeleteAllDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FcmTokensResponse {

 bool get success; String? get message; FcmTokensData get data;
/// Create a copy of FcmTokensResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmTokensResponseCopyWith<FcmTokensResponse> get copyWith => _$FcmTokensResponseCopyWithImpl<FcmTokensResponse>(this as FcmTokensResponse, _$identity);

  /// Serializes this FcmTokensResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmTokensResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmTokensResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FcmTokensResponseCopyWith<$Res>  {
  factory $FcmTokensResponseCopyWith(FcmTokensResponse value, $Res Function(FcmTokensResponse) _then) = _$FcmTokensResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message, FcmTokensData data
});


$FcmTokensDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FcmTokensResponseCopyWithImpl<$Res>
    implements $FcmTokensResponseCopyWith<$Res> {
  _$FcmTokensResponseCopyWithImpl(this._self, this._then);

  final FcmTokensResponse _self;
  final $Res Function(FcmTokensResponse) _then;

/// Create a copy of FcmTokensResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmTokensData,
  ));
}
/// Create a copy of FcmTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmTokensDataCopyWith<$Res> get data {
  
  return $FcmTokensDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcmTokensResponse].
extension FcmTokensResponsePatterns on FcmTokensResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmTokensResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmTokensResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmTokensResponse value)  $default,){
final _that = this;
switch (_that) {
case _FcmTokensResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmTokensResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FcmTokensResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmTokensData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmTokensResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmTokensData data)  $default,) {final _that = this;
switch (_that) {
case _FcmTokensResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message,  FcmTokensData data)?  $default,) {final _that = this;
switch (_that) {
case _FcmTokensResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmTokensResponse implements FcmTokensResponse {
  const _FcmTokensResponse({required this.success, this.message, required this.data});
  factory _FcmTokensResponse.fromJson(Map<String, dynamic> json) => _$FcmTokensResponseFromJson(json);

@override final  bool success;
@override final  String? message;
@override final  FcmTokensData data;

/// Create a copy of FcmTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmTokensResponseCopyWith<_FcmTokensResponse> get copyWith => __$FcmTokensResponseCopyWithImpl<_FcmTokensResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmTokensResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmTokensResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmTokensResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FcmTokensResponseCopyWith<$Res> implements $FcmTokensResponseCopyWith<$Res> {
  factory _$FcmTokensResponseCopyWith(_FcmTokensResponse value, $Res Function(_FcmTokensResponse) _then) = __$FcmTokensResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message, FcmTokensData data
});


@override $FcmTokensDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FcmTokensResponseCopyWithImpl<$Res>
    implements _$FcmTokensResponseCopyWith<$Res> {
  __$FcmTokensResponseCopyWithImpl(this._self, this._then);

  final _FcmTokensResponse _self;
  final $Res Function(_FcmTokensResponse) _then;

/// Create a copy of FcmTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_FcmTokensResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmTokensData,
  ));
}

/// Create a copy of FcmTokensResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmTokensDataCopyWith<$Res> get data {
  
  return $FcmTokensDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
