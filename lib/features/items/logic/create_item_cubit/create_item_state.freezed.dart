// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateItemState {

 List<File> get selectedImages; List<String> get uploadedImageUrls; bool get isUploadingImages; String? get title; String? get description; String? get categoryId; ItemCondition? get condition; String? get city; double? get geoLat; double? get geoLng; double? get price;// ← غير من String لـ double
 bool get isFree; bool get isSubmitting; String? get error; ItemModel? get createdItem;
/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateItemStateCopyWith<CreateItemState> get copyWith => _$CreateItemStateCopyWithImpl<CreateItemState>(this as CreateItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateItemState&&const DeepCollectionEquality().equals(other.selectedImages, selectedImages)&&const DeepCollectionEquality().equals(other.uploadedImageUrls, uploadedImageUrls)&&(identical(other.isUploadingImages, isUploadingImages) || other.isUploadingImages == isUploadingImages)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&(identical(other.createdItem, createdItem) || other.createdItem == createdItem));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedImages),const DeepCollectionEquality().hash(uploadedImageUrls),isUploadingImages,title,description,categoryId,condition,city,geoLat,geoLng,price,isFree,isSubmitting,error,createdItem);

@override
String toString() {
  return 'CreateItemState(selectedImages: $selectedImages, uploadedImageUrls: $uploadedImageUrls, isUploadingImages: $isUploadingImages, title: $title, description: $description, categoryId: $categoryId, condition: $condition, city: $city, geoLat: $geoLat, geoLng: $geoLng, price: $price, isFree: $isFree, isSubmitting: $isSubmitting, error: $error, createdItem: $createdItem)';
}


}

/// @nodoc
abstract mixin class $CreateItemStateCopyWith<$Res>  {
  factory $CreateItemStateCopyWith(CreateItemState value, $Res Function(CreateItemState) _then) = _$CreateItemStateCopyWithImpl;
@useResult
$Res call({
 List<File> selectedImages, List<String> uploadedImageUrls, bool isUploadingImages, String? title, String? description, String? categoryId, ItemCondition? condition, String? city, double? geoLat, double? geoLng, double? price, bool isFree, bool isSubmitting, String? error, ItemModel? createdItem
});


$ItemModelCopyWith<$Res>? get createdItem;

}
/// @nodoc
class _$CreateItemStateCopyWithImpl<$Res>
    implements $CreateItemStateCopyWith<$Res> {
  _$CreateItemStateCopyWithImpl(this._self, this._then);

  final CreateItemState _self;
  final $Res Function(CreateItemState) _then;

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedImages = null,Object? uploadedImageUrls = null,Object? isUploadingImages = null,Object? title = freezed,Object? description = freezed,Object? categoryId = freezed,Object? condition = freezed,Object? city = freezed,Object? geoLat = freezed,Object? geoLng = freezed,Object? price = freezed,Object? isFree = null,Object? isSubmitting = null,Object? error = freezed,Object? createdItem = freezed,}) {
  return _then(_self.copyWith(
selectedImages: null == selectedImages ? _self.selectedImages : selectedImages // ignore: cast_nullable_to_non_nullable
as List<File>,uploadedImageUrls: null == uploadedImageUrls ? _self.uploadedImageUrls : uploadedImageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isUploadingImages: null == isUploadingImages ? _self.isUploadingImages : isUploadingImages // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,createdItem: freezed == createdItem ? _self.createdItem : createdItem // ignore: cast_nullable_to_non_nullable
as ItemModel?,
  ));
}
/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res>? get createdItem {
    if (_self.createdItem == null) {
    return null;
  }

  return $ItemModelCopyWith<$Res>(_self.createdItem!, (value) {
    return _then(_self.copyWith(createdItem: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateItemState].
extension CreateItemStatePatterns on CreateItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateItemState value)  $default,){
final _that = this;
switch (_that) {
case _CreateItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateItemState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<File> selectedImages,  List<String> uploadedImageUrls,  bool isUploadingImages,  String? title,  String? description,  String? categoryId,  ItemCondition? condition,  String? city,  double? geoLat,  double? geoLng,  double? price,  bool isFree,  bool isSubmitting,  String? error,  ItemModel? createdItem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateItemState() when $default != null:
return $default(_that.selectedImages,_that.uploadedImageUrls,_that.isUploadingImages,_that.title,_that.description,_that.categoryId,_that.condition,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree,_that.isSubmitting,_that.error,_that.createdItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<File> selectedImages,  List<String> uploadedImageUrls,  bool isUploadingImages,  String? title,  String? description,  String? categoryId,  ItemCondition? condition,  String? city,  double? geoLat,  double? geoLng,  double? price,  bool isFree,  bool isSubmitting,  String? error,  ItemModel? createdItem)  $default,) {final _that = this;
switch (_that) {
case _CreateItemState():
return $default(_that.selectedImages,_that.uploadedImageUrls,_that.isUploadingImages,_that.title,_that.description,_that.categoryId,_that.condition,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree,_that.isSubmitting,_that.error,_that.createdItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<File> selectedImages,  List<String> uploadedImageUrls,  bool isUploadingImages,  String? title,  String? description,  String? categoryId,  ItemCondition? condition,  String? city,  double? geoLat,  double? geoLng,  double? price,  bool isFree,  bool isSubmitting,  String? error,  ItemModel? createdItem)?  $default,) {final _that = this;
switch (_that) {
case _CreateItemState() when $default != null:
return $default(_that.selectedImages,_that.uploadedImageUrls,_that.isUploadingImages,_that.title,_that.description,_that.categoryId,_that.condition,_that.city,_that.geoLat,_that.geoLng,_that.price,_that.isFree,_that.isSubmitting,_that.error,_that.createdItem);case _:
  return null;

}
}

}

/// @nodoc


class _CreateItemState implements CreateItemState {
  const _CreateItemState({final  List<File> selectedImages = const [], final  List<String> uploadedImageUrls = const [], this.isUploadingImages = false, this.title, this.description, this.categoryId, this.condition, this.city, this.geoLat, this.geoLng, this.price, this.isFree = false, this.isSubmitting = false, this.error, this.createdItem}): _selectedImages = selectedImages,_uploadedImageUrls = uploadedImageUrls;
  

 final  List<File> _selectedImages;
@override@JsonKey() List<File> get selectedImages {
  if (_selectedImages is EqualUnmodifiableListView) return _selectedImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedImages);
}

 final  List<String> _uploadedImageUrls;
@override@JsonKey() List<String> get uploadedImageUrls {
  if (_uploadedImageUrls is EqualUnmodifiableListView) return _uploadedImageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uploadedImageUrls);
}

@override@JsonKey() final  bool isUploadingImages;
@override final  String? title;
@override final  String? description;
@override final  String? categoryId;
@override final  ItemCondition? condition;
@override final  String? city;
@override final  double? geoLat;
@override final  double? geoLng;
@override final  double? price;
// ← غير من String لـ double
@override@JsonKey() final  bool isFree;
@override@JsonKey() final  bool isSubmitting;
@override final  String? error;
@override final  ItemModel? createdItem;

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateItemStateCopyWith<_CreateItemState> get copyWith => __$CreateItemStateCopyWithImpl<_CreateItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateItemState&&const DeepCollectionEquality().equals(other._selectedImages, _selectedImages)&&const DeepCollectionEquality().equals(other._uploadedImageUrls, _uploadedImageUrls)&&(identical(other.isUploadingImages, isUploadingImages) || other.isUploadingImages == isUploadingImages)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.city, city) || other.city == city)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLng, geoLng) || other.geoLng == geoLng)&&(identical(other.price, price) || other.price == price)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&(identical(other.createdItem, createdItem) || other.createdItem == createdItem));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedImages),const DeepCollectionEquality().hash(_uploadedImageUrls),isUploadingImages,title,description,categoryId,condition,city,geoLat,geoLng,price,isFree,isSubmitting,error,createdItem);

