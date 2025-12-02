// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyItemsState {

 List<ItemModel> get allItems;// ✅ كل الـ items
 List<ItemModel> get filteredItems;// ✅ الـ items المفلترة
 bool get isLoading; bool get isLoadingMore; bool get hasMore; int get currentPage; String? get error; ItemStatus? get selectedStatus;
/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyItemsStateCopyWith<MyItemsState> get copyWith => _$MyItemsStateCopyWithImpl<MyItemsState>(this as MyItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyItemsState&&const DeepCollectionEquality().equals(other.allItems, allItems)&&const DeepCollectionEquality().equals(other.filteredItems, filteredItems)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allItems),const DeepCollectionEquality().hash(filteredItems),isLoading,isLoadingMore,hasMore,currentPage,error,selectedStatus);

@override
String toString() {
  return 'MyItemsState(allItems: $allItems, filteredItems: $filteredItems, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasMore: $hasMore, currentPage: $currentPage, error: $error, selectedStatus: $selectedStatus)';
}


}

/// @nodoc
abstract mixin class $MyItemsStateCopyWith<$Res>  {
  factory $MyItemsStateCopyWith(MyItemsState value, $Res Function(MyItemsState) _then) = _$MyItemsStateCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> allItems, List<ItemModel> filteredItems, bool isLoading, bool isLoadingMore, bool hasMore, int currentPage, String? error, ItemStatus? selectedStatus
});




}
/// @nodoc
class _$MyItemsStateCopyWithImpl<$Res>
    implements $MyItemsStateCopyWith<$Res> {
  _$MyItemsStateCopyWithImpl(this._self, this._then);

  final MyItemsState _self;
  final $Res Function(MyItemsState) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allItems = null,Object? filteredItems = null,Object? isLoading = null,Object? isLoadingMore = null,Object? hasMore = null,Object? currentPage = null,Object? error = freezed,Object? selectedStatus = freezed,}) {
  return _then(_self.copyWith(
allItems: null == allItems ? _self.allItems : allItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,filteredItems: null == filteredItems ? _self.filteredItems : filteredItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as ItemStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyItemsState].
extension MyItemsStatePatterns on MyItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyItemsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyItemsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyItemsState value)  $default,){
final _that = this;
switch (_that) {
case _MyItemsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyItemsState value)?  $default,){
final _that = this;
switch (_that) {
case _MyItemsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ItemModel> allItems,  List<ItemModel> filteredItems,  bool isLoading,  bool isLoadingMore,  bool hasMore,  int currentPage,  String? error,  ItemStatus? selectedStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyItemsState() when $default != null:
return $default(_that.allItems,_that.filteredItems,_that.isLoading,_that.isLoadingMore,_that.hasMore,_that.currentPage,_that.error,_that.selectedStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ItemModel> allItems,  List<ItemModel> filteredItems,  bool isLoading,  bool isLoadingMore,  bool hasMore,  int currentPage,  String? error,  ItemStatus? selectedStatus)  $default,) {final _that = this;
switch (_that) {
case _MyItemsState():
return $default(_that.allItems,_that.filteredItems,_that.isLoading,_that.isLoadingMore,_that.hasMore,_that.currentPage,_that.error,_that.selectedStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ItemModel> allItems,  List<ItemModel> filteredItems,  bool isLoading,  bool isLoadingMore,  bool hasMore,  int currentPage,  String? error,  ItemStatus? selectedStatus)?  $default,) {final _that = this;
switch (_that) {
case _MyItemsState() when $default != null:
return $default(_that.allItems,_that.filteredItems,_that.isLoading,_that.isLoadingMore,_that.hasMore,_that.currentPage,_that.error,_that.selectedStatus);case _:
  return null;

}
}

}

/// @nodoc


class _MyItemsState implements MyItemsState {
  const _MyItemsState({final  List<ItemModel> allItems = const [], final  List<ItemModel> filteredItems = const [], this.isLoading = false, this.isLoadingMore = false, this.hasMore = false, this.currentPage = 1, this.error, this.selectedStatus}): _allItems = allItems,_filteredItems = filteredItems;
  

 final  List<ItemModel> _allItems;
@override@JsonKey() List<ItemModel> get allItems {
  if (_allItems is EqualUnmodifiableListView) return _allItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allItems);
}

// ✅ كل الـ items
 final  List<ItemModel> _filteredItems;
// ✅ كل الـ items
@override@JsonKey() List<ItemModel> get filteredItems {
  if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredItems);
}

// ✅ الـ items المفلترة
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int currentPage;
@override final  String? error;
@override final  ItemStatus? selectedStatus;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyItemsStateCopyWith<_MyItemsState> get copyWith => __$MyItemsStateCopyWithImpl<_MyItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyItemsState&&const DeepCollectionEquality().equals(other._allItems, _allItems)&&const DeepCollectionEquality().equals(other._filteredItems, _filteredItems)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allItems),const DeepCollectionEquality().hash(_filteredItems),isLoading,isLoadingMore,hasMore,currentPage,error,selectedStatus);

@override
String toString() {
  return 'MyItemsState(allItems: $allItems, filteredItems: $filteredItems, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasMore: $hasMore, currentPage: $currentPage, error: $error, selectedStatus: $selectedStatus)';
}


}

/// @nodoc
abstract mixin class _$MyItemsStateCopyWith<$Res> implements $MyItemsStateCopyWith<$Res> {
  factory _$MyItemsStateCopyWith(_MyItemsState value, $Res Function(_MyItemsState) _then) = __$MyItemsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ItemModel> allItems, List<ItemModel> filteredItems, bool isLoading, bool isLoadingMore, bool hasMore, int currentPage, String? error, ItemStatus? selectedStatus
});




}
/// @nodoc
class __$MyItemsStateCopyWithImpl<$Res>
    implements _$MyItemsStateCopyWith<$Res> {
  __$MyItemsStateCopyWithImpl(this._self, this._then);

  final _MyItemsState _self;
  final $Res Function(_MyItemsState) _then;

/// Create a copy of MyItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allItems = null,Object? filteredItems = null,Object? isLoading = null,Object? isLoadingMore = null,Object? hasMore = null,Object? currentPage = null,Object? error = freezed,Object? selectedStatus = freezed,}) {
  return _then(_MyItemsState(
allItems: null == allItems ? _self._allItems : allItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,filteredItems: null == filteredItems ? _self._filteredItems : filteredItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as ItemStatus?,
  ));
}


}

// dart format on
