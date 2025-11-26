// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_ratings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRatingsResponse {

 bool get success; UserRatingsData get data; String get timestamp;
/// Create a copy of UserRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRatingsResponseCopyWith<UserRatingsResponse> get copyWith => _$UserRatingsResponseCopyWithImpl<UserRatingsResponse>(this as UserRatingsResponse, _$identity);

  /// Serializes this UserRatingsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRatingsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'UserRatingsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $UserRatingsResponseCopyWith<$Res>  {
  factory $UserRatingsResponseCopyWith(UserRatingsResponse value, $Res Function(UserRatingsResponse) _then) = _$UserRatingsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, UserRatingsData data, String timestamp
});


$UserRatingsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$UserRatingsResponseCopyWithImpl<$Res>
    implements $UserRatingsResponseCopyWith<$Res> {
  _$UserRatingsResponseCopyWithImpl(this._self, this._then);

  final UserRatingsResponse _self;
  final $Res Function(UserRatingsResponse) _then;

/// Create a copy of UserRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserRatingsData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserRatingsDataCopyWith<$Res> get data {
  
  return $UserRatingsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserRatingsResponse].
extension UserRatingsResponsePatterns on UserRatingsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRatingsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRatingsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRatingsResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserRatingsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRatingsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserRatingsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UserRatingsData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRatingsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UserRatingsData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _UserRatingsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UserRatingsData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _UserRatingsResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRatingsResponse implements UserRatingsResponse {
  const _UserRatingsResponse({required this.success, required this.data, required this.timestamp});
  factory _UserRatingsResponse.fromJson(Map<String, dynamic> json) => _$UserRatingsResponseFromJson(json);

@override final  bool success;
@override final  UserRatingsData data;
@override final  String timestamp;

/// Create a copy of UserRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRatingsResponseCopyWith<_UserRatingsResponse> get copyWith => __$UserRatingsResponseCopyWithImpl<_UserRatingsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRatingsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRatingsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'UserRatingsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$UserRatingsResponseCopyWith<$Res> implements $UserRatingsResponseCopyWith<$Res> {
  factory _$UserRatingsResponseCopyWith(_UserRatingsResponse value, $Res Function(_UserRatingsResponse) _then) = __$UserRatingsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, UserRatingsData data, String timestamp
});


