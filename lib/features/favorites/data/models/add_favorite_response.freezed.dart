// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddFavoriteResponse {

 bool get success; AddFavoriteData get data; String get timestamp;
/// Create a copy of AddFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFavoriteResponseCopyWith<AddFavoriteResponse> get copyWith => _$AddFavoriteResponseCopyWithImpl<AddFavoriteResponse>(this as AddFavoriteResponse, _$identity);

  /// Serializes this AddFavoriteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFavoriteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'AddFavoriteResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $AddFavoriteResponseCopyWith<$Res>  {
  factory $AddFavoriteResponseCopyWith(AddFavoriteResponse value, $Res Function(AddFavoriteResponse) _then) = _$AddFavoriteResponseCopyWithImpl;
@useResult
$Res call({
 bool success, AddFavoriteData data, String timestamp
});


$AddFavoriteDataCopyWith<$Res> get data;

}
/// @nodoc
class _$AddFavoriteResponseCopyWithImpl<$Res>
    implements $AddFavoriteResponseCopyWith<$Res> {
  _$AddFavoriteResponseCopyWithImpl(this._self, this._then);

  final AddFavoriteResponse _self;
  final $Res Function(AddFavoriteResponse) _then;

/// Create a copy of AddFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AddFavoriteData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AddFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddFavoriteDataCopyWith<$Res> get data {
  
  return $AddFavoriteDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddFavoriteResponse].
