// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateUserResponse {

 bool get success; RateUserData get data; String get timestamp;
/// Create a copy of RateUserResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateUserResponseCopyWith<RateUserResponse> get copyWith => _$RateUserResponseCopyWithImpl<RateUserResponse>(this as RateUserResponse, _$identity);

  /// Serializes this RateUserResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateUserResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'RateUserResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $RateUserResponseCopyWith<$Res>  {
  factory $RateUserResponseCopyWith(RateUserResponse value, $Res Function(RateUserResponse) _then) = _$RateUserResponseCopyWithImpl;
@useResult
$Res call({
 bool success, RateUserData data, String timestamp
});


$RateUserDataCopyWith<$Res> get data;

}
/// @nodoc
class _$RateUserResponseCopyWithImpl<$Res>
    implements $RateUserResponseCopyWith<$Res> {
  _$RateUserResponseCopyWithImpl(this._self, this._then);

  final RateUserResponse _self;
  final $Res Function(RateUserResponse) _then;

/// Create a copy of RateUserResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RateUserData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RateUserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RateUserDataCopyWith<$Res> get data {
  
  return $RateUserDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RateUserResponse].
extension RateUserResponsePatterns on RateUserResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateUserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateUserResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateUserResponse value)  $default,){
final _that = this;
switch (_that) {
case _RateUserResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateUserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RateUserResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  RateUserData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateUserResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  RateUserData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _RateUserResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  RateUserData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _RateUserResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RateUserResponse implements RateUserResponse {
  const _RateUserResponse({required this.success, required this.data, required this.timestamp});
  factory _RateUserResponse.fromJson(Map<String, dynamic> json) => _$RateUserResponseFromJson(json);

@override final  bool success;
@override final  RateUserData data;
@override final  String timestamp;

/// Create a copy of RateUserResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateUserResponseCopyWith<_RateUserResponse> get copyWith => __$RateUserResponseCopyWithImpl<_RateUserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RateUserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateUserResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'RateUserResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$RateUserResponseCopyWith<$Res> implements $RateUserResponseCopyWith<$Res> {
  factory _$RateUserResponseCopyWith(_RateUserResponse value, $Res Function(_RateUserResponse) _then) = __$RateUserResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, RateUserData data, String timestamp
});


@override $RateUserDataCopyWith<$Res> get data;

}
/// @nodoc
class __$RateUserResponseCopyWithImpl<$Res>
    implements _$RateUserResponseCopyWith<$Res> {
  __$RateUserResponseCopyWithImpl(this._self, this._then);

  final _RateUserResponse _self;
  final $Res Function(_RateUserResponse) _then;

/// Create a copy of RateUserResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_RateUserResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RateUserData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RateUserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RateUserDataCopyWith<$Res> get data {
  
  return $RateUserDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RateUserData {

 String get id; int get rating; String? get comment; DateTime get createdAt; RatingUser get fromUser;
/// Create a copy of RateUserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateUserDataCopyWith<RateUserData> get copyWith => _$RateUserDataCopyWithImpl<RateUserData>(this as RateUserData, _$identity);

  /// Serializes this RateUserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateUserData&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,createdAt,fromUser);

@override
String toString() {
  return 'RateUserData(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt, fromUser: $fromUser)';
}


}

/// @nodoc
abstract mixin class $RateUserDataCopyWith<$Res>  {
  factory $RateUserDataCopyWith(RateUserData value, $Res Function(RateUserData) _then) = _$RateUserDataCopyWithImpl;
@useResult
$Res call({
 String id, int rating, String? comment, DateTime createdAt, RatingUser fromUser
});


$RatingUserCopyWith<$Res> get fromUser;

}
/// @nodoc
class _$RateUserDataCopyWithImpl<$Res>
    implements $RateUserDataCopyWith<$Res> {
  _$RateUserDataCopyWithImpl(this._self, this._then);

  final RateUserData _self;
  final $Res Function(RateUserData) _then;

/// Create a copy of RateUserData
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
/// Create a copy of RateUserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingUserCopyWith<$Res> get fromUser {
  
  return $RatingUserCopyWith<$Res>(_self.fromUser, (value) {
    return _then(_self.copyWith(fromUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [RateUserData].
extension RateUserDataPatterns on RateUserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RateUserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateUserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RateUserData value)  $default,){
final _that = this;
switch (_that) {
case _RateUserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RateUserData value)?  $default,){
final _that = this;
switch (_that) {
case _RateUserData() when $default != null:
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
case _RateUserData() when $default != null:
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
case _RateUserData():
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
case _RateUserData() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.fromUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RateUserData implements RateUserData {
  const _RateUserData({required this.id, required this.rating, this.comment, required this.createdAt, required this.fromUser});
  factory _RateUserData.fromJson(Map<String, dynamic> json) => _$RateUserDataFromJson(json);

@override final  String id;
@override final  int rating;
@override final  String? comment;
@override final  DateTime createdAt;
@override final  RatingUser fromUser;

/// Create a copy of RateUserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateUserDataCopyWith<_RateUserData> get copyWith => __$RateUserDataCopyWithImpl<_RateUserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RateUserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateUserData&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,createdAt,fromUser);

@override
String toString() {
  return 'RateUserData(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt, fromUser: $fromUser)';
}


}

/// @nodoc
abstract mixin class _$RateUserDataCopyWith<$Res> implements $RateUserDataCopyWith<$Res> {
  factory _$RateUserDataCopyWith(_RateUserData value, $Res Function(_RateUserData) _then) = __$RateUserDataCopyWithImpl;
@override @useResult
$Res call({
 String id, int rating, String? comment, DateTime createdAt, RatingUser fromUser
});


@override $RatingUserCopyWith<$Res> get fromUser;

}
/// @nodoc
class __$RateUserDataCopyWithImpl<$Res>
    implements _$RateUserDataCopyWith<$Res> {
  __$RateUserDataCopyWithImpl(this._self, this._then);

  final _RateUserData _self;
  final $Res Function(_RateUserData) _then;

/// Create a copy of RateUserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,Object? fromUser = null,}) {
  return _then(_RateUserData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as RatingUser,
  ));
}

/// Create a copy of RateUserData
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

// dart format on
