// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyEmailResponse {

 bool get success; String get message; String get messageKey; VerifyEmailData get data; String get timestamp;
/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailResponseCopyWith<VerifyEmailResponse> get copyWith => _$VerifyEmailResponseCopyWithImpl<VerifyEmailResponse>(this as VerifyEmailResponse, _$identity);

  /// Serializes this VerifyEmailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageKey, messageKey) || other.messageKey == messageKey)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,messageKey,data,timestamp);

@override
String toString() {
  return 'VerifyEmailResponse(success: $success, message: $message, messageKey: $messageKey, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailResponseCopyWith<$Res>  {
  factory $VerifyEmailResponseCopyWith(VerifyEmailResponse value, $Res Function(VerifyEmailResponse) _then) = _$VerifyEmailResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, String messageKey, VerifyEmailData data, String timestamp
});


$VerifyEmailDataCopyWith<$Res> get data;

}
/// @nodoc
class _$VerifyEmailResponseCopyWithImpl<$Res>
    implements $VerifyEmailResponseCopyWith<$Res> {
  _$VerifyEmailResponseCopyWithImpl(this._self, this._then);

  final VerifyEmailResponse _self;
  final $Res Function(VerifyEmailResponse) _then;

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? messageKey = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,messageKey: null == messageKey ? _self.messageKey : messageKey // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyEmailData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyEmailDataCopyWith<$Res> get data {
  
  return $VerifyEmailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyEmailResponse].
extension VerifyEmailResponsePatterns on VerifyEmailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyEmailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyEmailResponse value)  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyEmailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  String messageKey,  VerifyEmailData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
return $default(_that.success,_that.message,_that.messageKey,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  String messageKey,  VerifyEmailData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailResponse():
return $default(_that.success,_that.message,_that.messageKey,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  String messageKey,  VerifyEmailData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
return $default(_that.success,_that.message,_that.messageKey,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyEmailResponse implements VerifyEmailResponse {
  const _VerifyEmailResponse({required this.success, required this.message, required this.messageKey, required this.data, required this.timestamp});
  factory _VerifyEmailResponse.fromJson(Map<String, dynamic> json) => _$VerifyEmailResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  String messageKey;
@override final  VerifyEmailData data;
@override final  String timestamp;

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyEmailResponseCopyWith<_VerifyEmailResponse> get copyWith => __$VerifyEmailResponseCopyWithImpl<_VerifyEmailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyEmailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyEmailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageKey, messageKey) || other.messageKey == messageKey)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,messageKey,data,timestamp);

@override
String toString() {
  return 'VerifyEmailResponse(success: $success, message: $message, messageKey: $messageKey, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$VerifyEmailResponseCopyWith<$Res> implements $VerifyEmailResponseCopyWith<$Res> {
  factory _$VerifyEmailResponseCopyWith(_VerifyEmailResponse value, $Res Function(_VerifyEmailResponse) _then) = __$VerifyEmailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, String messageKey, VerifyEmailData data, String timestamp
});


@override $VerifyEmailDataCopyWith<$Res> get data;

}
/// @nodoc
class __$VerifyEmailResponseCopyWithImpl<$Res>
    implements _$VerifyEmailResponseCopyWith<$Res> {
  __$VerifyEmailResponseCopyWithImpl(this._self, this._then);

  final _VerifyEmailResponse _self;
  final $Res Function(_VerifyEmailResponse) _then;

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? messageKey = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_VerifyEmailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,messageKey: null == messageKey ? _self.messageKey : messageKey // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyEmailData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyEmailDataCopyWith<$Res> get data {
  
  return $VerifyEmailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$VerifyEmailData {

 UserModel get user; TokensModel get tokens;
/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailDataCopyWith<VerifyEmailData> get copyWith => _$VerifyEmailDataCopyWithImpl<VerifyEmailData>(this as VerifyEmailData, _$identity);

  /// Serializes this VerifyEmailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailData&&(identical(other.user, user) || other.user == user)&&(identical(other.tokens, tokens) || other.tokens == tokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,tokens);

@override
String toString() {
  return 'VerifyEmailData(user: $user, tokens: $tokens)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailDataCopyWith<$Res>  {
  factory $VerifyEmailDataCopyWith(VerifyEmailData value, $Res Function(VerifyEmailData) _then) = _$VerifyEmailDataCopyWithImpl;
@useResult
$Res call({
 UserModel user, TokensModel tokens
});


$UserModelCopyWith<$Res> get user;$TokensModelCopyWith<$Res> get tokens;

}
/// @nodoc
class _$VerifyEmailDataCopyWithImpl<$Res>
    implements $VerifyEmailDataCopyWith<$Res> {
  _$VerifyEmailDataCopyWithImpl(this._self, this._then);

  final VerifyEmailData _self;
  final $Res Function(VerifyEmailData) _then;

/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? tokens = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as TokensModel,
  ));
}
/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokensModelCopyWith<$Res> get tokens {
  
  return $TokensModelCopyWith<$Res>(_self.tokens, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyEmailData].
extension VerifyEmailDataPatterns on VerifyEmailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyEmailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyEmailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyEmailData value)  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyEmailData value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserModel user,  TokensModel tokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyEmailData() when $default != null:
return $default(_that.user,_that.tokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserModel user,  TokensModel tokens)  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailData():
return $default(_that.user,_that.tokens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserModel user,  TokensModel tokens)?  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailData() when $default != null:
return $default(_that.user,_that.tokens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyEmailData implements VerifyEmailData {
  const _VerifyEmailData({required this.user, required this.tokens});
  factory _VerifyEmailData.fromJson(Map<String, dynamic> json) => _$VerifyEmailDataFromJson(json);

@override final  UserModel user;
@override final  TokensModel tokens;

/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyEmailDataCopyWith<_VerifyEmailData> get copyWith => __$VerifyEmailDataCopyWithImpl<_VerifyEmailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyEmailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyEmailData&&(identical(other.user, user) || other.user == user)&&(identical(other.tokens, tokens) || other.tokens == tokens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,tokens);

@override
String toString() {
  return 'VerifyEmailData(user: $user, tokens: $tokens)';
}


}

/// @nodoc
abstract mixin class _$VerifyEmailDataCopyWith<$Res> implements $VerifyEmailDataCopyWith<$Res> {
  factory _$VerifyEmailDataCopyWith(_VerifyEmailData value, $Res Function(_VerifyEmailData) _then) = __$VerifyEmailDataCopyWithImpl;
@override @useResult
$Res call({
 UserModel user, TokensModel tokens
});


@override $UserModelCopyWith<$Res> get user;@override $TokensModelCopyWith<$Res> get tokens;

}
/// @nodoc
class __$VerifyEmailDataCopyWithImpl<$Res>
    implements _$VerifyEmailDataCopyWith<$Res> {
  __$VerifyEmailDataCopyWithImpl(this._self, this._then);

  final _VerifyEmailData _self;
  final $Res Function(_VerifyEmailData) _then;

/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? tokens = null,}) {
  return _then(_VerifyEmailData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,tokens: null == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as TokensModel,
  ));
}

/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of VerifyEmailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokensModelCopyWith<$Res> get tokens {
  
  return $TokensModelCopyWith<$Res>(_self.tokens, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}
}

// dart format on
