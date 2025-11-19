// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_layout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainLayoutState {

 int get currentIndex; int get unreadChatsCount;
/// Create a copy of MainLayoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainLayoutStateCopyWith<MainLayoutState> get copyWith => _$MainLayoutStateCopyWithImpl<MainLayoutState>(this as MainLayoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainLayoutState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.unreadChatsCount, unreadChatsCount) || other.unreadChatsCount == unreadChatsCount));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,unreadChatsCount);

@override
String toString() {
  return 'MainLayoutState(currentIndex: $currentIndex, unreadChatsCount: $unreadChatsCount)';
}


}

/// @nodoc
abstract mixin class $MainLayoutStateCopyWith<$Res>  {
  factory $MainLayoutStateCopyWith(MainLayoutState value, $Res Function(MainLayoutState) _then) = _$MainLayoutStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, int unreadChatsCount
});




}
/// @nodoc
class _$MainLayoutStateCopyWithImpl<$Res>
    implements $MainLayoutStateCopyWith<$Res> {
  _$MainLayoutStateCopyWithImpl(this._self, this._then);

  final MainLayoutState _self;
  final $Res Function(MainLayoutState) _then;

/// Create a copy of MainLayoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? unreadChatsCount = null,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,unreadChatsCount: null == unreadChatsCount ? _self.unreadChatsCount : unreadChatsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainLayoutState].
extension MainLayoutStatePatterns on MainLayoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainLayoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainLayoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainLayoutState value)  $default,){
final _that = this;
switch (_that) {
case _MainLayoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainLayoutState value)?  $default,){
final _that = this;
switch (_that) {
case _MainLayoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  int unreadChatsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainLayoutState() when $default != null:
return $default(_that.currentIndex,_that.unreadChatsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  int unreadChatsCount)  $default,) {final _that = this;
switch (_that) {
case _MainLayoutState():
return $default(_that.currentIndex,_that.unreadChatsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  int unreadChatsCount)?  $default,) {final _that = this;
switch (_that) {
case _MainLayoutState() when $default != null:
return $default(_that.currentIndex,_that.unreadChatsCount);case _:
  return null;

}
}

}

/// @nodoc


class _MainLayoutState implements MainLayoutState {
  const _MainLayoutState({this.currentIndex = 0, this.unreadChatsCount = 0});
  

@override@JsonKey() final  int currentIndex;
@override@JsonKey() final  int unreadChatsCount;

/// Create a copy of MainLayoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainLayoutStateCopyWith<_MainLayoutState> get copyWith => __$MainLayoutStateCopyWithImpl<_MainLayoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainLayoutState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.unreadChatsCount, unreadChatsCount) || other.unreadChatsCount == unreadChatsCount));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,unreadChatsCount);

@override
String toString() {
  return 'MainLayoutState(currentIndex: $currentIndex, unreadChatsCount: $unreadChatsCount)';
}


}

/// @nodoc
abstract mixin class _$MainLayoutStateCopyWith<$Res> implements $MainLayoutStateCopyWith<$Res> {
  factory _$MainLayoutStateCopyWith(_MainLayoutState value, $Res Function(_MainLayoutState) _then) = __$MainLayoutStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, int unreadChatsCount
});




}
/// @nodoc
class __$MainLayoutStateCopyWithImpl<$Res>
    implements _$MainLayoutStateCopyWith<$Res> {
  __$MainLayoutStateCopyWithImpl(this._self, this._then);

  final _MainLayoutState _self;
  final $Res Function(_MainLayoutState) _then;

/// Create a copy of MainLayoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? unreadChatsCount = null,}) {
  return _then(_MainLayoutState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,unreadChatsCount: null == unreadChatsCount ? _self.unreadChatsCount : unreadChatsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
