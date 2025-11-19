// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

// Categories
 List<CategoryModel> get categories; bool get isCategoriesLoading; String? get categoriesError;// Featured Items
 List<ItemModel> get featuredItems; bool get isFeaturedLoading; String? get featuredError;// Items (إعلانات مخصصة)
 List<ItemModel> get items; bool get isItemsLoading; String? get itemsError; int get currentPage; bool get hasMoreItems;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isCategoriesLoading, isCategoriesLoading) || other.isCategoriesLoading == isCategoriesLoading)&&(identical(other.categoriesError, categoriesError) || other.categoriesError == categoriesError)&&const DeepCollectionEquality().equals(other.featuredItems, featuredItems)&&(identical(other.isFeaturedLoading, isFeaturedLoading) || other.isFeaturedLoading == isFeaturedLoading)&&(identical(other.featuredError, featuredError) || other.featuredError == featuredError)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isItemsLoading, isItemsLoading) || other.isItemsLoading == isItemsLoading)&&(identical(other.itemsError, itemsError) || other.itemsError == itemsError)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),isCategoriesLoading,categoriesError,const DeepCollectionEquality().hash(featuredItems),isFeaturedLoading,featuredError,const DeepCollectionEquality().hash(items),isItemsLoading,itemsError,currentPage,hasMoreItems);

@override
String toString() {
  return 'HomeState(categories: $categories, isCategoriesLoading: $isCategoriesLoading, categoriesError: $categoriesError, featuredItems: $featuredItems, isFeaturedLoading: $isFeaturedLoading, featuredError: $featuredError, items: $items, isItemsLoading: $isItemsLoading, itemsError: $itemsError, currentPage: $currentPage, hasMoreItems: $hasMoreItems)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories, bool isCategoriesLoading, String? categoriesError, List<ItemModel> featuredItems, bool isFeaturedLoading, String? featuredError, List<ItemModel> items, bool isItemsLoading, String? itemsError, int currentPage, bool hasMoreItems
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? isCategoriesLoading = null,Object? categoriesError = freezed,Object? featuredItems = null,Object? isFeaturedLoading = null,Object? featuredError = freezed,Object? items = null,Object? isItemsLoading = null,Object? itemsError = freezed,Object? currentPage = null,Object? hasMoreItems = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,isCategoriesLoading: null == isCategoriesLoading ? _self.isCategoriesLoading : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
as bool,categoriesError: freezed == categoriesError ? _self.categoriesError : categoriesError // ignore: cast_nullable_to_non_nullable
as String?,featuredItems: null == featuredItems ? _self.featuredItems : featuredItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isFeaturedLoading: null == isFeaturedLoading ? _self.isFeaturedLoading : isFeaturedLoading // ignore: cast_nullable_to_non_nullable
as bool,featuredError: freezed == featuredError ? _self.featuredError : featuredError // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isItemsLoading: null == isItemsLoading ? _self.isItemsLoading : isItemsLoading // ignore: cast_nullable_to_non_nullable
as bool,itemsError: freezed == itemsError ? _self.itemsError : itemsError // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> categories,  bool isCategoriesLoading,  String? categoriesError,  List<ItemModel> featuredItems,  bool isFeaturedLoading,  String? featuredError,  List<ItemModel> items,  bool isItemsLoading,  String? itemsError,  int currentPage,  bool hasMoreItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.categories,_that.isCategoriesLoading,_that.categoriesError,_that.featuredItems,_that.isFeaturedLoading,_that.featuredError,_that.items,_that.isItemsLoading,_that.itemsError,_that.currentPage,_that.hasMoreItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> categories,  bool isCategoriesLoading,  String? categoriesError,  List<ItemModel> featuredItems,  bool isFeaturedLoading,  String? featuredError,  List<ItemModel> items,  bool isItemsLoading,  String? itemsError,  int currentPage,  bool hasMoreItems)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.categories,_that.isCategoriesLoading,_that.categoriesError,_that.featuredItems,_that.isFeaturedLoading,_that.featuredError,_that.items,_that.isItemsLoading,_that.itemsError,_that.currentPage,_that.hasMoreItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> categories,  bool isCategoriesLoading,  String? categoriesError,  List<ItemModel> featuredItems,  bool isFeaturedLoading,  String? featuredError,  List<ItemModel> items,  bool isItemsLoading,  String? itemsError,  int currentPage,  bool hasMoreItems)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.categories,_that.isCategoriesLoading,_that.categoriesError,_that.featuredItems,_that.isFeaturedLoading,_that.featuredError,_that.items,_that.isItemsLoading,_that.itemsError,_that.currentPage,_that.hasMoreItems);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({final  List<CategoryModel> categories = const [], this.isCategoriesLoading = false, this.categoriesError, final  List<ItemModel> featuredItems = const [], this.isFeaturedLoading = false, this.featuredError, final  List<ItemModel> items = const [], this.isItemsLoading = false, this.itemsError, this.currentPage = 1, this.hasMoreItems = false}): _categories = categories,_featuredItems = featuredItems,_items = items;
  

// Categories
 final  List<CategoryModel> _categories;
// Categories
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  bool isCategoriesLoading;
@override final  String? categoriesError;
// Featured Items
 final  List<ItemModel> _featuredItems;
// Featured Items
@override@JsonKey() List<ItemModel> get featuredItems {
  if (_featuredItems is EqualUnmodifiableListView) return _featuredItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featuredItems);
}

