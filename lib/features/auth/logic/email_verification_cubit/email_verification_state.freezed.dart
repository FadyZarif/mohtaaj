// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailVerificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState()';
}


}

/// @nodoc
class $EmailVerificationStateCopyWith<$Res>  {
$EmailVerificationStateCopyWith(EmailVerificationState _, $Res Function(EmailVerificationState) __);
}


/// Adds pattern-matching-related methods to [EmailVerificationState].
extension EmailVerificationStatePatterns on EmailVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Verifying value)?  verifying,TResult Function( _Verified value)?  verified,TResult Function( _ResendingCode value)?  resendingCode,TResult Function( _CodeResent value)?  codeResent,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Verifying() when verifying != null:
return verifying(_that);case _Verified() when verified != null:
return verified(_that);case _ResendingCode() when resendingCode != null:
return resendingCode(_that);case _CodeResent() when codeResent != null:
return codeResent(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Verifying value)  verifying,required TResult Function( _Verified value)  verified,required TResult Function( _ResendingCode value)  resendingCode,required TResult Function( _CodeResent value)  codeResent,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Verifying():
return verifying(_that);case _Verified():
return verified(_that);case _ResendingCode():
return resendingCode(_that);case _CodeResent():
return codeResent(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Verifying value)?  verifying,TResult? Function( _Verified value)?  verified,TResult? Function( _ResendingCode value)?  resendingCode,TResult? Function( _CodeResent value)?  codeResent,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Verifying() when verifying != null:
return verifying(_that);case _Verified() when verified != null:
return verified(_that);case _ResendingCode() when resendingCode != null:
return resendingCode(_that);case _CodeResent() when codeResent != null:
return codeResent(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  verifying,TResult Function( String message)?  verified,TResult Function()?  resendingCode,TResult Function( String message)?  codeResent,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Verifying() when verifying != null:
return verifying();case _Verified() when verified != null:
return verified(_that.message);case _ResendingCode() when resendingCode != null:
return resendingCode();case _CodeResent() when codeResent != null:
return codeResent(_that.message);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  verifying,required TResult Function( String message)  verified,required TResult Function()  resendingCode,required TResult Function( String message)  codeResent,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Verifying():
return verifying();case _Verified():
return verified(_that.message);case _ResendingCode():
return resendingCode();case _CodeResent():
return codeResent(_that.message);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  verifying,TResult? Function( String message)?  verified,TResult? Function()?  resendingCode,TResult? Function( String message)?  codeResent,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Verifying() when verifying != null:
return verifying();case _Verified() when verified != null:
return verified(_that.message);case _ResendingCode() when resendingCode != null:
return resendingCode();case _CodeResent() when codeResent != null:
return codeResent(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EmailVerificationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.initial()';
}


}




/// @nodoc


class _Verifying implements EmailVerificationState {
  const _Verifying();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Verifying);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.verifying()';
}


}




/// @nodoc


class _Verified implements EmailVerificationState {
  const _Verified({required this.message});
  

 final  String message;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifiedCopyWith<_Verified> get copyWith => __$VerifiedCopyWithImpl<_Verified>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Verified&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EmailVerificationState.verified(message: $message)';
}


}

/// @nodoc
abstract mixin class _$VerifiedCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
  factory _$VerifiedCopyWith(_Verified value, $Res Function(_Verified) _then) = __$VerifiedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$VerifiedCopyWithImpl<$Res>
    implements _$VerifiedCopyWith<$Res> {
  __$VerifiedCopyWithImpl(this._self, this._then);

  final _Verified _self;
  final $Res Function(_Verified) _then;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Verified(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResendingCode implements EmailVerificationState {
  const _ResendingCode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendingCode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.resendingCode()';
}


}




/// @nodoc


class _CodeResent implements EmailVerificationState {
  const _CodeResent({required this.message});
  

 final  String message;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeResentCopyWith<_CodeResent> get copyWith => __$CodeResentCopyWithImpl<_CodeResent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeResent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EmailVerificationState.codeResent(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CodeResentCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
  factory _$CodeResentCopyWith(_CodeResent value, $Res Function(_CodeResent) _then) = __$CodeResentCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CodeResentCopyWithImpl<$Res>
    implements _$CodeResentCopyWith<$Res> {
  __$CodeResentCopyWithImpl(this._self, this._then);

  final _CodeResent _self;
  final $Res Function(_CodeResent) _then;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CodeResent(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements EmailVerificationState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of EmailVerificationState
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
  return 'EmailVerificationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
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

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
