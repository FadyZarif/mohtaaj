// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState()';
}


}

/// @nodoc
class $UserProfileStateCopyWith<$Res>  {
$UserProfileStateCopyWith(UserProfileState _, $Res Function(UserProfileState) __);
}


/// Adds pattern-matching-related methods to [UserProfileState].
extension UserProfileStatePatterns on UserProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserData user,  List<ItemModel> items,  List<UserRating> ratings,  int itemsPage,  bool hasMoreItems,  bool isLoadingItems,  int ratingsPage,  bool hasMoreRatings,  bool isLoadingRatings)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.user,_that.items,_that.ratings,_that.itemsPage,_that.hasMoreItems,_that.isLoadingItems,_that.ratingsPage,_that.hasMoreRatings,_that.isLoadingRatings);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserData user,  List<ItemModel> items,  List<UserRating> ratings,  int itemsPage,  bool hasMoreItems,  bool isLoadingItems,  int ratingsPage,  bool hasMoreRatings,  bool isLoadingRatings)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.user,_that.items,_that.ratings,_that.itemsPage,_that.hasMoreItems,_that.isLoadingItems,_that.ratingsPage,_that.hasMoreRatings,_that.isLoadingRatings);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserData user,  List<ItemModel> items,  List<UserRating> ratings,  int itemsPage,  bool hasMoreItems,  bool isLoadingItems,  int ratingsPage,  bool hasMoreRatings,  bool isLoadingRatings)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.user,_that.items,_that.ratings,_that.itemsPage,_that.hasMoreItems,_that.isLoadingItems,_that.ratingsPage,_that.hasMoreRatings,_that.isLoadingRatings);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserProfileState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState.initial()';
}


}




/// @nodoc


class _Loading implements UserProfileState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState.loading()';
}


}




/// @nodoc


class _Success implements UserProfileState {
  const _Success({required this.user, required final  List<ItemModel> items, required final  List<UserRating> ratings, this.itemsPage = 1, this.hasMoreItems = false, this.isLoadingItems = false, this.ratingsPage = 1, this.hasMoreRatings = false, this.isLoadingRatings = false}): _items = items,_ratings = ratings;
  

 final  UserData user;
 final  List<ItemModel> _items;
 List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<UserRating> _ratings;
 List<UserRating> get ratings {
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ratings);
}

@JsonKey() final  int itemsPage;
@JsonKey() final  bool hasMoreItems;
@JsonKey() final  bool isLoadingItems;
@JsonKey() final  int ratingsPage;
@JsonKey() final  bool hasMoreRatings;
@JsonKey() final  bool isLoadingRatings;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&(identical(other.itemsPage, itemsPage) || other.itemsPage == itemsPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.isLoadingItems, isLoadingItems) || other.isLoadingItems == isLoadingItems)&&(identical(other.ratingsPage, ratingsPage) || other.ratingsPage == ratingsPage)&&(identical(other.hasMoreRatings, hasMoreRatings) || other.hasMoreRatings == hasMoreRatings)&&(identical(other.isLoadingRatings, isLoadingRatings) || other.isLoadingRatings == isLoadingRatings));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_ratings),itemsPage,hasMoreItems,isLoadingItems,ratingsPage,hasMoreRatings,isLoadingRatings);

@override
String toString() {
  return 'UserProfileState.success(user: $user, items: $items, ratings: $ratings, itemsPage: $itemsPage, hasMoreItems: $hasMoreItems, isLoadingItems: $isLoadingItems, ratingsPage: $ratingsPage, hasMoreRatings: $hasMoreRatings, isLoadingRatings: $isLoadingRatings)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 UserData user, List<ItemModel> items, List<UserRating> ratings, int itemsPage, bool hasMoreItems, bool isLoadingItems, int ratingsPage, bool hasMoreRatings, bool isLoadingRatings
});


$UserDataCopyWith<$Res> get user;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? items = null,Object? ratings = null,Object? itemsPage = null,Object? hasMoreItems = null,Object? isLoadingItems = null,Object? ratingsPage = null,Object? hasMoreRatings = null,Object? isLoadingRatings = null,}) {
  return _then(_Success(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,ratings: null == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<UserRating>,itemsPage: null == itemsPage ? _self.itemsPage : itemsPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,isLoadingItems: null == isLoadingItems ? _self.isLoadingItems : isLoadingItems // ignore: cast_nullable_to_non_nullable
as bool,ratingsPage: null == ratingsPage ? _self.ratingsPage : ratingsPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreRatings: null == hasMoreRatings ? _self.hasMoreRatings : hasMoreRatings // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRatings: null == isLoadingRatings ? _self.isLoadingRatings : isLoadingRatings // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res> get user {
  
  return $UserDataCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _Error implements UserProfileState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of UserProfileState
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
  return 'UserProfileState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
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

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
