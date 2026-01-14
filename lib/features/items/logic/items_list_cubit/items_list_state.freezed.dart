// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsListState {

 String get searchQuery; List<ItemModel> get items; bool get isLoading; bool get isLoadingMore; String? get error; int get currentPage; bool get hasMoreItems;// Filters
 String? get categoryId;// ده الفرق الوحيد - عشان الـ category items
 String? get selectedCity; String? get minPrice; String? get maxPrice; ItemCondition? get condition;// ✅ enum مش String
 bool get isFreeOnly; SortBy get sortBy; SortOrder get sortOrder;
/// Create a copy of ItemsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsListStateCopyWith<ItemsListState> get copyWith => _$ItemsListStateCopyWithImpl<ItemsListState>(this as ItemsListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsListState&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.isFreeOnly, isFreeOnly) || other.isFreeOnly == isFreeOnly)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,const DeepCollectionEquality().hash(items),isLoading,isLoadingMore,error,currentPage,hasMoreItems,categoryId,selectedCity,minPrice,maxPrice,condition,isFreeOnly,sortBy,sortOrder);

@override
String toString() {
  return 'ItemsListState(searchQuery: $searchQuery, items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, currentPage: $currentPage, hasMoreItems: $hasMoreItems, categoryId: $categoryId, selectedCity: $selectedCity, minPrice: $minPrice, maxPrice: $maxPrice, condition: $condition, isFreeOnly: $isFreeOnly, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ItemsListStateCopyWith<$Res>  {
  factory $ItemsListStateCopyWith(ItemsListState value, $Res Function(ItemsListState) _then) = _$ItemsListStateCopyWithImpl;
@useResult
$Res call({
 String searchQuery, List<ItemModel> items, bool isLoading, bool isLoadingMore, String? error, int currentPage, bool hasMoreItems, String? categoryId, String? selectedCity, String? minPrice, String? maxPrice, ItemCondition? condition, bool isFreeOnly, SortBy sortBy, SortOrder sortOrder
});




}
/// @nodoc
class _$ItemsListStateCopyWithImpl<$Res>
    implements $ItemsListStateCopyWith<$Res> {
  _$ItemsListStateCopyWithImpl(this._self, this._then);

  final ItemsListState _self;
  final $Res Function(ItemsListState) _then;

/// Create a copy of ItemsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchQuery = null,Object? items = null,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? currentPage = null,Object? hasMoreItems = null,Object? categoryId = freezed,Object? selectedCity = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? condition = freezed,Object? isFreeOnly = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,isFreeOnly: null == isFreeOnly ? _self.isFreeOnly : isFreeOnly // ignore: cast_nullable_to_non_nullable
as bool,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemsListState].
extension ItemsListStatePatterns on ItemsListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsListState value)  $default,){
final _that = this;
switch (_that) {
case _ItemsListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsListState value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchQuery,  List<ItemModel> items,  bool isLoading,  bool isLoadingMore,  String? error,  int currentPage,  bool hasMoreItems,  String? categoryId,  String? selectedCity,  String? minPrice,  String? maxPrice,  ItemCondition? condition,  bool isFreeOnly,  SortBy sortBy,  SortOrder sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsListState() when $default != null:
return $default(_that.searchQuery,_that.items,_that.isLoading,_that.isLoadingMore,_that.error,_that.currentPage,_that.hasMoreItems,_that.categoryId,_that.selectedCity,_that.minPrice,_that.maxPrice,_that.condition,_that.isFreeOnly,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchQuery,  List<ItemModel> items,  bool isLoading,  bool isLoadingMore,  String? error,  int currentPage,  bool hasMoreItems,  String? categoryId,  String? selectedCity,  String? minPrice,  String? maxPrice,  ItemCondition? condition,  bool isFreeOnly,  SortBy sortBy,  SortOrder sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ItemsListState():
return $default(_that.searchQuery,_that.items,_that.isLoading,_that.isLoadingMore,_that.error,_that.currentPage,_that.hasMoreItems,_that.categoryId,_that.selectedCity,_that.minPrice,_that.maxPrice,_that.condition,_that.isFreeOnly,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchQuery,  List<ItemModel> items,  bool isLoading,  bool isLoadingMore,  String? error,  int currentPage,  bool hasMoreItems,  String? categoryId,  String? selectedCity,  String? minPrice,  String? maxPrice,  ItemCondition? condition,  bool isFreeOnly,  SortBy sortBy,  SortOrder sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ItemsListState() when $default != null:
return $default(_that.searchQuery,_that.items,_that.isLoading,_that.isLoadingMore,_that.error,_that.currentPage,_that.hasMoreItems,_that.categoryId,_that.selectedCity,_that.minPrice,_that.maxPrice,_that.condition,_that.isFreeOnly,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsListState implements ItemsListState {
  const _ItemsListState({this.searchQuery = '', final  List<ItemModel> items = const [], this.isLoading = false, this.isLoadingMore = false, this.error, this.currentPage = 1, this.hasMoreItems = false, this.categoryId, this.selectedCity, this.minPrice, this.maxPrice, this.condition, this.isFreeOnly = false, this.sortBy = SortBy.createdAt, this.sortOrder = SortOrder.desc}): _items = items;
  

@override@JsonKey() final  String searchQuery;
 final  List<ItemModel> _items;
@override@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? error;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMoreItems;
// Filters
@override final  String? categoryId;
// ده الفرق الوحيد - عشان الـ category items
@override final  String? selectedCity;
@override final  String? minPrice;
@override final  String? maxPrice;
@override final  ItemCondition? condition;
// ✅ enum مش String
@override@JsonKey() final  bool isFreeOnly;
@override@JsonKey() final  SortBy sortBy;
@override@JsonKey() final  SortOrder sortOrder;

/// Create a copy of ItemsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsListStateCopyWith<_ItemsListState> get copyWith => __$ItemsListStateCopyWithImpl<_ItemsListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsListState&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.isFreeOnly, isFreeOnly) || other.isFreeOnly == isFreeOnly)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,const DeepCollectionEquality().hash(_items),isLoading,isLoadingMore,error,currentPage,hasMoreItems,categoryId,selectedCity,minPrice,maxPrice,condition,isFreeOnly,sortBy,sortOrder);

@override
String toString() {
  return 'ItemsListState(searchQuery: $searchQuery, items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, currentPage: $currentPage, hasMoreItems: $hasMoreItems, categoryId: $categoryId, selectedCity: $selectedCity, minPrice: $minPrice, maxPrice: $maxPrice, condition: $condition, isFreeOnly: $isFreeOnly, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ItemsListStateCopyWith<$Res> implements $ItemsListStateCopyWith<$Res> {
  factory _$ItemsListStateCopyWith(_ItemsListState value, $Res Function(_ItemsListState) _then) = __$ItemsListStateCopyWithImpl;
@override @useResult
$Res call({
 String searchQuery, List<ItemModel> items, bool isLoading, bool isLoadingMore, String? error, int currentPage, bool hasMoreItems, String? categoryId, String? selectedCity, String? minPrice, String? maxPrice, ItemCondition? condition, bool isFreeOnly, SortBy sortBy, SortOrder sortOrder
});




}
/// @nodoc
class __$ItemsListStateCopyWithImpl<$Res>
    implements _$ItemsListStateCopyWith<$Res> {
  __$ItemsListStateCopyWithImpl(this._self, this._then);

  final _ItemsListState _self;
  final $Res Function(_ItemsListState) _then;

/// Create a copy of ItemsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,Object? items = null,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? currentPage = null,Object? hasMoreItems = null,Object? categoryId = freezed,Object? selectedCity = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? condition = freezed,Object? isFreeOnly = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_ItemsListState(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,isFreeOnly: null == isFreeOnly ? _self.isFreeOnly : isFreeOnly // ignore: cast_nullable_to_non_nullable
as bool,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as SortBy,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

// dart format on
