// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateUserRequest {

 int get rating; String? get comment; String get itemId;
/// Create a copy of RateUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateUserRequestCopyWith<RateUserRequest> get copyWith => _$RateUserRequestCopyWithImpl<RateUserRequest>(this as RateUserRequest, _$identity);

  /// Serializes this RateUserRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateUserRequest&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,comment,itemId);

@override
String toString() {
  return 'RateUserRequest(rating: $rating, comment: $comment, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class $RateUserRequestCopyWith<$Res>  {
  factory $RateUserRequestCopyWith(RateUserRequest value, $Res Function(RateUserRequest) _then) = _$RateUserRequestCopyWithImpl;
@useResult
$Res call({
 int rating, String? comment, String itemId
});




}
/// @nodoc
class _$RateUserRequestCopyWithImpl<$Res>
    implements $RateUserRequestCopyWith<$Res> {
  _$RateUserRequestCopyWithImpl(this._self, this._then);

  final RateUserRequest _self;
  final $Res Function(RateUserRequest) _then;

/// Create a copy of RateUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? comment = freezed,Object? itemId = null,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RateUserRequest].
extension RateUserRequestPatterns on RateUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _RateUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RateUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rating,  String? comment,  String itemId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateUserRequest() when $default != null:
return $default(_that.rating,_that.comment,_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rating,  String? comment,  String itemId)  $default,) {final _that = this;
switch (_that) {
case _RateUserRequest():
return $default(_that.rating,_that.comment,_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rating,  String? comment,  String itemId)?  $default,) {final _that = this;
switch (_that) {
case _RateUserRequest() when $default != null:
return $default(_that.rating,_that.comment,_that.itemId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RateUserRequest implements RateUserRequest {
  const _RateUserRequest({required this.rating, this.comment, required this.itemId});
  factory _RateUserRequest.fromJson(Map<String, dynamic> json) => _$RateUserRequestFromJson(json);

@override final  int rating;
@override final  String? comment;
@override final  String itemId;

/// Create a copy of RateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateUserRequestCopyWith<_RateUserRequest> get copyWith => __$RateUserRequestCopyWithImpl<_RateUserRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RateUserRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateUserRequest&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,comment,itemId);

@override
String toString() {
  return 'RateUserRequest(rating: $rating, comment: $comment, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$RateUserRequestCopyWith<$Res> implements $RateUserRequestCopyWith<$Res> {
  factory _$RateUserRequestCopyWith(_RateUserRequest value, $Res Function(_RateUserRequest) _then) = __$RateUserRequestCopyWithImpl;
@override @useResult
$Res call({
 int rating, String? comment, String itemId
});




}
/// @nodoc
class __$RateUserRequestCopyWithImpl<$Res>
    implements _$RateUserRequestCopyWith<$Res> {
  __$RateUserRequestCopyWithImpl(this._self, this._then);

  final _RateUserRequest _self;
  final $Res Function(_RateUserRequest) _then;

/// Create a copy of RateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? comment = freezed,Object? itemId = null,}) {
  return _then(_RateUserRequest(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
