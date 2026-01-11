// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_reset_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckResetCodeRequest {

 String get email; String get resetCode;
/// Create a copy of CheckResetCodeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckResetCodeRequestCopyWith<CheckResetCodeRequest> get copyWith => _$CheckResetCodeRequestCopyWithImpl<CheckResetCodeRequest>(this as CheckResetCodeRequest, _$identity);

  /// Serializes this CheckResetCodeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckResetCodeRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.resetCode, resetCode) || other.resetCode == resetCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,resetCode);

@override
String toString() {
  return 'CheckResetCodeRequest(email: $email, resetCode: $resetCode)';
}


}

/// @nodoc
abstract mixin class $CheckResetCodeRequestCopyWith<$Res>  {
  factory $CheckResetCodeRequestCopyWith(CheckResetCodeRequest value, $Res Function(CheckResetCodeRequest) _then) = _$CheckResetCodeRequestCopyWithImpl;
@useResult
$Res call({
 String email, String resetCode
});




}
/// @nodoc
class _$CheckResetCodeRequestCopyWithImpl<$Res>
    implements $CheckResetCodeRequestCopyWith<$Res> {
  _$CheckResetCodeRequestCopyWithImpl(this._self, this._then);

  final CheckResetCodeRequest _self;
  final $Res Function(CheckResetCodeRequest) _then;

/// Create a copy of CheckResetCodeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? resetCode = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,resetCode: null == resetCode ? _self.resetCode : resetCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckResetCodeRequest].
extension CheckResetCodeRequestPatterns on CheckResetCodeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckResetCodeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckResetCodeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckResetCodeRequest value)  $default,){
final _that = this;
switch (_that) {
case _CheckResetCodeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckResetCodeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CheckResetCodeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String resetCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckResetCodeRequest() when $default != null:
return $default(_that.email,_that.resetCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String resetCode)  $default,) {final _that = this;
switch (_that) {
case _CheckResetCodeRequest():
return $default(_that.email,_that.resetCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String resetCode)?  $default,) {final _that = this;
switch (_that) {
case _CheckResetCodeRequest() when $default != null:
return $default(_that.email,_that.resetCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckResetCodeRequest implements CheckResetCodeRequest {
  const _CheckResetCodeRequest({required this.email, required this.resetCode});
  factory _CheckResetCodeRequest.fromJson(Map<String, dynamic> json) => _$CheckResetCodeRequestFromJson(json);

@override final  String email;
@override final  String resetCode;

/// Create a copy of CheckResetCodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckResetCodeRequestCopyWith<_CheckResetCodeRequest> get copyWith => __$CheckResetCodeRequestCopyWithImpl<_CheckResetCodeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckResetCodeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckResetCodeRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.resetCode, resetCode) || other.resetCode == resetCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,resetCode);

@override
String toString() {
  return 'CheckResetCodeRequest(email: $email, resetCode: $resetCode)';
}


}

/// @nodoc
abstract mixin class _$CheckResetCodeRequestCopyWith<$Res> implements $CheckResetCodeRequestCopyWith<$Res> {
  factory _$CheckResetCodeRequestCopyWith(_CheckResetCodeRequest value, $Res Function(_CheckResetCodeRequest) _then) = __$CheckResetCodeRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String resetCode
});




}
/// @nodoc
class __$CheckResetCodeRequestCopyWithImpl<$Res>
    implements _$CheckResetCodeRequestCopyWith<$Res> {
  __$CheckResetCodeRequestCopyWithImpl(this._self, this._then);

  final _CheckResetCodeRequest _self;
  final $Res Function(_CheckResetCodeRequest) _then;

/// Create a copy of CheckResetCodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? resetCode = null,}) {
  return _then(_CheckResetCodeRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,resetCode: null == resetCode ? _self.resetCode : resetCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
