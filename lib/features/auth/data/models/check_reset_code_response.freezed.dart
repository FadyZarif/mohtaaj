// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_reset_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckResetCodeResponse {

 bool get success; String get message; String get messageKey; CheckResetCodeData get data;
/// Create a copy of CheckResetCodeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckResetCodeResponseCopyWith<CheckResetCodeResponse> get copyWith => _$CheckResetCodeResponseCopyWithImpl<CheckResetCodeResponse>(this as CheckResetCodeResponse, _$identity);

  /// Serializes this CheckResetCodeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckResetCodeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageKey, messageKey) || other.messageKey == messageKey)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,messageKey,data);

@override
String toString() {
  return 'CheckResetCodeResponse(success: $success, message: $message, messageKey: $messageKey, data: $data)';
}


}

/// @nodoc
abstract mixin class $CheckResetCodeResponseCopyWith<$Res>  {
  factory $CheckResetCodeResponseCopyWith(CheckResetCodeResponse value, $Res Function(CheckResetCodeResponse) _then) = _$CheckResetCodeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, String messageKey, CheckResetCodeData data
});


$CheckResetCodeDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CheckResetCodeResponseCopyWithImpl<$Res>
    implements $CheckResetCodeResponseCopyWith<$Res> {
  _$CheckResetCodeResponseCopyWithImpl(this._self, this._then);

  final CheckResetCodeResponse _self;
  final $Res Function(CheckResetCodeResponse) _then;

/// Create a copy of CheckResetCodeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? messageKey = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,messageKey: null == messageKey ? _self.messageKey : messageKey // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckResetCodeData,
  ));
}
/// Create a copy of CheckResetCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckResetCodeDataCopyWith<$Res> get data {
  
  return $CheckResetCodeDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckResetCodeResponse].
