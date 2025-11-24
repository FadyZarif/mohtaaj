// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 String get searchQuery; List<ItemModel> get items; bool get isLoading; String? get error; int get currentPage; bool get hasMoreItems;// Filters
 String? get selectedCategory; String? get selectedCity; String? get minPrice; String? get maxPrice; String? get condition; bool get isFreeOnly; String get sortBy; String get sortOrder;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.isFreeOnly, isFreeOnly) || other.isFreeOnly == isFreeOnly)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,const DeepCollectionEquality().hash(items),isLoading,error,currentPage,hasMoreItems,selectedCategory,selectedCity,minPrice,maxPrice,condition,isFreeOnly,sortBy,sortOrder);

@override
String toString() {
  return 'SearchState(searchQuery: $searchQuery, items: $items, isLoading: $isLoading, error: $error, currentPage: $currentPage, hasMoreItems: $hasMoreItems, selectedCategory: $selectedCategory, selectedCity: $selectedCity, minPrice: $minPrice, maxPrice: $maxPrice, condition: $condition, isFreeOnly: $isFreeOnly, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String searchQuery, List<ItemModel> items, bool isLoading, String? error, int currentPage, bool hasMoreItems, String? selectedCategory, String? selectedCity, String? minPrice, String? maxPrice, String? condition, bool isFreeOnly, String sortBy, String sortOrder
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchQuery = null,Object? items = null,Object? isLoading = null,Object? error = freezed,Object? currentPage = null,Object? hasMoreItems = null,Object? selectedCategory = freezed,Object? selectedCity = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? condition = freezed,Object? isFreeOnly = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,isFreeOnly: null == isFreeOnly ? _self.isFreeOnly : isFreeOnly // ignore: cast_nullable_to_non_nullable
as bool,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchQuery,  List<ItemModel> items,  bool isLoading,  String? error,  int currentPage,  bool hasMoreItems,  String? selectedCategory,  String? selectedCity,  String? minPrice,  String? maxPrice,  String? condition,  bool isFreeOnly,  String sortBy,  String sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchQuery,_that.items,_that.isLoading,_that.error,_that.currentPage,_that.hasMoreItems,_that.selectedCategory,_that.selectedCity,_that.minPrice,_that.maxPrice,_that.condition,_that.isFreeOnly,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchQuery,  List<ItemModel> items,  bool isLoading,  String? error,  int currentPage,  bool hasMoreItems,  String? selectedCategory,  String? selectedCity,  String? minPrice,  String? maxPrice,  String? condition,  bool isFreeOnly,  String sortBy,  String sortOrder)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.searchQuery,_that.items,_that.isLoading,_that.error,_that.currentPage,_that.hasMoreItems,_that.selectedCategory,_that.selectedCity,_that.minPrice,_that.maxPrice,_that.condition,_that.isFreeOnly,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchQuery,  List<ItemModel> items,  bool isLoading,  String? error,  int currentPage,  bool hasMoreItems,  String? selectedCategory,  String? selectedCity,  String? minPrice,  String? maxPrice,  String? condition,  bool isFreeOnly,  String sortBy,  String sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchQuery,_that.items,_that.isLoading,_that.error,_that.currentPage,_that.hasMoreItems,_that.selectedCategory,_that.selectedCity,_that.minPrice,_that.maxPrice,_that.condition,_that.isFreeOnly,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.searchQuery = '', final  List<ItemModel> items = const [], this.isLoading = false, this.error, this.currentPage = 1, this.hasMoreItems = false, this.selectedCategory, this.selectedCity, this.minPrice, this.maxPrice, this.condition, this.isFreeOnly = false, this.sortBy = 'createdAt', this.sortOrder = 'desc'}): _items = items;
  

@override@JsonKey() final  String searchQuery;
 final  List<ItemModel> _items;
@override@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMoreItems;
// Filters
@override final  String? selectedCategory;
@override final  String? selectedCity;
@override final  String? minPrice;
@override final  String? maxPrice;
@override final  String? condition;
@override@JsonKey() final  bool isFreeOnly;
@override@JsonKey() final  String sortBy;
@override@JsonKey() final  String sortOrder;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.isFreeOnly, isFreeOnly) || other.isFreeOnly == isFreeOnly)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,const DeepCollectionEquality().hash(_items),isLoading,error,currentPage,hasMoreItems,selectedCategory,selectedCity,minPrice,maxPrice,condition,isFreeOnly,sortBy,sortOrder);

@override
String toString() {
  return 'SearchState(searchQuery: $searchQuery, items: $items, isLoading: $isLoading, error: $error, currentPage: $currentPage, hasMoreItems: $hasMoreItems, selectedCategory: $selectedCategory, selectedCity: $selectedCity, minPrice: $minPrice, maxPrice: $maxPrice, condition: $condition, isFreeOnly: $isFreeOnly, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String searchQuery, List<ItemModel> items, bool isLoading, String? error, int currentPage, bool hasMoreItems, String? selectedCategory, String? selectedCity, String? minPrice, String? maxPrice, String? condition, bool isFreeOnly, String sortBy, String sortOrder
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,Object? items = null,Object? isLoading = null,Object? error = freezed,Object? currentPage = null,Object? hasMoreItems = null,Object? selectedCategory = freezed,Object? selectedCity = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? condition = freezed,Object? isFreeOnly = null,Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_SearchState(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as String?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,isFreeOnly: null == isFreeOnly ? _self.isFreeOnly : isFreeOnly // ignore: cast_nullable_to_non_nullable
as bool,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
