// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryModel {

 String get id; String get name; String get slug; String? get description; String? get iconUrl; String? get parentId; bool get isActive; int get sortOrder; DateTime get createdAt; DateTime get updatedAt; CategoryParent? get parent; List<CategoryModel>? get children;@JsonKey(name: '_count') CategoryCount? get count;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other.children, children)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,iconUrl,parentId,isActive,sortOrder,createdAt,updatedAt,parent,const DeepCollectionEquality().hash(children),count);

@override
String toString() {
  return 'CategoryModel(id: $id, name: $name, slug: $slug, description: $description, iconUrl: $iconUrl, parentId: $parentId, isActive: $isActive, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, parent: $parent, children: $children, count: $count)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String? description, String? iconUrl, String? parentId, bool isActive, int sortOrder, DateTime createdAt, DateTime updatedAt, CategoryParent? parent, List<CategoryModel>? children,@JsonKey(name: '_count') CategoryCount? count
});


$CategoryParentCopyWith<$Res>? get parent;$CategoryCountCopyWith<$Res>? get count;

}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = freezed,Object? iconUrl = freezed,Object? parentId = freezed,Object? isActive = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? parent = freezed,Object? children = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as CategoryParent?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as CategoryCount?,
  ));
}
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryParentCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryParentCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $CategoryCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? description,  String? iconUrl,  String? parentId,  bool isActive,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  CategoryParent? parent,  List<CategoryModel>? children, @JsonKey(name: '_count')  CategoryCount? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconUrl,_that.parentId,_that.isActive,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.parent,_that.children,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? description,  String? iconUrl,  String? parentId,  bool isActive,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  CategoryParent? parent,  List<CategoryModel>? children, @JsonKey(name: '_count')  CategoryCount? count)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconUrl,_that.parentId,_that.isActive,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.parent,_that.children,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String? description,  String? iconUrl,  String? parentId,  bool isActive,  int sortOrder,  DateTime createdAt,  DateTime updatedAt,  CategoryParent? parent,  List<CategoryModel>? children, @JsonKey(name: '_count')  CategoryCount? count)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconUrl,_that.parentId,_that.isActive,_that.sortOrder,_that.createdAt,_that.updatedAt,_that.parent,_that.children,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryModel implements CategoryModel {
  const _CategoryModel({required this.id, required this.name, required this.slug, this.description, this.iconUrl, this.parentId, required this.isActive, required this.sortOrder, required this.createdAt, required this.updatedAt, this.parent, final  List<CategoryModel>? children, @JsonKey(name: '_count') this.count}): _children = children;
  factory _CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String? description;
@override final  String? iconUrl;
@override final  String? parentId;
@override final  bool isActive;
@override final  int sortOrder;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  CategoryParent? parent;
 final  List<CategoryModel>? _children;
@override List<CategoryModel>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: '_count') final  CategoryCount? count;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,iconUrl,parentId,isActive,sortOrder,createdAt,updatedAt,parent,const DeepCollectionEquality().hash(_children),count);

@override
String toString() {
  return 'CategoryModel(id: $id, name: $name, slug: $slug, description: $description, iconUrl: $iconUrl, parentId: $parentId, isActive: $isActive, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt, parent: $parent, children: $children, count: $count)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String? description, String? iconUrl, String? parentId, bool isActive, int sortOrder, DateTime createdAt, DateTime updatedAt, CategoryParent? parent, List<CategoryModel>? children,@JsonKey(name: '_count') CategoryCount? count
});


