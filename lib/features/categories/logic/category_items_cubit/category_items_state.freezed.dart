// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryItemsState {

 List<ItemModel> get items; bool get isLoading; bool get isLoadingMore; int get currentPage; bool get hasMoreItems; int get itemsPerPage; String? get error;// Filters
 String? get searchQuery; ItemCondition? get selectedCondition; String? get selectedCity; bool? get isFree; String? get minPrice; String? get maxPrice; SortBy? get sortBy; SortOrder get sortOrder;
/// Create a copy of CategoryItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryItemsStateCopyWith<CategoryItemsState> get copyWith => _$CategoryItemsStateCopyWithImpl<CategoryItemsState>(this as CategoryItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryItemsState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.error, error) || other.error == error)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedCondition, selectedCondition) || other.selectedCondition == selectedCondition)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isLoading,isLoadingMore,currentPage,hasMoreItems,itemsPerPage,error,searchQuery,selectedCondition,selectedCity,isFree,minPrice,maxPrice,sortBy,sortOrder);

@override
String toString() {
  return 'CategoryItemsState(items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, currentPage: $currentPage, hasMoreItems: $hasMoreItems, itemsPerPage: $itemsPerPage, error: $error, searchQuery: $searchQuery, selectedCondition: $selectedCondition, selectedCity: $selectedCity, isFree: $isFree, minPrice: $minPrice, maxPrice: $maxPrice, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $CategoryItemsStateCopyWith<$Res>  {
  factory $CategoryItemsStateCopyWith(CategoryItemsState value, $Res Function(CategoryItemsState) _then) = _$CategoryItemsStateCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items, bool isLoading, bool isLoadingMore, int currentPage, bool hasMoreItems, int itemsPerPage, String? error, String? searchQuery, ItemCondition? selectedCondition, String? selectedCity, bool? isFree, String? minPrice, String? maxPrice, SortBy? sortBy, SortOrder sortOrder
});




}
/// @nodoc
class _$CategoryItemsStateCopyWithImpl<$Res>
    implements $CategoryItemsStateCopyWith<$Res> {
  _$CategoryItemsStateCopyWithImpl(this._self, this._then);

  final CategoryItemsState _self;
  final $Res Function(CategoryItemsState) _then;

/// Create a copy of CategoryItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isLoading = null,Object? isLoadingMore = null,Object? currentPage = null,Object? hasMoreItems = null,Object? itemsPerPage = null,Object? error = freezed,Object? searchQuery = freezed,Object? selectedCondition = freezed,Object? selectedCity = freezed,Object? isFree = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? sortBy = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,selectedCondition: freezed == selectedCondition ? _self.selectedCondition : selectedCondition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as String?,isFree: freezed == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryItemsState].
extension CategoryItemsStatePatterns on CategoryItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryItemsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryItemsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryItemsState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryItemsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryItemsState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryItemsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ItemModel> items,  bool isLoading,  bool isLoadingMore,  int currentPage,  bool hasMoreItems,  int itemsPerPage,  String? error,  String? searchQuery,  ItemCondition? selectedCondition,  String? selectedCity,  bool? isFree,  String? minPrice,  String? maxPrice,  SortBy? sortBy,  SortOrder sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryItemsState() when $default != null:
return $default(_that.items,_that.isLoading,_that.isLoadingMore,_that.currentPage,_that.hasMoreItems,_that.itemsPerPage,_that.error,_that.searchQuery,_that.selectedCondition,_that.selectedCity,_that.isFree,_that.minPrice,_that.maxPrice,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ItemModel> items,  bool isLoading,  bool isLoadingMore,  int currentPage,  bool hasMoreItems,  int itemsPerPage,  String? error,  String? searchQuery,  ItemCondition? selectedCondition,  String? selectedCity,  bool? isFree,  String? minPrice,  String? maxPrice,  SortBy? sortBy,  SortOrder sortOrder)  $default,) {final _that = this;
switch (_that) {
case _CategoryItemsState():
return $default(_that.items,_that.isLoading,_that.isLoadingMore,_that.currentPage,_that.hasMoreItems,_that.itemsPerPage,_that.error,_that.searchQuery,_that.selectedCondition,_that.selectedCity,_that.isFree,_that.minPrice,_that.maxPrice,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ItemModel> items,  bool isLoading,  bool isLoadingMore,  int currentPage,  bool hasMoreItems,  int itemsPerPage,  String? error,  String? searchQuery,  ItemCondition? selectedCondition,  String? selectedCity,  bool? isFree,  String? minPrice,  String? maxPrice,  SortBy? sortBy,  SortOrder sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _CategoryItemsState() when $default != null:
return $default(_that.items,_that.isLoading,_that.isLoadingMore,_that.currentPage,_that.hasMoreItems,_that.itemsPerPage,_that.error,_that.searchQuery,_that.selectedCondition,_that.selectedCity,_that.isFree,_that.minPrice,_that.maxPrice,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryItemsState implements CategoryItemsState {
  const _CategoryItemsState({final  List<ItemModel> items = const [], this.isLoading = true, this.isLoadingMore = false, this.currentPage = 1, this.hasMoreItems = true, this.itemsPerPage = 20, this.error, this.searchQuery, this.selectedCondition, this.selectedCity, this.isFree, this.minPrice, this.maxPrice, this.sortBy, this.sortOrder = SortOrder.desc}): _items = items;
  

 final  List<ItemModel> _items;
@override@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMoreItems;
@override@JsonKey() final  int itemsPerPage;
@override final  String? error;
// Filters
@override final  String? searchQuery;
@override final  ItemCondition? selectedCondition;
@override final  String? selectedCity;
@override final  bool? isFree;
@override final  String? minPrice;
@override final  String? maxPrice;
@override final  SortBy? sortBy;
@override@JsonKey() final  SortOrder sortOrder;

/// Create a copy of CategoryItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryItemsStateCopyWith<_CategoryItemsState> get copyWith => __$CategoryItemsStateCopyWithImpl<_CategoryItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryItemsState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.error, error) || other.error == error)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedCondition, selectedCondition) || other.selectedCondition == selectedCondition)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isLoading,isLoadingMore,currentPage,hasMoreItems,itemsPerPage,error,searchQuery,selectedCondition,selectedCity,isFree,minPrice,maxPrice,sortBy,sortOrder);

@override
String toString() {
  return 'CategoryItemsState(items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, currentPage: $currentPage, hasMoreItems: $hasMoreItems, itemsPerPage: $itemsPerPage, error: $error, searchQuery: $searchQuery, selectedCondition: $selectedCondition, selectedCity: $selectedCity, isFree: $isFree, minPrice: $minPrice, maxPrice: $maxPrice, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$CategoryItemsStateCopyWith<$Res> implements $CategoryItemsStateCopyWith<$Res> {
  factory _$CategoryItemsStateCopyWith(_CategoryItemsState value, $Res Function(_CategoryItemsState) _then) = __$CategoryItemsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ItemModel> items, bool isLoading, bool isLoadingMore, int currentPage, bool hasMoreItems, int itemsPerPage, String? error, String? searchQuery, ItemCondition? selectedCondition, String? selectedCity, bool? isFree, String? minPrice, String? maxPrice, SortBy? sortBy, SortOrder sortOrder
});




}
/// @nodoc
class __$CategoryItemsStateCopyWithImpl<$Res>
    implements _$CategoryItemsStateCopyWith<$Res> {
  __$CategoryItemsStateCopyWithImpl(this._self, this._then);

  final _CategoryItemsState _self;
  final $Res Function(_CategoryItemsState) _then;

/// Create a copy of CategoryItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isLoading = null,Object? isLoadingMore = null,Object? currentPage = null,Object? hasMoreItems = null,Object? itemsPerPage = null,Object? error = freezed,Object? searchQuery = freezed,Object? selectedCondition = freezed,Object? selectedCity = freezed,Object? isFree = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? sortBy = freezed,Object? sortOrder = null,}) {
  return _then(_CategoryItemsState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,selectedCondition: freezed == selectedCondition ? _self.selectedCondition : selectedCondition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as String?,isFree: freezed == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

// dart format on
