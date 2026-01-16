// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'close_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloseItemRequest {

 String? get buyerId;
/// Create a copy of CloseItemRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloseItemRequestCopyWith<CloseItemRequest> get copyWith => _$CloseItemRequestCopyWithImpl<CloseItemRequest>(this as CloseItemRequest, _$identity);

  /// Serializes this CloseItemRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloseItemRequest&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buyerId);

@override
String toString() {
  return 'CloseItemRequest(buyerId: $buyerId)';
}


}

/// @nodoc
abstract mixin class $CloseItemRequestCopyWith<$Res>  {
  factory $CloseItemRequestCopyWith(CloseItemRequest value, $Res Function(CloseItemRequest) _then) = _$CloseItemRequestCopyWithImpl;
@useResult
$Res call({
 String? buyerId
});




}
/// @nodoc
class _$CloseItemRequestCopyWithImpl<$Res>
    implements $CloseItemRequestCopyWith<$Res> {
  _$CloseItemRequestCopyWithImpl(this._self, this._then);

  final CloseItemRequest _self;
  final $Res Function(CloseItemRequest) _then;

/// Create a copy of CloseItemRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buyerId = freezed,}) {
  return _then(_self.copyWith(
buyerId: freezed == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CloseItemRequest].
extension CloseItemRequestPatterns on CloseItemRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloseItemRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloseItemRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloseItemRequest value)  $default,){
final _that = this;
switch (_that) {
case _CloseItemRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloseItemRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CloseItemRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? buyerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloseItemRequest() when $default != null:
return $default(_that.buyerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? buyerId)  $default,) {final _that = this;
switch (_that) {
case _CloseItemRequest():
return $default(_that.buyerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? buyerId)?  $default,) {final _that = this;
switch (_that) {
case _CloseItemRequest() when $default != null:
return $default(_that.buyerId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CloseItemRequest implements CloseItemRequest {
  const _CloseItemRequest({this.buyerId});
  factory _CloseItemRequest.fromJson(Map<String, dynamic> json) => _$CloseItemRequestFromJson(json);

@override final  String? buyerId;

/// Create a copy of CloseItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloseItemRequestCopyWith<_CloseItemRequest> get copyWith => __$CloseItemRequestCopyWithImpl<_CloseItemRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloseItemRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloseItemRequest&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buyerId);

@override
String toString() {
  return 'CloseItemRequest(buyerId: $buyerId)';
}


}

/// @nodoc
abstract mixin class _$CloseItemRequestCopyWith<$Res> implements $CloseItemRequestCopyWith<$Res> {
  factory _$CloseItemRequestCopyWith(_CloseItemRequest value, $Res Function(_CloseItemRequest) _then) = __$CloseItemRequestCopyWithImpl;
@override @useResult
$Res call({
 String? buyerId
});




}
/// @nodoc
class __$CloseItemRequestCopyWithImpl<$Res>
    implements _$CloseItemRequestCopyWith<$Res> {
  __$CloseItemRequestCopyWithImpl(this._self, this._then);

  final _CloseItemRequest _self;
  final $Res Function(_CloseItemRequest) _then;

/// Create a copy of CloseItemRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buyerId = freezed,}) {
  return _then(_CloseItemRequest(
buyerId: freezed == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