@override@JsonKey() final  bool isFeaturedLoading;
@override final  String? featuredError;
// Items (إعلانات مخصصة)
 final  List<ItemModel> _items;
// Items (إعلانات مخصصة)
@override@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isItemsLoading;
@override final  String? itemsError;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMoreItems;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isCategoriesLoading, isCategoriesLoading) || other.isCategoriesLoading == isCategoriesLoading)&&(identical(other.categoriesError, categoriesError) || other.categoriesError == categoriesError)&&const DeepCollectionEquality().equals(other._featuredItems, _featuredItems)&&(identical(other.isFeaturedLoading, isFeaturedLoading) || other.isFeaturedLoading == isFeaturedLoading)&&(identical(other.featuredError, featuredError) || other.featuredError == featuredError)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isItemsLoading, isItemsLoading) || other.isItemsLoading == isItemsLoading)&&(identical(other.itemsError, itemsError) || other.itemsError == itemsError)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMoreItems, hasMoreItems) || other.hasMoreItems == hasMoreItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),isCategoriesLoading,categoriesError,const DeepCollectionEquality().hash(_featuredItems),isFeaturedLoading,featuredError,const DeepCollectionEquality().hash(_items),isItemsLoading,itemsError,currentPage,hasMoreItems);

@override
String toString() {
  return 'HomeState(categories: $categories, isCategoriesLoading: $isCategoriesLoading, categoriesError: $categoriesError, featuredItems: $featuredItems, isFeaturedLoading: $isFeaturedLoading, featuredError: $featuredError, items: $items, isItemsLoading: $isItemsLoading, itemsError: $itemsError, currentPage: $currentPage, hasMoreItems: $hasMoreItems)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> categories, bool isCategoriesLoading, String? categoriesError, List<ItemModel> featuredItems, bool isFeaturedLoading, String? featuredError, List<ItemModel> items, bool isItemsLoading, String? itemsError, int currentPage, bool hasMoreItems
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? isCategoriesLoading = null,Object? categoriesError = freezed,Object? featuredItems = null,Object? isFeaturedLoading = null,Object? featuredError = freezed,Object? items = null,Object? isItemsLoading = null,Object? itemsError = freezed,Object? currentPage = null,Object? hasMoreItems = null,}) {
  return _then(_HomeState(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,isCategoriesLoading: null == isCategoriesLoading ? _self.isCategoriesLoading : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
as bool,categoriesError: freezed == categoriesError ? _self.categoriesError : categoriesError // ignore: cast_nullable_to_non_nullable
as String?,featuredItems: null == featuredItems ? _self._featuredItems : featuredItems // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isFeaturedLoading: null == isFeaturedLoading ? _self.isFeaturedLoading : isFeaturedLoading // ignore: cast_nullable_to_non_nullable
as bool,featuredError: freezed == featuredError ? _self.featuredError : featuredError // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,isItemsLoading: null == isItemsLoading ? _self.isItemsLoading : isItemsLoading // ignore: cast_nullable_to_non_nullable
as bool,itemsError: freezed == itemsError ? _self.itemsError : itemsError // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMoreItems: null == hasMoreItems ? _self.hasMoreItems : hasMoreItems // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