extension AddFavoriteResponsePatterns on AddFavoriteResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddFavoriteResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddFavoriteResponse value)  $default,){
final _that = this;
switch (_that) {
case _AddFavoriteResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddFavoriteResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AddFavoriteResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  AddFavoriteData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddFavoriteResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  AddFavoriteData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _AddFavoriteResponse():
return $default(_that.success,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  AddFavoriteData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _AddFavoriteResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddFavoriteResponse implements AddFavoriteResponse {
  const _AddFavoriteResponse({required this.success, required this.data, required this.timestamp});
  factory _AddFavoriteResponse.fromJson(Map<String, dynamic> json) => _$AddFavoriteResponseFromJson(json);

@override final  bool success;
@override final  AddFavoriteData data;
@override final  String timestamp;

/// Create a copy of AddFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFavoriteResponseCopyWith<_AddFavoriteResponse> get copyWith => __$AddFavoriteResponseCopyWithImpl<_AddFavoriteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddFavoriteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFavoriteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'AddFavoriteResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$AddFavoriteResponseCopyWith<$Res> implements $AddFavoriteResponseCopyWith<$Res> {
  factory _$AddFavoriteResponseCopyWith(_AddFavoriteResponse value, $Res Function(_AddFavoriteResponse) _then) = __$AddFavoriteResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, AddFavoriteData data, String timestamp
});


@override $AddFavoriteDataCopyWith<$Res> get data;

}
/// @nodoc
class __$AddFavoriteResponseCopyWithImpl<$Res>
    implements _$AddFavoriteResponseCopyWith<$Res> {
  __$AddFavoriteResponseCopyWithImpl(this._self, this._then);

  final _AddFavoriteResponse _self;
  final $Res Function(_AddFavoriteResponse) _then;

/// Create a copy of AddFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_AddFavoriteResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AddFavoriteData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddFavoriteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddFavoriteDataCopyWith<$Res> get data {
  
  return $AddFavoriteDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AddFavoriteData {

 FavoriteRecord get favorite; String get message;
/// Create a copy of AddFavoriteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFavoriteDataCopyWith<AddFavoriteData> get copyWith => _$AddFavoriteDataCopyWithImpl<AddFavoriteData>(this as AddFavoriteData, _$identity);

  /// Serializes this AddFavoriteData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFavoriteData&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,favorite,message);

@override
String toString() {
  return 'AddFavoriteData(favorite: $favorite, message: $message)';
}


}

/// @nodoc
abstract mixin class $AddFavoriteDataCopyWith<$Res>  {
  factory $AddFavoriteDataCopyWith(AddFavoriteData value, $Res Function(AddFavoriteData) _then) = _$AddFavoriteDataCopyWithImpl;
@useResult
$Res call({
 FavoriteRecord favorite, String message
});


$FavoriteRecordCopyWith<$Res> get favorite;

}
/// @nodoc
class _$AddFavoriteDataCopyWithImpl<$Res>
    implements $AddFavoriteDataCopyWith<$Res> {
  _$AddFavoriteDataCopyWithImpl(this._self, this._then);

  final AddFavoriteData _self;
  final $Res Function(AddFavoriteData) _then;

/// Create a copy of AddFavoriteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? favorite = null,Object? message = null,}) {
  return _then(_self.copyWith(
favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as FavoriteRecord,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AddFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteRecordCopyWith<$Res> get favorite {
  
  return $FavoriteRecordCopyWith<$Res>(_self.favorite, (value) {
    return _then(_self.copyWith(favorite: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddFavoriteData].
extension AddFavoriteDataPatterns on AddFavoriteData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddFavoriteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddFavoriteData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddFavoriteData value)  $default,){
final _that = this;
switch (_that) {
case _AddFavoriteData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddFavoriteData value)?  $default,){
final _that = this;
switch (_that) {
case _AddFavoriteData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteRecord favorite,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddFavoriteData() when $default != null:
return $default(_that.favorite,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteRecord favorite,  String message)  $default,) {final _that = this;
switch (_that) {
case _AddFavoriteData():
return $default(_that.favorite,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteRecord favorite,  String message)?  $default,) {final _that = this;
switch (_that) {
case _AddFavoriteData() when $default != null:
return $default(_that.favorite,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddFavoriteData implements AddFavoriteData {
  const _AddFavoriteData({required this.favorite, required this.message});
  factory _AddFavoriteData.fromJson(Map<String, dynamic> json) => _$AddFavoriteDataFromJson(json);

@override final  FavoriteRecord favorite;
@override final  String message;

/// Create a copy of AddFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFavoriteDataCopyWith<_AddFavoriteData> get copyWith => __$AddFavoriteDataCopyWithImpl<_AddFavoriteData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddFavoriteDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFavoriteData&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,favorite,message);

@override
String toString() {
  return 'AddFavoriteData(favorite: $favorite, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AddFavoriteDataCopyWith<$Res> implements $AddFavoriteDataCopyWith<$Res> {
  factory _$AddFavoriteDataCopyWith(_AddFavoriteData value, $Res Function(_AddFavoriteData) _then) = __$AddFavoriteDataCopyWithImpl;
@override @useResult
$Res call({
 FavoriteRecord favorite, String message
});


@override $FavoriteRecordCopyWith<$Res> get favorite;

}
/// @nodoc
class __$AddFavoriteDataCopyWithImpl<$Res>
    implements _$AddFavoriteDataCopyWith<$Res> {
  __$AddFavoriteDataCopyWithImpl(this._self, this._then);

  final _AddFavoriteData _self;
  final $Res Function(_AddFavoriteData) _then;

/// Create a copy of AddFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? favorite = null,Object? message = null,}) {
  return _then(_AddFavoriteData(
favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as FavoriteRecord,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddFavoriteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteRecordCopyWith<$Res> get favorite {
  
  return $FavoriteRecordCopyWith<$Res>(_self.favorite, (value) {
    return _then(_self.copyWith(favorite: value));
  });
}
}


/// @nodoc
mixin _$FavoriteRecord {

 String get userId; String get itemId; DateTime get createdAt;
/// Create a copy of FavoriteRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteRecordCopyWith<FavoriteRecord> get copyWith => _$FavoriteRecordCopyWithImpl<FavoriteRecord>(this as FavoriteRecord, _$identity);

  /// Serializes this FavoriteRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteRecord&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,itemId,createdAt);

@override
String toString() {
  return 'FavoriteRecord(userId: $userId, itemId: $itemId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteRecordCopyWith<$Res>  {
  factory $FavoriteRecordCopyWith(FavoriteRecord value, $Res Function(FavoriteRecord) _then) = _$FavoriteRecordCopyWithImpl;
@useResult
$Res call({
 String userId, String itemId, DateTime createdAt
});




}
/// @nodoc
class _$FavoriteRecordCopyWithImpl<$Res>
    implements $FavoriteRecordCopyWith<$Res> {
  _$FavoriteRecordCopyWithImpl(this._self, this._then);

  final FavoriteRecord _self;
  final $Res Function(FavoriteRecord) _then;

/// Create a copy of FavoriteRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? itemId = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteRecord].
extension FavoriteRecordPatterns on FavoriteRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteRecord value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteRecord value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String itemId,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteRecord() when $default != null:
return $default(_that.userId,_that.itemId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String itemId,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _FavoriteRecord():
return $default(_that.userId,_that.itemId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String itemId,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteRecord() when $default != null:
return $default(_that.userId,_that.itemId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteRecord implements FavoriteRecord {
  const _FavoriteRecord({required this.userId, required this.itemId, required this.createdAt});
  factory _FavoriteRecord.fromJson(Map<String, dynamic> json) => _$FavoriteRecordFromJson(json);

@override final  String userId;
@override final  String itemId;
@override final  DateTime createdAt;

/// Create a copy of FavoriteRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteRecordCopyWith<_FavoriteRecord> get copyWith => __$FavoriteRecordCopyWithImpl<_FavoriteRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteRecord&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,itemId,createdAt);

@override
String toString() {
  return 'FavoriteRecord(userId: $userId, itemId: $itemId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteRecordCopyWith<$Res> implements $FavoriteRecordCopyWith<$Res> {
  factory _$FavoriteRecordCopyWith(_FavoriteRecord value, $Res Function(_FavoriteRecord) _then) = __$FavoriteRecordCopyWithImpl;
@override @useResult
$Res call({
 String userId, String itemId, DateTime createdAt
});




}
/// @nodoc
class __$FavoriteRecordCopyWithImpl<$Res>
    implements _$FavoriteRecordCopyWith<$Res> {
  __$FavoriteRecordCopyWithImpl(this._self, this._then);

  final _FavoriteRecord _self;
  final $Res Function(_FavoriteRecord) _then;

/// Create a copy of FavoriteRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? itemId = null,Object? createdAt = null,}) {
  return _then(_FavoriteRecord(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