@override $CategoryParentCopyWith<$Res>? get parent;@override $CategoryCountCopyWith<$Res>? get count;

}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = freezed,Object? iconUrl = freezed,Object? parentId = freezed,Object? isActive = null,Object? sortOrder = null,Object? createdAt = null,Object? updatedAt = null,Object? parent = freezed,Object? children = freezed,Object? count = freezed,}) {
  return _then(_CategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as CategoryParent?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as CategoryCount?,
  ));
}

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryParentCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryParentCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $CategoryCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// @nodoc
mixin _$CategoryParent {

 String get id; String get name; String get slug;
/// Create a copy of CategoryParent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryParentCopyWith<CategoryParent> get copyWith => _$CategoryParentCopyWithImpl<CategoryParent>(this as CategoryParent, _$identity);

  /// Serializes this CategoryParent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryParent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'CategoryParent(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $CategoryParentCopyWith<$Res>  {
  factory $CategoryParentCopyWith(CategoryParent value, $Res Function(CategoryParent) _then) = _$CategoryParentCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug
});




}
/// @nodoc
class _$CategoryParentCopyWithImpl<$Res>
    implements $CategoryParentCopyWith<$Res> {
  _$CategoryParentCopyWithImpl(this._self, this._then);

  final CategoryParent _self;
  final $Res Function(CategoryParent) _then;

/// Create a copy of CategoryParent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryParent].
extension CategoryParentPatterns on CategoryParent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryParent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryParent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryParent value)  $default,){
final _that = this;
switch (_that) {
case _CategoryParent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryParent value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryParent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryParent() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug)  $default,) {final _that = this;
switch (_that) {
case _CategoryParent():
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug)?  $default,) {final _that = this;
switch (_that) {
case _CategoryParent() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryParent implements CategoryParent {
  const _CategoryParent({required this.id, required this.name, required this.slug});
  factory _CategoryParent.fromJson(Map<String, dynamic> json) => _$CategoryParentFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;

/// Create a copy of CategoryParent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryParentCopyWith<_CategoryParent> get copyWith => __$CategoryParentCopyWithImpl<_CategoryParent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryParentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryParent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'CategoryParent(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$CategoryParentCopyWith<$Res> implements $CategoryParentCopyWith<$Res> {
  factory _$CategoryParentCopyWith(_CategoryParent value, $Res Function(_CategoryParent) _then) = __$CategoryParentCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug
});




}
/// @nodoc
class __$CategoryParentCopyWithImpl<$Res>
    implements _$CategoryParentCopyWith<$Res> {
  __$CategoryParentCopyWithImpl(this._self, this._then);

  final _CategoryParent _self;
  final $Res Function(_CategoryParent) _then;

/// Create a copy of CategoryParent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_CategoryParent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CategoryCount {

 int get items; int get children;
/// Create a copy of CategoryCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCountCopyWith<CategoryCount> get copyWith => _$CategoryCountCopyWithImpl<CategoryCount>(this as CategoryCount, _$identity);

  /// Serializes this CategoryCount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryCount&&(identical(other.items, items) || other.items == items)&&(identical(other.children, children) || other.children == children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,children);

@override
String toString() {
  return 'CategoryCount(items: $items, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryCountCopyWith<$Res>  {
  factory $CategoryCountCopyWith(CategoryCount value, $Res Function(CategoryCount) _then) = _$CategoryCountCopyWithImpl;
@useResult
$Res call({
 int items, int children
});




}
/// @nodoc
class _$CategoryCountCopyWithImpl<$Res>
    implements $CategoryCountCopyWith<$Res> {
  _$CategoryCountCopyWithImpl(this._self, this._then);

  final CategoryCount _self;
  final $Res Function(CategoryCount) _then;

/// Create a copy of CategoryCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? children = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryCount].
extension CategoryCountPatterns on CategoryCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryCount value)  $default,){
final _that = this;
switch (_that) {
case _CategoryCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryCount value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryCount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int items,  int children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryCount() when $default != null:
return $default(_that.items,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int items,  int children)  $default,) {final _that = this;
switch (_that) {
case _CategoryCount():
return $default(_that.items,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int items,  int children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryCount() when $default != null:
return $default(_that.items,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryCount implements CategoryCount {
  const _CategoryCount({required this.items, required this.children});
  factory _CategoryCount.fromJson(Map<String, dynamic> json) => _$CategoryCountFromJson(json);

@override final  int items;
@override final  int children;

/// Create a copy of CategoryCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCountCopyWith<_CategoryCount> get copyWith => __$CategoryCountCopyWithImpl<_CategoryCount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryCountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryCount&&(identical(other.items, items) || other.items == items)&&(identical(other.children, children) || other.children == children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,items,children);

@override
String toString() {
  return 'CategoryCount(items: $items, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryCountCopyWith<$Res> implements $CategoryCountCopyWith<$Res> {
  factory _$CategoryCountCopyWith(_CategoryCount value, $Res Function(_CategoryCount) _then) = __$CategoryCountCopyWithImpl;
@override @useResult
$Res call({
 int items, int children
});




}
/// @nodoc
class __$CategoryCountCopyWithImpl<$Res>
    implements _$CategoryCountCopyWith<$Res> {
  __$CategoryCountCopyWithImpl(this._self, this._then);

  final _CategoryCount _self;
  final $Res Function(_CategoryCount) _then;

/// Create a copy of CategoryCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? children = null,}) {
  return _then(_CategoryCount(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