extension CheckResetCodeResponsePatterns on CheckResetCodeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckResetCodeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckResetCodeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckResetCodeResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckResetCodeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckResetCodeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckResetCodeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  String messageKey,  CheckResetCodeData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckResetCodeResponse() when $default != null:
return $default(_that.success,_that.message,_that.messageKey,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  String messageKey,  CheckResetCodeData data)  $default,) {final _that = this;
switch (_that) {
case _CheckResetCodeResponse():
return $default(_that.success,_that.message,_that.messageKey,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  String messageKey,  CheckResetCodeData data)?  $default,) {final _that = this;
switch (_that) {
case _CheckResetCodeResponse() when $default != null:
return $default(_that.success,_that.message,_that.messageKey,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckResetCodeResponse implements CheckResetCodeResponse {
  const _CheckResetCodeResponse({required this.success, required this.message, required this.messageKey, required this.data});
  factory _CheckResetCodeResponse.fromJson(Map<String, dynamic> json) => _$CheckResetCodeResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  String messageKey;
@override final  CheckResetCodeData data;

/// Create a copy of CheckResetCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckResetCodeResponseCopyWith<_CheckResetCodeResponse> get copyWith => __$CheckResetCodeResponseCopyWithImpl<_CheckResetCodeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckResetCodeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckResetCodeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageKey, messageKey) || other.messageKey == messageKey)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,messageKey,data);

@override
String toString() {
  return 'CheckResetCodeResponse(success: $success, message: $message, messageKey: $messageKey, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CheckResetCodeResponseCopyWith<$Res> implements $CheckResetCodeResponseCopyWith<$Res> {
  factory _$CheckResetCodeResponseCopyWith(_CheckResetCodeResponse value, $Res Function(_CheckResetCodeResponse) _then) = __$CheckResetCodeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, String messageKey, CheckResetCodeData data
});


@override $CheckResetCodeDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CheckResetCodeResponseCopyWithImpl<$Res>
    implements _$CheckResetCodeResponseCopyWith<$Res> {
  __$CheckResetCodeResponseCopyWithImpl(this._self, this._then);

  final _CheckResetCodeResponse _self;
  final $Res Function(_CheckResetCodeResponse) _then;

/// Create a copy of CheckResetCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? messageKey = null,Object? data = null,}) {
  return _then(_CheckResetCodeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,messageKey: null == messageKey ? _self.messageKey : messageKey // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckResetCodeData,
  ));
}

/// Create a copy of CheckResetCodeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckResetCodeDataCopyWith<$Res> get data {
  
  return $CheckResetCodeDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CheckResetCodeData {

 String get resetToken; String get email; String get name;
/// Create a copy of CheckResetCodeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckResetCodeDataCopyWith<CheckResetCodeData> get copyWith => _$CheckResetCodeDataCopyWithImpl<CheckResetCodeData>(this as CheckResetCodeData, _$identity);

  /// Serializes this CheckResetCodeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckResetCodeData&&(identical(other.resetToken, resetToken) || other.resetToken == resetToken)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resetToken,email,name);

@override
String toString() {
  return 'CheckResetCodeData(resetToken: $resetToken, email: $email, name: $name)';
}


}

/// @nodoc
abstract mixin class $CheckResetCodeDataCopyWith<$Res>  {
  factory $CheckResetCodeDataCopyWith(CheckResetCodeData value, $Res Function(CheckResetCodeData) _then) = _$CheckResetCodeDataCopyWithImpl;
@useResult
$Res call({
 String resetToken, String email, String name
});




}
/// @nodoc
class _$CheckResetCodeDataCopyWithImpl<$Res>
    implements $CheckResetCodeDataCopyWith<$Res> {
  _$CheckResetCodeDataCopyWithImpl(this._self, this._then);

  final CheckResetCodeData _self;
  final $Res Function(CheckResetCodeData) _then;

/// Create a copy of CheckResetCodeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resetToken = null,Object? email = null,Object? name = null,}) {
  return _then(_self.copyWith(
resetToken: null == resetToken ? _self.resetToken : resetToken // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckResetCodeData].
extension CheckResetCodeDataPatterns on CheckResetCodeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckResetCodeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckResetCodeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckResetCodeData value)  $default,){
final _that = this;
switch (_that) {
case _CheckResetCodeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckResetCodeData value)?  $default,){
final _that = this;
switch (_that) {
case _CheckResetCodeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resetToken,  String email,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckResetCodeData() when $default != null:
return $default(_that.resetToken,_that.email,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resetToken,  String email,  String name)  $default,) {final _that = this;
switch (_that) {
case _CheckResetCodeData():
return $default(_that.resetToken,_that.email,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resetToken,  String email,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CheckResetCodeData() when $default != null:
return $default(_that.resetToken,_that.email,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckResetCodeData implements CheckResetCodeData {
  const _CheckResetCodeData({required this.resetToken, required this.email, required this.name});
  factory _CheckResetCodeData.fromJson(Map<String, dynamic> json) => _$CheckResetCodeDataFromJson(json);

@override final  String resetToken;
@override final  String email;
@override final  String name;

/// Create a copy of CheckResetCodeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckResetCodeDataCopyWith<_CheckResetCodeData> get copyWith => __$CheckResetCodeDataCopyWithImpl<_CheckResetCodeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckResetCodeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckResetCodeData&&(identical(other.resetToken, resetToken) || other.resetToken == resetToken)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resetToken,email,name);

@override
String toString() {
  return 'CheckResetCodeData(resetToken: $resetToken, email: $email, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CheckResetCodeDataCopyWith<$Res> implements $CheckResetCodeDataCopyWith<$Res> {
  factory _$CheckResetCodeDataCopyWith(_CheckResetCodeData value, $Res Function(_CheckResetCodeData) _then) = __$CheckResetCodeDataCopyWithImpl;
@override @useResult
$Res call({
 String resetToken, String email, String name
});




}
/// @nodoc
class __$CheckResetCodeDataCopyWithImpl<$Res>
    implements _$CheckResetCodeDataCopyWith<$Res> {
  __$CheckResetCodeDataCopyWithImpl(this._self, this._then);

  final _CheckResetCodeData _self;
  final $Res Function(_CheckResetCodeData) _then;

/// Create a copy of CheckResetCodeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resetToken = null,Object? email = null,Object? name = null,}) {
  return _then(_CheckResetCodeData(
resetToken: null == resetToken ? _self.resetToken : resetToken // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