@override
String toString() {
  return 'CreateItemState(selectedImages: $selectedImages, uploadedImageUrls: $uploadedImageUrls, isUploadingImages: $isUploadingImages, title: $title, description: $description, categoryId: $categoryId, condition: $condition, city: $city, geoLat: $geoLat, geoLng: $geoLng, price: $price, isFree: $isFree, isSubmitting: $isSubmitting, error: $error, createdItem: $createdItem)';
}


}

/// @nodoc
abstract mixin class _$CreateItemStateCopyWith<$Res> implements $CreateItemStateCopyWith<$Res> {
  factory _$CreateItemStateCopyWith(_CreateItemState value, $Res Function(_CreateItemState) _then) = __$CreateItemStateCopyWithImpl;
@override @useResult
$Res call({
 List<File> selectedImages, List<String> uploadedImageUrls, bool isUploadingImages, String? title, String? description, String? categoryId, ItemCondition? condition, String? city, double? geoLat, double? geoLng, double? price, bool isFree, bool isSubmitting, String? error, ItemModel? createdItem
});


@override $ItemModelCopyWith<$Res>? get createdItem;

}
/// @nodoc
class __$CreateItemStateCopyWithImpl<$Res>
    implements _$CreateItemStateCopyWith<$Res> {
  __$CreateItemStateCopyWithImpl(this._self, this._then);

  final _CreateItemState _self;
  final $Res Function(_CreateItemState) _then;

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedImages = null,Object? uploadedImageUrls = null,Object? isUploadingImages = null,Object? title = freezed,Object? description = freezed,Object? categoryId = freezed,Object? condition = freezed,Object? city = freezed,Object? geoLat = freezed,Object? geoLng = freezed,Object? price = freezed,Object? isFree = null,Object? isSubmitting = null,Object? error = freezed,Object? createdItem = freezed,}) {
  return _then(_CreateItemState(
selectedImages: null == selectedImages ? _self._selectedImages : selectedImages // ignore: cast_nullable_to_non_nullable
as List<File>,uploadedImageUrls: null == uploadedImageUrls ? _self._uploadedImageUrls : uploadedImageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isUploadingImages: null == isUploadingImages ? _self.isUploadingImages : isUploadingImages // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ItemCondition?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLng: freezed == geoLng ? _self.geoLng : geoLng // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,createdItem: freezed == createdItem ? _self.createdItem : createdItem // ignore: cast_nullable_to_non_nullable
as ItemModel?,
  ));
}

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res>? get createdItem {
    if (_self.createdItem == null) {
    return null;
  }

  return $ItemModelCopyWith<$Res>(_self.createdItem!, (value) {
    return _then(_self.copyWith(createdItem: value));
  });
}
}

// dart format on