@override $UserRatingsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$UserRatingsResponseCopyWithImpl<$Res>
    implements _$UserRatingsResponseCopyWith<$Res> {
  __$UserRatingsResponseCopyWithImpl(this._self, this._then);

  final _UserRatingsResponse _self;
  final $Res Function(_UserRatingsResponse) _then;

/// Create a copy of UserRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_UserRatingsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserRatingsData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserRatingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserRatingsDataCopyWith<$Res> get data {
  
  return $UserRatingsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UserRatingsData {

 List<UserRating> get ratings; RatingsMeta get meta;
/// Create a copy of UserRatingsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRatingsDataCopyWith<UserRatingsData> get copyWith => _$UserRatingsDataCopyWithImpl<UserRatingsData>(this as UserRatingsData, _$identity);

  /// Serializes this UserRatingsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRatingsData&&const DeepCollectionEquality().equals(other.ratings, ratings)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ratings),meta);

@override
String toString() {
  return 'UserRatingsData(ratings: $ratings, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $UserRatingsDataCopyWith<$Res>  {
  factory $UserRatingsDataCopyWith(UserRatingsData value, $Res Function(UserRatingsData) _then) = _$UserRatingsDataCopyWithImpl;
@useResult
$Res call({
 List<UserRating> ratings, RatingsMeta meta
});


$RatingsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$UserRatingsDataCopyWithImpl<$Res>
    implements $UserRatingsDataCopyWith<$Res> {
  _$UserRatingsDataCopyWithImpl(this._self, this._then);

  final UserRatingsData _self;
  final $Res Function(UserRatingsData) _then;

/// Create a copy of UserRatingsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ratings = null,Object? meta = null,}) {
  return _then(_self.copyWith(
ratings: null == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<UserRating>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as RatingsMeta,
  ));
}
/// Create a copy of UserRatingsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingsMetaCopyWith<$Res> get meta {
  
  return $RatingsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserRatingsData].
extension UserRatingsDataPatterns on UserRatingsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRatingsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRatingsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRatingsData value)  $default,){
final _that = this;
switch (_that) {
case _UserRatingsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRatingsData value)?  $default,){
final _that = this;
switch (_that) {
case _UserRatingsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserRating> ratings,  RatingsMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRatingsData() when $default != null:
return $default(_that.ratings,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserRating> ratings,  RatingsMeta meta)  $default,) {final _that = this;
switch (_that) {
case _UserRatingsData():
return $default(_that.ratings,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserRating> ratings,  RatingsMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _UserRatingsData() when $default != null:
return $default(_that.ratings,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRatingsData implements UserRatingsData {
  const _UserRatingsData({required final  List<UserRating> ratings, required this.meta}): _ratings = ratings;
  factory _UserRatingsData.fromJson(Map<String, dynamic> json) => _$UserRatingsDataFromJson(json);

 final  List<UserRating> _ratings;
@override List<UserRating> get ratings {
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ratings);
}

@override final  RatingsMeta meta;

/// Create a copy of UserRatingsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRatingsDataCopyWith<_UserRatingsData> get copyWith => __$UserRatingsDataCopyWithImpl<_UserRatingsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRatingsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRatingsData&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ratings),meta);

@override
String toString() {
  return 'UserRatingsData(ratings: $ratings, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$UserRatingsDataCopyWith<$Res> implements $UserRatingsDataCopyWith<$Res> {
  factory _$UserRatingsDataCopyWith(_UserRatingsData value, $Res Function(_UserRatingsData) _then) = __$UserRatingsDataCopyWithImpl;
@override @useResult
$Res call({
 List<UserRating> ratings, RatingsMeta meta
});


@override $RatingsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$UserRatingsDataCopyWithImpl<$Res>
    implements _$UserRatingsDataCopyWith<$Res> {
  __$UserRatingsDataCopyWithImpl(this._self, this._then);

  final _UserRatingsData _self;
  final $Res Function(_UserRatingsData) _then;

/// Create a copy of UserRatingsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ratings = null,Object? meta = null,}) {
  return _then(_UserRatingsData(
ratings: null == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<UserRating>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as RatingsMeta,
  ));
}

/// Create a copy of UserRatingsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingsMetaCopyWith<$Res> get meta {
  
  return $RatingsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$UserRating {

 String get id; int get rating; String? get comment; DateTime get createdAt; RatingUser get fromUser;
/// Create a copy of UserRating
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRatingCopyWith<UserRating> get copyWith => _$UserRatingCopyWithImpl<UserRating>(this as UserRating, _$identity);

  /// Serializes this UserRating to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRating&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,createdAt,fromUser);

@override
String toString() {
  return 'UserRating(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt, fromUser: $fromUser)';
}


}

/// @nodoc
abstract mixin class $UserRatingCopyWith<$Res>  {
  factory $UserRatingCopyWith(UserRating value, $Res Function(UserRating) _then) = _$UserRatingCopyWithImpl;
@useResult
$Res call({
 String id, int rating, String? comment, DateTime createdAt, RatingUser fromUser
});


$RatingUserCopyWith<$Res> get fromUser;

}
/// @nodoc
class _$UserRatingCopyWithImpl<$Res>
    implements $UserRatingCopyWith<$Res> {
  _$UserRatingCopyWithImpl(this._self, this._then);

  final UserRating _self;
  final $Res Function(UserRating) _then;

/// Create a copy of UserRating
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,Object? fromUser = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as RatingUser,
  ));
}
/// Create a copy of UserRating
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingUserCopyWith<$Res> get fromUser {
  
  return $RatingUserCopyWith<$Res>(_self.fromUser, (value) {
    return _then(_self.copyWith(fromUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserRating].
extension UserRatingPatterns on UserRating {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRating value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRating() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRating value)  $default,){
final _that = this;
switch (_that) {
case _UserRating():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRating value)?  $default,){
final _that = this;
switch (_that) {
case _UserRating() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int rating,  String? comment,  DateTime createdAt,  RatingUser fromUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRating() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.fromUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int rating,  String? comment,  DateTime createdAt,  RatingUser fromUser)  $default,) {final _that = this;
switch (_that) {
case _UserRating():
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.fromUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int rating,  String? comment,  DateTime createdAt,  RatingUser fromUser)?  $default,) {final _that = this;
switch (_that) {
case _UserRating() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.fromUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRating implements UserRating {
  const _UserRating({required this.id, required this.rating, this.comment, required this.createdAt, required this.fromUser});
  factory _UserRating.fromJson(Map<String, dynamic> json) => _$UserRatingFromJson(json);

@override final  String id;
@override final  int rating;
@override final  String? comment;
@override final  DateTime createdAt;
@override final  RatingUser fromUser;

/// Create a copy of UserRating
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRatingCopyWith<_UserRating> get copyWith => __$UserRatingCopyWithImpl<_UserRating>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRatingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRating&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,createdAt,fromUser);

@override
String toString() {
  return 'UserRating(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt, fromUser: $fromUser)';
}


}

/// @nodoc
abstract mixin class _$UserRatingCopyWith<$Res> implements $UserRatingCopyWith<$Res> {
  factory _$UserRatingCopyWith(_UserRating value, $Res Function(_UserRating) _then) = __$UserRatingCopyWithImpl;
@override @useResult
$Res call({
 String id, int rating, String? comment, DateTime createdAt, RatingUser fromUser
});


@override $RatingUserCopyWith<$Res> get fromUser;

}
/// @nodoc
class __$UserRatingCopyWithImpl<$Res>
    implements _$UserRatingCopyWith<$Res> {
  __$UserRatingCopyWithImpl(this._self, this._then);

  final _UserRating _self;
  final $Res Function(_UserRating) _then;

/// Create a copy of UserRating
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,Object? fromUser = null,}) {
  return _then(_UserRating(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as RatingUser,
  ));
}

/// Create a copy of UserRating
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingUserCopyWith<$Res> get fromUser {
  
  return $RatingUserCopyWith<$Res>(_self.fromUser, (value) {
    return _then(_self.copyWith(fromUser: value));
  });
}
}


/// @nodoc
mixin _$RatingUser {

 String get id; String get name; String? get avatarUrl;
/// Create a copy of RatingUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingUserCopyWith<RatingUser> get copyWith => _$RatingUserCopyWithImpl<RatingUser>(this as RatingUser, _$identity);

  /// Serializes this RatingUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'RatingUser(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $RatingUserCopyWith<$Res>  {
  factory $RatingUserCopyWith(RatingUser value, $Res Function(RatingUser) _then) = _$RatingUserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatarUrl
});




}
/// @nodoc
class _$RatingUserCopyWithImpl<$Res>
    implements $RatingUserCopyWith<$Res> {
  _$RatingUserCopyWithImpl(this._self, this._then);

  final RatingUser _self;
  final $Res Function(RatingUser) _then;

/// Create a copy of RatingUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RatingUser].
extension RatingUserPatterns on RatingUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatingUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatingUser value)  $default,){
final _that = this;
switch (_that) {
case _RatingUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatingUser value)?  $default,){
final _that = this;
switch (_that) {
case _RatingUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingUser() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _RatingUser():
return $default(_that.id,_that.name,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _RatingUser() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RatingUser implements RatingUser {
  const _RatingUser({required this.id, required this.name, this.avatarUrl});
  factory _RatingUser.fromJson(Map<String, dynamic> json) => _$RatingUserFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatarUrl;

/// Create a copy of RatingUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingUserCopyWith<_RatingUser> get copyWith => __$RatingUserCopyWithImpl<_RatingUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatingUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'RatingUser(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$RatingUserCopyWith<$Res> implements $RatingUserCopyWith<$Res> {
  factory _$RatingUserCopyWith(_RatingUser value, $Res Function(_RatingUser) _then) = __$RatingUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatarUrl
});




}
/// @nodoc
class __$RatingUserCopyWithImpl<$Res>
    implements _$RatingUserCopyWith<$Res> {
  __$RatingUserCopyWithImpl(this._self, this._then);

  final _RatingUser _self;
  final $Res Function(_RatingUser) _then;

/// Create a copy of RatingUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,}) {
  return _then(_RatingUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RatingsMeta {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of RatingsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingsMetaCopyWith<RatingsMeta> get copyWith => _$RatingsMetaCopyWithImpl<RatingsMeta>(this as RatingsMeta, _$identity);

  /// Serializes this RatingsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingsMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'RatingsMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $RatingsMetaCopyWith<$Res>  {
  factory $RatingsMetaCopyWith(RatingsMeta value, $Res Function(RatingsMeta) _then) = _$RatingsMetaCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$RatingsMetaCopyWithImpl<$Res>
    implements $RatingsMetaCopyWith<$Res> {
  _$RatingsMetaCopyWithImpl(this._self, this._then);

  final RatingsMeta _self;
  final $Res Function(RatingsMeta) _then;

/// Create a copy of RatingsMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RatingsMeta].
extension RatingsMetaPatterns on RatingsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatingsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatingsMeta value)  $default,){
final _that = this;
switch (_that) {
case _RatingsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatingsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _RatingsMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingsMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _RatingsMeta():
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int total,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _RatingsMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RatingsMeta implements RatingsMeta {
  const _RatingsMeta({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _RatingsMeta.fromJson(Map<String, dynamic> json) => _$RatingsMetaFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  int totalPages;

/// Create a copy of RatingsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingsMetaCopyWith<_RatingsMeta> get copyWith => __$RatingsMetaCopyWithImpl<_RatingsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatingsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingsMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'RatingsMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$RatingsMetaCopyWith<$Res> implements $RatingsMetaCopyWith<$Res> {
  factory _$RatingsMetaCopyWith(_RatingsMeta value, $Res Function(_RatingsMeta) _then) = __$RatingsMetaCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$RatingsMetaCopyWithImpl<$Res>
    implements _$RatingsMetaCopyWith<$Res> {
  __$RatingsMetaCopyWithImpl(this._self, this._then);

  final _RatingsMeta _self;
  final $Res Function(_RatingsMeta) _then;

/// Create a copy of RatingsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_RatingsMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
