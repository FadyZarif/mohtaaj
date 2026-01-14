// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocketState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketState()';
}


}

/// @nodoc
class $SocketStateCopyWith<$Res>  {
$SocketStateCopyWith(SocketState _, $Res Function(SocketState) __);
}


/// Adds pattern-matching-related methods to [SocketState].
extension SocketStatePatterns on SocketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Connecting value)?  connecting,TResult Function( _Connected value)?  connected,TResult Function( _Disconnected value)?  disconnected,TResult Function( _AuthInvalid value)?  authInvalid,TResult Function( _TokenExpiring value)?  tokenExpiring,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Connecting() when connecting != null:
return connecting(_that);case _Connected() when connected != null:
return connected(_that);case _Disconnected() when disconnected != null:
return disconnected(_that);case _AuthInvalid() when authInvalid != null:
return authInvalid(_that);case _TokenExpiring() when tokenExpiring != null:
return tokenExpiring(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Connecting value)  connecting,required TResult Function( _Connected value)  connected,required TResult Function( _Disconnected value)  disconnected,required TResult Function( _AuthInvalid value)  authInvalid,required TResult Function( _TokenExpiring value)  tokenExpiring,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Connecting():
return connecting(_that);case _Connected():
return connected(_that);case _Disconnected():
return disconnected(_that);case _AuthInvalid():
return authInvalid(_that);case _TokenExpiring():
return tokenExpiring(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Connecting value)?  connecting,TResult? Function( _Connected value)?  connected,TResult? Function( _Disconnected value)?  disconnected,TResult? Function( _AuthInvalid value)?  authInvalid,TResult? Function( _TokenExpiring value)?  tokenExpiring,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Connecting() when connecting != null:
return connecting(_that);case _Connected() when connected != null:
return connected(_that);case _Disconnected() when disconnected != null:
return disconnected(_that);case _AuthInvalid() when authInvalid != null:
return authInvalid(_that);case _TokenExpiring() when tokenExpiring != null:
return tokenExpiring(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  connecting,TResult Function()?  connected,TResult Function()?  disconnected,TResult Function( String message)?  authInvalid,TResult Function( String expiresAt)?  tokenExpiring,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Connecting() when connecting != null:
return connecting();case _Connected() when connected != null:
return connected();case _Disconnected() when disconnected != null:
return disconnected();case _AuthInvalid() when authInvalid != null:
return authInvalid(_that.message);case _TokenExpiring() when tokenExpiring != null:
return tokenExpiring(_that.expiresAt);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  connecting,required TResult Function()  connected,required TResult Function()  disconnected,required TResult Function( String message)  authInvalid,required TResult Function( String expiresAt)  tokenExpiring,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Connecting():
return connecting();case _Connected():
return connected();case _Disconnected():
return disconnected();case _AuthInvalid():
return authInvalid(_that.message);case _TokenExpiring():
return tokenExpiring(_that.expiresAt);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  connecting,TResult? Function()?  connected,TResult? Function()?  disconnected,TResult? Function( String message)?  authInvalid,TResult? Function( String expiresAt)?  tokenExpiring,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Connecting() when connecting != null:
return connecting();case _Connected() when connected != null:
return connected();case _Disconnected() when disconnected != null:
return disconnected();case _AuthInvalid() when authInvalid != null:
return authInvalid(_that.message);case _TokenExpiring() when tokenExpiring != null:
return tokenExpiring(_that.expiresAt);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SocketState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketState.initial()';
}


}




/// @nodoc


class _Connecting implements SocketState {
  const _Connecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketState.connecting()';
}


}




/// @nodoc


class _Connected implements SocketState {
  const _Connected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketState.connected()';
}


}




/// @nodoc


class _Disconnected implements SocketState {
  const _Disconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Disconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketState.disconnected()';
}


}




/// @nodoc


class _AuthInvalid implements SocketState {
  const _AuthInvalid(this.message);
  

 final  String message;

/// Create a copy of SocketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthInvalidCopyWith<_AuthInvalid> get copyWith => __$AuthInvalidCopyWithImpl<_AuthInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthInvalid&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SocketState.authInvalid(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AuthInvalidCopyWith<$Res> implements $SocketStateCopyWith<$Res> {
  factory _$AuthInvalidCopyWith(_AuthInvalid value, $Res Function(_AuthInvalid) _then) = __$AuthInvalidCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AuthInvalidCopyWithImpl<$Res>
    implements _$AuthInvalidCopyWith<$Res> {
  __$AuthInvalidCopyWithImpl(this._self, this._then);

  final _AuthInvalid _self;
  final $Res Function(_AuthInvalid) _then;

/// Create a copy of SocketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AuthInvalid(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TokenExpiring implements SocketState {
  const _TokenExpiring(this.expiresAt);
  

 final  String expiresAt;

/// Create a copy of SocketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenExpiringCopyWith<_TokenExpiring> get copyWith => __$TokenExpiringCopyWithImpl<_TokenExpiring>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenExpiring&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,expiresAt);

@override
String toString() {
  return 'SocketState.tokenExpiring(expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$TokenExpiringCopyWith<$Res> implements $SocketStateCopyWith<$Res> {
  factory _$TokenExpiringCopyWith(_TokenExpiring value, $Res Function(_TokenExpiring) _then) = __$TokenExpiringCopyWithImpl;
@useResult
$Res call({
 String expiresAt
});




}
/// @nodoc
class __$TokenExpiringCopyWithImpl<$Res>
    implements _$TokenExpiringCopyWith<$Res> {
  __$TokenExpiringCopyWithImpl(this._self, this._then);

  final _TokenExpiring _self;
  final $Res Function(_TokenExpiring) _then;

/// Create a copy of SocketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expiresAt = null,}) {
  return _then(_TokenExpiring(
null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements SocketState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of SocketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SocketState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SocketStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SocketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
