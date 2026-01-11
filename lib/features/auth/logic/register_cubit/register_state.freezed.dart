// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _DetectingLocation value)?  detectingLocation,TResult Function( LocationDetected value)?  locationDetected,TResult Function( _LocationError value)?  locationError,TResult Function( Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DetectingLocation() when detectingLocation != null:
return detectingLocation(_that);case LocationDetected() when locationDetected != null:
return locationDetected(_that);case _LocationError() when locationError != null:
return locationError(_that);case Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _DetectingLocation value)  detectingLocation,required TResult Function( LocationDetected value)  locationDetected,required TResult Function( _LocationError value)  locationError,required TResult Function( Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _DetectingLocation():
return detectingLocation(_that);case LocationDetected():
return locationDetected(_that);case _LocationError():
return locationError(_that);case Success():
return success(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _DetectingLocation value)?  detectingLocation,TResult? Function( LocationDetected value)?  locationDetected,TResult? Function( _LocationError value)?  locationError,TResult? Function( Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DetectingLocation() when detectingLocation != null:
return detectingLocation(_that);case LocationDetected() when locationDetected != null:
return locationDetected(_that);case _LocationError() when locationError != null:
return locationError(_that);case Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  detectingLocation,TResult Function( String city,  String country,  String phoneCountryCode)?  locationDetected,TResult Function( String error)?  locationError,TResult Function( String email,  String message)?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _DetectingLocation() when detectingLocation != null:
return detectingLocation();case LocationDetected() when locationDetected != null:
return locationDetected(_that.city,_that.country,_that.phoneCountryCode);case _LocationError() when locationError != null:
return locationError(_that.error);case Success() when success != null:
return success(_that.email,_that.message);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  detectingLocation,required TResult Function( String city,  String country,  String phoneCountryCode)  locationDetected,required TResult Function( String error)  locationError,required TResult Function( String email,  String message)  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _DetectingLocation():
return detectingLocation();case LocationDetected():
return locationDetected(_that.city,_that.country,_that.phoneCountryCode);case _LocationError():
return locationError(_that.error);case Success():
return success(_that.email,_that.message);case _Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  detectingLocation,TResult? Function( String city,  String country,  String phoneCountryCode)?  locationDetected,TResult? Function( String error)?  locationError,TResult? Function( String email,  String message)?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _DetectingLocation() when detectingLocation != null:
return detectingLocation();case LocationDetected() when locationDetected != null:
return locationDetected(_that.city,_that.country,_that.phoneCountryCode);case _LocationError() when locationError != null:
return locationError(_that.error);case Success() when success != null:
return success(_that.email,_that.message);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RegisterState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.initial()';
}


}




/// @nodoc


class _Loading implements RegisterState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.loading()';
}


}




/// @nodoc


class _DetectingLocation implements RegisterState {
  const _DetectingLocation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectingLocation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.detectingLocation()';
}


}




/// @nodoc


class LocationDetected implements RegisterState {
  const LocationDetected({required this.city, required this.country, required this.phoneCountryCode});
  

 final  String city;
 final  String country;
 final  String phoneCountryCode;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationDetectedCopyWith<LocationDetected> get copyWith => _$LocationDetectedCopyWithImpl<LocationDetected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationDetected&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.phoneCountryCode, phoneCountryCode) || other.phoneCountryCode == phoneCountryCode));
}


@override
int get hashCode => Object.hash(runtimeType,city,country,phoneCountryCode);

@override
String toString() {
  return 'RegisterState.locationDetected(city: $city, country: $country, phoneCountryCode: $phoneCountryCode)';
}


}

/// @nodoc
abstract mixin class $LocationDetectedCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $LocationDetectedCopyWith(LocationDetected value, $Res Function(LocationDetected) _then) = _$LocationDetectedCopyWithImpl;
@useResult
$Res call({
 String city, String country, String phoneCountryCode
});




}
/// @nodoc
class _$LocationDetectedCopyWithImpl<$Res>
    implements $LocationDetectedCopyWith<$Res> {
  _$LocationDetectedCopyWithImpl(this._self, this._then);

  final LocationDetected _self;
  final $Res Function(LocationDetected) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? city = null,Object? country = null,Object? phoneCountryCode = null,}) {
  return _then(LocationDetected(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,phoneCountryCode: null == phoneCountryCode ? _self.phoneCountryCode : phoneCountryCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LocationError implements RegisterState {
  const _LocationError(this.error);
  

 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationErrorCopyWith<_LocationError> get copyWith => __$LocationErrorCopyWithImpl<_LocationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RegisterState.locationError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$LocationErrorCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$LocationErrorCopyWith(_LocationError value, $Res Function(_LocationError) _then) = __$LocationErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$LocationErrorCopyWithImpl<$Res>
    implements _$LocationErrorCopyWith<$Res> {
  __$LocationErrorCopyWithImpl(this._self, this._then);

  final _LocationError _self;
  final $Res Function(_LocationError) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_LocationError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Success implements RegisterState {
  const Success({required this.email, required this.message});
  

 final  String email;
 final  String message;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.email, email) || other.email == email)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,email,message);

@override
String toString() {
  return 'RegisterState.success(email: $email, message: $message)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 String email, String message
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? message = null,}) {
  return _then(Success(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements RegisterState {
  const _Error(this.error);
  

 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RegisterState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
