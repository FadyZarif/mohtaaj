// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmPreferencesModel {

 String get id; String get userId;// General
 bool get pushEnabled; bool get emailEnabled;// Quiet Hours
 bool get quietHoursEnabled; String? get quietHoursStart; String? get quietHoursEnd; String get timezone;// Notification Types
 bool get newMessageEnabled; bool get newOfferEnabled; bool get offerAcceptedEnabled; bool get offerRejectedEnabled; bool get itemFavoritedEnabled; bool get newRatingEnabled; bool get badgeEarnedEnabled; bool get challengeEnabled; bool get pointsEarnedEnabled; bool get requestFulfilledEnabled; bool get systemEnabled; bool get marketingEnabled;// Timestamps
 String get createdAt; String get updatedAt;
/// Create a copy of FcmPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmPreferencesModelCopyWith<FcmPreferencesModel> get copyWith => _$FcmPreferencesModelCopyWithImpl<FcmPreferencesModel>(this as FcmPreferencesModel, _$identity);

  /// Serializes this FcmPreferencesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmPreferencesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.quietHoursEnabled, quietHoursEnabled) || other.quietHoursEnabled == quietHoursEnabled)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.newMessageEnabled, newMessageEnabled) || other.newMessageEnabled == newMessageEnabled)&&(identical(other.newOfferEnabled, newOfferEnabled) || other.newOfferEnabled == newOfferEnabled)&&(identical(other.offerAcceptedEnabled, offerAcceptedEnabled) || other.offerAcceptedEnabled == offerAcceptedEnabled)&&(identical(other.offerRejectedEnabled, offerRejectedEnabled) || other.offerRejectedEnabled == offerRejectedEnabled)&&(identical(other.itemFavoritedEnabled, itemFavoritedEnabled) || other.itemFavoritedEnabled == itemFavoritedEnabled)&&(identical(other.newRatingEnabled, newRatingEnabled) || other.newRatingEnabled == newRatingEnabled)&&(identical(other.badgeEarnedEnabled, badgeEarnedEnabled) || other.badgeEarnedEnabled == badgeEarnedEnabled)&&(identical(other.challengeEnabled, challengeEnabled) || other.challengeEnabled == challengeEnabled)&&(identical(other.pointsEarnedEnabled, pointsEarnedEnabled) || other.pointsEarnedEnabled == pointsEarnedEnabled)&&(identical(other.requestFulfilledEnabled, requestFulfilledEnabled) || other.requestFulfilledEnabled == requestFulfilledEnabled)&&(identical(other.systemEnabled, systemEnabled) || other.systemEnabled == systemEnabled)&&(identical(other.marketingEnabled, marketingEnabled) || other.marketingEnabled == marketingEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,pushEnabled,emailEnabled,quietHoursEnabled,quietHoursStart,quietHoursEnd,timezone,newMessageEnabled,newOfferEnabled,offerAcceptedEnabled,offerRejectedEnabled,itemFavoritedEnabled,newRatingEnabled,badgeEarnedEnabled,challengeEnabled,pointsEarnedEnabled,requestFulfilledEnabled,systemEnabled,marketingEnabled,createdAt,updatedAt]);

@override
String toString() {
  return 'FcmPreferencesModel(id: $id, userId: $userId, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, timezone: $timezone, newMessageEnabled: $newMessageEnabled, newOfferEnabled: $newOfferEnabled, offerAcceptedEnabled: $offerAcceptedEnabled, offerRejectedEnabled: $offerRejectedEnabled, itemFavoritedEnabled: $itemFavoritedEnabled, newRatingEnabled: $newRatingEnabled, badgeEarnedEnabled: $badgeEarnedEnabled, challengeEnabled: $challengeEnabled, pointsEarnedEnabled: $pointsEarnedEnabled, requestFulfilledEnabled: $requestFulfilledEnabled, systemEnabled: $systemEnabled, marketingEnabled: $marketingEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FcmPreferencesModelCopyWith<$Res>  {
  factory $FcmPreferencesModelCopyWith(FcmPreferencesModel value, $Res Function(FcmPreferencesModel) _then) = _$FcmPreferencesModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, bool pushEnabled, bool emailEnabled, bool quietHoursEnabled, String? quietHoursStart, String? quietHoursEnd, String timezone, bool newMessageEnabled, bool newOfferEnabled, bool offerAcceptedEnabled, bool offerRejectedEnabled, bool itemFavoritedEnabled, bool newRatingEnabled, bool badgeEarnedEnabled, bool challengeEnabled, bool pointsEarnedEnabled, bool requestFulfilledEnabled, bool systemEnabled, bool marketingEnabled, String createdAt, String updatedAt
});




}
/// @nodoc
class _$FcmPreferencesModelCopyWithImpl<$Res>
    implements $FcmPreferencesModelCopyWith<$Res> {
  _$FcmPreferencesModelCopyWithImpl(this._self, this._then);

  final FcmPreferencesModel _self;
  final $Res Function(FcmPreferencesModel) _then;

/// Create a copy of FcmPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? pushEnabled = null,Object? emailEnabled = null,Object? quietHoursEnabled = null,Object? quietHoursStart = freezed,Object? quietHoursEnd = freezed,Object? timezone = null,Object? newMessageEnabled = null,Object? newOfferEnabled = null,Object? offerAcceptedEnabled = null,Object? offerRejectedEnabled = null,Object? itemFavoritedEnabled = null,Object? newRatingEnabled = null,Object? badgeEarnedEnabled = null,Object? challengeEnabled = null,Object? pointsEarnedEnabled = null,Object? requestFulfilledEnabled = null,Object? systemEnabled = null,Object? marketingEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,quietHoursEnabled: null == quietHoursEnabled ? _self.quietHoursEnabled : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: freezed == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnd: freezed == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,newMessageEnabled: null == newMessageEnabled ? _self.newMessageEnabled : newMessageEnabled // ignore: cast_nullable_to_non_nullable
as bool,newOfferEnabled: null == newOfferEnabled ? _self.newOfferEnabled : newOfferEnabled // ignore: cast_nullable_to_non_nullable
as bool,offerAcceptedEnabled: null == offerAcceptedEnabled ? _self.offerAcceptedEnabled : offerAcceptedEnabled // ignore: cast_nullable_to_non_nullable
as bool,offerRejectedEnabled: null == offerRejectedEnabled ? _self.offerRejectedEnabled : offerRejectedEnabled // ignore: cast_nullable_to_non_nullable
as bool,itemFavoritedEnabled: null == itemFavoritedEnabled ? _self.itemFavoritedEnabled : itemFavoritedEnabled // ignore: cast_nullable_to_non_nullable
as bool,newRatingEnabled: null == newRatingEnabled ? _self.newRatingEnabled : newRatingEnabled // ignore: cast_nullable_to_non_nullable
as bool,badgeEarnedEnabled: null == badgeEarnedEnabled ? _self.badgeEarnedEnabled : badgeEarnedEnabled // ignore: cast_nullable_to_non_nullable
as bool,challengeEnabled: null == challengeEnabled ? _self.challengeEnabled : challengeEnabled // ignore: cast_nullable_to_non_nullable
as bool,pointsEarnedEnabled: null == pointsEarnedEnabled ? _self.pointsEarnedEnabled : pointsEarnedEnabled // ignore: cast_nullable_to_non_nullable
as bool,requestFulfilledEnabled: null == requestFulfilledEnabled ? _self.requestFulfilledEnabled : requestFulfilledEnabled // ignore: cast_nullable_to_non_nullable
as bool,systemEnabled: null == systemEnabled ? _self.systemEnabled : systemEnabled // ignore: cast_nullable_to_non_nullable
as bool,marketingEnabled: null == marketingEnabled ? _self.marketingEnabled : marketingEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmPreferencesModel].
extension FcmPreferencesModelPatterns on FcmPreferencesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmPreferencesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmPreferencesModel value)  $default,){
final _that = this;
switch (_that) {
case _FcmPreferencesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmPreferencesModel value)?  $default,){
final _that = this;
switch (_that) {
case _FcmPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  bool pushEnabled,  bool emailEnabled,  bool quietHoursEnabled,  String? quietHoursStart,  String? quietHoursEnd,  String timezone,  bool newMessageEnabled,  bool newOfferEnabled,  bool offerAcceptedEnabled,  bool offerRejectedEnabled,  bool itemFavoritedEnabled,  bool newRatingEnabled,  bool badgeEarnedEnabled,  bool challengeEnabled,  bool pointsEarnedEnabled,  bool requestFulfilledEnabled,  bool systemEnabled,  bool marketingEnabled,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmPreferencesModel() when $default != null:
return $default(_that.id,_that.userId,_that.pushEnabled,_that.emailEnabled,_that.quietHoursEnabled,_that.quietHoursStart,_that.quietHoursEnd,_that.timezone,_that.newMessageEnabled,_that.newOfferEnabled,_that.offerAcceptedEnabled,_that.offerRejectedEnabled,_that.itemFavoritedEnabled,_that.newRatingEnabled,_that.badgeEarnedEnabled,_that.challengeEnabled,_that.pointsEarnedEnabled,_that.requestFulfilledEnabled,_that.systemEnabled,_that.marketingEnabled,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  bool pushEnabled,  bool emailEnabled,  bool quietHoursEnabled,  String? quietHoursStart,  String? quietHoursEnd,  String timezone,  bool newMessageEnabled,  bool newOfferEnabled,  bool offerAcceptedEnabled,  bool offerRejectedEnabled,  bool itemFavoritedEnabled,  bool newRatingEnabled,  bool badgeEarnedEnabled,  bool challengeEnabled,  bool pointsEarnedEnabled,  bool requestFulfilledEnabled,  bool systemEnabled,  bool marketingEnabled,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FcmPreferencesModel():
return $default(_that.id,_that.userId,_that.pushEnabled,_that.emailEnabled,_that.quietHoursEnabled,_that.quietHoursStart,_that.quietHoursEnd,_that.timezone,_that.newMessageEnabled,_that.newOfferEnabled,_that.offerAcceptedEnabled,_that.offerRejectedEnabled,_that.itemFavoritedEnabled,_that.newRatingEnabled,_that.badgeEarnedEnabled,_that.challengeEnabled,_that.pointsEarnedEnabled,_that.requestFulfilledEnabled,_that.systemEnabled,_that.marketingEnabled,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  bool pushEnabled,  bool emailEnabled,  bool quietHoursEnabled,  String? quietHoursStart,  String? quietHoursEnd,  String timezone,  bool newMessageEnabled,  bool newOfferEnabled,  bool offerAcceptedEnabled,  bool offerRejectedEnabled,  bool itemFavoritedEnabled,  bool newRatingEnabled,  bool badgeEarnedEnabled,  bool challengeEnabled,  bool pointsEarnedEnabled,  bool requestFulfilledEnabled,  bool systemEnabled,  bool marketingEnabled,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FcmPreferencesModel() when $default != null:
return $default(_that.id,_that.userId,_that.pushEnabled,_that.emailEnabled,_that.quietHoursEnabled,_that.quietHoursStart,_that.quietHoursEnd,_that.timezone,_that.newMessageEnabled,_that.newOfferEnabled,_that.offerAcceptedEnabled,_that.offerRejectedEnabled,_that.itemFavoritedEnabled,_that.newRatingEnabled,_that.badgeEarnedEnabled,_that.challengeEnabled,_that.pointsEarnedEnabled,_that.requestFulfilledEnabled,_that.systemEnabled,_that.marketingEnabled,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmPreferencesModel implements FcmPreferencesModel {
  const _FcmPreferencesModel({required this.id, required this.userId, required this.pushEnabled, required this.emailEnabled, required this.quietHoursEnabled, this.quietHoursStart, this.quietHoursEnd, required this.timezone, required this.newMessageEnabled, required this.newOfferEnabled, required this.offerAcceptedEnabled, required this.offerRejectedEnabled, required this.itemFavoritedEnabled, required this.newRatingEnabled, required this.badgeEarnedEnabled, required this.challengeEnabled, required this.pointsEarnedEnabled, required this.requestFulfilledEnabled, required this.systemEnabled, required this.marketingEnabled, required this.createdAt, required this.updatedAt});
  factory _FcmPreferencesModel.fromJson(Map<String, dynamic> json) => _$FcmPreferencesModelFromJson(json);

@override final  String id;
@override final  String userId;
// General
@override final  bool pushEnabled;
@override final  bool emailEnabled;
// Quiet Hours
@override final  bool quietHoursEnabled;
@override final  String? quietHoursStart;
@override final  String? quietHoursEnd;
@override final  String timezone;
// Notification Types
@override final  bool newMessageEnabled;
@override final  bool newOfferEnabled;
@override final  bool offerAcceptedEnabled;
@override final  bool offerRejectedEnabled;
@override final  bool itemFavoritedEnabled;
@override final  bool newRatingEnabled;
@override final  bool badgeEarnedEnabled;
@override final  bool challengeEnabled;
@override final  bool pointsEarnedEnabled;
@override final  bool requestFulfilledEnabled;
@override final  bool systemEnabled;
@override final  bool marketingEnabled;
// Timestamps
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of FcmPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmPreferencesModelCopyWith<_FcmPreferencesModel> get copyWith => __$FcmPreferencesModelCopyWithImpl<_FcmPreferencesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmPreferencesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmPreferencesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.quietHoursEnabled, quietHoursEnabled) || other.quietHoursEnabled == quietHoursEnabled)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.newMessageEnabled, newMessageEnabled) || other.newMessageEnabled == newMessageEnabled)&&(identical(other.newOfferEnabled, newOfferEnabled) || other.newOfferEnabled == newOfferEnabled)&&(identical(other.offerAcceptedEnabled, offerAcceptedEnabled) || other.offerAcceptedEnabled == offerAcceptedEnabled)&&(identical(other.offerRejectedEnabled, offerRejectedEnabled) || other.offerRejectedEnabled == offerRejectedEnabled)&&(identical(other.itemFavoritedEnabled, itemFavoritedEnabled) || other.itemFavoritedEnabled == itemFavoritedEnabled)&&(identical(other.newRatingEnabled, newRatingEnabled) || other.newRatingEnabled == newRatingEnabled)&&(identical(other.badgeEarnedEnabled, badgeEarnedEnabled) || other.badgeEarnedEnabled == badgeEarnedEnabled)&&(identical(other.challengeEnabled, challengeEnabled) || other.challengeEnabled == challengeEnabled)&&(identical(other.pointsEarnedEnabled, pointsEarnedEnabled) || other.pointsEarnedEnabled == pointsEarnedEnabled)&&(identical(other.requestFulfilledEnabled, requestFulfilledEnabled) || other.requestFulfilledEnabled == requestFulfilledEnabled)&&(identical(other.systemEnabled, systemEnabled) || other.systemEnabled == systemEnabled)&&(identical(other.marketingEnabled, marketingEnabled) || other.marketingEnabled == marketingEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,pushEnabled,emailEnabled,quietHoursEnabled,quietHoursStart,quietHoursEnd,timezone,newMessageEnabled,newOfferEnabled,offerAcceptedEnabled,offerRejectedEnabled,itemFavoritedEnabled,newRatingEnabled,badgeEarnedEnabled,challengeEnabled,pointsEarnedEnabled,requestFulfilledEnabled,systemEnabled,marketingEnabled,createdAt,updatedAt]);

@override
String toString() {
  return 'FcmPreferencesModel(id: $id, userId: $userId, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, timezone: $timezone, newMessageEnabled: $newMessageEnabled, newOfferEnabled: $newOfferEnabled, offerAcceptedEnabled: $offerAcceptedEnabled, offerRejectedEnabled: $offerRejectedEnabled, itemFavoritedEnabled: $itemFavoritedEnabled, newRatingEnabled: $newRatingEnabled, badgeEarnedEnabled: $badgeEarnedEnabled, challengeEnabled: $challengeEnabled, pointsEarnedEnabled: $pointsEarnedEnabled, requestFulfilledEnabled: $requestFulfilledEnabled, systemEnabled: $systemEnabled, marketingEnabled: $marketingEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FcmPreferencesModelCopyWith<$Res> implements $FcmPreferencesModelCopyWith<$Res> {
  factory _$FcmPreferencesModelCopyWith(_FcmPreferencesModel value, $Res Function(_FcmPreferencesModel) _then) = __$FcmPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, bool pushEnabled, bool emailEnabled, bool quietHoursEnabled, String? quietHoursStart, String? quietHoursEnd, String timezone, bool newMessageEnabled, bool newOfferEnabled, bool offerAcceptedEnabled, bool offerRejectedEnabled, bool itemFavoritedEnabled, bool newRatingEnabled, bool badgeEarnedEnabled, bool challengeEnabled, bool pointsEarnedEnabled, bool requestFulfilledEnabled, bool systemEnabled, bool marketingEnabled, String createdAt, String updatedAt
});




}
/// @nodoc
class __$FcmPreferencesModelCopyWithImpl<$Res>
    implements _$FcmPreferencesModelCopyWith<$Res> {
  __$FcmPreferencesModelCopyWithImpl(this._self, this._then);

  final _FcmPreferencesModel _self;
  final $Res Function(_FcmPreferencesModel) _then;

/// Create a copy of FcmPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? pushEnabled = null,Object? emailEnabled = null,Object? quietHoursEnabled = null,Object? quietHoursStart = freezed,Object? quietHoursEnd = freezed,Object? timezone = null,Object? newMessageEnabled = null,Object? newOfferEnabled = null,Object? offerAcceptedEnabled = null,Object? offerRejectedEnabled = null,Object? itemFavoritedEnabled = null,Object? newRatingEnabled = null,Object? badgeEarnedEnabled = null,Object? challengeEnabled = null,Object? pointsEarnedEnabled = null,Object? requestFulfilledEnabled = null,Object? systemEnabled = null,Object? marketingEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_FcmPreferencesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,quietHoursEnabled: null == quietHoursEnabled ? _self.quietHoursEnabled : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: freezed == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnd: freezed == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,newMessageEnabled: null == newMessageEnabled ? _self.newMessageEnabled : newMessageEnabled // ignore: cast_nullable_to_non_nullable
as bool,newOfferEnabled: null == newOfferEnabled ? _self.newOfferEnabled : newOfferEnabled // ignore: cast_nullable_to_non_nullable
as bool,offerAcceptedEnabled: null == offerAcceptedEnabled ? _self.offerAcceptedEnabled : offerAcceptedEnabled // ignore: cast_nullable_to_non_nullable
as bool,offerRejectedEnabled: null == offerRejectedEnabled ? _self.offerRejectedEnabled : offerRejectedEnabled // ignore: cast_nullable_to_non_nullable
as bool,itemFavoritedEnabled: null == itemFavoritedEnabled ? _self.itemFavoritedEnabled : itemFavoritedEnabled // ignore: cast_nullable_to_non_nullable
as bool,newRatingEnabled: null == newRatingEnabled ? _self.newRatingEnabled : newRatingEnabled // ignore: cast_nullable_to_non_nullable
as bool,badgeEarnedEnabled: null == badgeEarnedEnabled ? _self.badgeEarnedEnabled : badgeEarnedEnabled // ignore: cast_nullable_to_non_nullable
as bool,challengeEnabled: null == challengeEnabled ? _self.challengeEnabled : challengeEnabled // ignore: cast_nullable_to_non_nullable
as bool,pointsEarnedEnabled: null == pointsEarnedEnabled ? _self.pointsEarnedEnabled : pointsEarnedEnabled // ignore: cast_nullable_to_non_nullable
as bool,requestFulfilledEnabled: null == requestFulfilledEnabled ? _self.requestFulfilledEnabled : requestFulfilledEnabled // ignore: cast_nullable_to_non_nullable
as bool,systemEnabled: null == systemEnabled ? _self.systemEnabled : systemEnabled // ignore: cast_nullable_to_non_nullable
as bool,marketingEnabled: null == marketingEnabled ? _self.marketingEnabled : marketingEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FcmPreferencesData {

 FcmPreferencesModel get preferences;
/// Create a copy of FcmPreferencesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmPreferencesDataCopyWith<FcmPreferencesData> get copyWith => _$FcmPreferencesDataCopyWithImpl<FcmPreferencesData>(this as FcmPreferencesData, _$identity);

  /// Serializes this FcmPreferencesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmPreferencesData&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'FcmPreferencesData(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $FcmPreferencesDataCopyWith<$Res>  {
  factory $FcmPreferencesDataCopyWith(FcmPreferencesData value, $Res Function(FcmPreferencesData) _then) = _$FcmPreferencesDataCopyWithImpl;
@useResult
$Res call({
 FcmPreferencesModel preferences
});


$FcmPreferencesModelCopyWith<$Res> get preferences;

}
/// @nodoc
class _$FcmPreferencesDataCopyWithImpl<$Res>
    implements $FcmPreferencesDataCopyWith<$Res> {
  _$FcmPreferencesDataCopyWithImpl(this._self, this._then);

  final FcmPreferencesData _self;
  final $Res Function(FcmPreferencesData) _then;

/// Create a copy of FcmPreferencesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferences = null,}) {
  return _then(_self.copyWith(
preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as FcmPreferencesModel,
  ));
}
/// Create a copy of FcmPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmPreferencesModelCopyWith<$Res> get preferences {
  
  return $FcmPreferencesModelCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcmPreferencesData].
extension FcmPreferencesDataPatterns on FcmPreferencesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmPreferencesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmPreferencesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmPreferencesData value)  $default,){
final _that = this;
switch (_that) {
case _FcmPreferencesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmPreferencesData value)?  $default,){
final _that = this;
switch (_that) {
case _FcmPreferencesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FcmPreferencesModel preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmPreferencesData() when $default != null:
return $default(_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FcmPreferencesModel preferences)  $default,) {final _that = this;
switch (_that) {
case _FcmPreferencesData():
return $default(_that.preferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FcmPreferencesModel preferences)?  $default,) {final _that = this;
switch (_that) {
case _FcmPreferencesData() when $default != null:
return $default(_that.preferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmPreferencesData implements FcmPreferencesData {
  const _FcmPreferencesData({required this.preferences});
  factory _FcmPreferencesData.fromJson(Map<String, dynamic> json) => _$FcmPreferencesDataFromJson(json);

@override final  FcmPreferencesModel preferences;

/// Create a copy of FcmPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmPreferencesDataCopyWith<_FcmPreferencesData> get copyWith => __$FcmPreferencesDataCopyWithImpl<_FcmPreferencesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmPreferencesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmPreferencesData&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'FcmPreferencesData(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$FcmPreferencesDataCopyWith<$Res> implements $FcmPreferencesDataCopyWith<$Res> {
  factory _$FcmPreferencesDataCopyWith(_FcmPreferencesData value, $Res Function(_FcmPreferencesData) _then) = __$FcmPreferencesDataCopyWithImpl;
@override @useResult
$Res call({
 FcmPreferencesModel preferences
});


@override $FcmPreferencesModelCopyWith<$Res> get preferences;

}
/// @nodoc
class __$FcmPreferencesDataCopyWithImpl<$Res>
    implements _$FcmPreferencesDataCopyWith<$Res> {
  __$FcmPreferencesDataCopyWithImpl(this._self, this._then);

  final _FcmPreferencesData _self;
  final $Res Function(_FcmPreferencesData) _then;

/// Create a copy of FcmPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferences = null,}) {
  return _then(_FcmPreferencesData(
preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as FcmPreferencesModel,
  ));
}

/// Create a copy of FcmPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmPreferencesModelCopyWith<$Res> get preferences {
  
  return $FcmPreferencesModelCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// @nodoc
mixin _$FcmPreferencesResponse {

 bool get success; String? get message; FcmPreferencesData get data;
/// Create a copy of FcmPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmPreferencesResponseCopyWith<FcmPreferencesResponse> get copyWith => _$FcmPreferencesResponseCopyWithImpl<FcmPreferencesResponse>(this as FcmPreferencesResponse, _$identity);

  /// Serializes this FcmPreferencesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmPreferencesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmPreferencesResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $FcmPreferencesResponseCopyWith<$Res>  {
  factory $FcmPreferencesResponseCopyWith(FcmPreferencesResponse value, $Res Function(FcmPreferencesResponse) _then) = _$FcmPreferencesResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message, FcmPreferencesData data
});


$FcmPreferencesDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FcmPreferencesResponseCopyWithImpl<$Res>
    implements $FcmPreferencesResponseCopyWith<$Res> {
  _$FcmPreferencesResponseCopyWithImpl(this._self, this._then);

  final FcmPreferencesResponse _self;
  final $Res Function(FcmPreferencesResponse) _then;

/// Create a copy of FcmPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmPreferencesData,
  ));
}
/// Create a copy of FcmPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmPreferencesDataCopyWith<$Res> get data {
  
  return $FcmPreferencesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcmPreferencesResponse].
extension FcmPreferencesResponsePatterns on FcmPreferencesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmPreferencesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmPreferencesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmPreferencesResponse value)  $default,){
final _that = this;
switch (_that) {
case _FcmPreferencesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmPreferencesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FcmPreferencesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmPreferencesData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmPreferencesResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message,  FcmPreferencesData data)  $default,) {final _that = this;
switch (_that) {
case _FcmPreferencesResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message,  FcmPreferencesData data)?  $default,) {final _that = this;
switch (_that) {
case _FcmPreferencesResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmPreferencesResponse implements FcmPreferencesResponse {
  const _FcmPreferencesResponse({required this.success, this.message, required this.data});
  factory _FcmPreferencesResponse.fromJson(Map<String, dynamic> json) => _$FcmPreferencesResponseFromJson(json);

@override final  bool success;
@override final  String? message;
@override final  FcmPreferencesData data;

/// Create a copy of FcmPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmPreferencesResponseCopyWith<_FcmPreferencesResponse> get copyWith => __$FcmPreferencesResponseCopyWithImpl<_FcmPreferencesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmPreferencesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmPreferencesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'FcmPreferencesResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FcmPreferencesResponseCopyWith<$Res> implements $FcmPreferencesResponseCopyWith<$Res> {
  factory _$FcmPreferencesResponseCopyWith(_FcmPreferencesResponse value, $Res Function(_FcmPreferencesResponse) _then) = __$FcmPreferencesResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message, FcmPreferencesData data
});


@override $FcmPreferencesDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FcmPreferencesResponseCopyWithImpl<$Res>
    implements _$FcmPreferencesResponseCopyWith<$Res> {
  __$FcmPreferencesResponseCopyWithImpl(this._self, this._then);

  final _FcmPreferencesResponse _self;
  final $Res Function(_FcmPreferencesResponse) _then;

/// Create a copy of FcmPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_FcmPreferencesResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FcmPreferencesData,
  ));
}

/// Create a copy of FcmPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FcmPreferencesDataCopyWith<$Res> get data {
  
  return $FcmPreferencesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FcmUpdatePreferencesRequest {

@JsonKey(includeIfNull: false) bool? get newMessage;@JsonKey(includeIfNull: false) bool? get newOffer;@JsonKey(includeIfNull: false) bool? get offerAccepted;@JsonKey(includeIfNull: false) bool? get offerRejected;@JsonKey(includeIfNull: false) bool? get newBadge;@JsonKey(includeIfNull: false) bool? get challengeCompleted;@JsonKey(includeIfNull: false) bool? get newRating;@JsonKey(includeIfNull: false) bool? get itemFavorited;@JsonKey(includeIfNull: false) bool? get systemAnnouncement;@JsonKey(includeIfNull: false) bool? get marketing;
/// Create a copy of FcmUpdatePreferencesRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmUpdatePreferencesRequestCopyWith<FcmUpdatePreferencesRequest> get copyWith => _$FcmUpdatePreferencesRequestCopyWithImpl<FcmUpdatePreferencesRequest>(this as FcmUpdatePreferencesRequest, _$identity);

  /// Serializes this FcmUpdatePreferencesRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmUpdatePreferencesRequest&&(identical(other.newMessage, newMessage) || other.newMessage == newMessage)&&(identical(other.newOffer, newOffer) || other.newOffer == newOffer)&&(identical(other.offerAccepted, offerAccepted) || other.offerAccepted == offerAccepted)&&(identical(other.offerRejected, offerRejected) || other.offerRejected == offerRejected)&&(identical(other.newBadge, newBadge) || other.newBadge == newBadge)&&(identical(other.challengeCompleted, challengeCompleted) || other.challengeCompleted == challengeCompleted)&&(identical(other.newRating, newRating) || other.newRating == newRating)&&(identical(other.itemFavorited, itemFavorited) || other.itemFavorited == itemFavorited)&&(identical(other.systemAnnouncement, systemAnnouncement) || other.systemAnnouncement == systemAnnouncement)&&(identical(other.marketing, marketing) || other.marketing == marketing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newMessage,newOffer,offerAccepted,offerRejected,newBadge,challengeCompleted,newRating,itemFavorited,systemAnnouncement,marketing);

@override
String toString() {
  return 'FcmUpdatePreferencesRequest(newMessage: $newMessage, newOffer: $newOffer, offerAccepted: $offerAccepted, offerRejected: $offerRejected, newBadge: $newBadge, challengeCompleted: $challengeCompleted, newRating: $newRating, itemFavorited: $itemFavorited, systemAnnouncement: $systemAnnouncement, marketing: $marketing)';
}


}

/// @nodoc
abstract mixin class $FcmUpdatePreferencesRequestCopyWith<$Res>  {
  factory $FcmUpdatePreferencesRequestCopyWith(FcmUpdatePreferencesRequest value, $Res Function(FcmUpdatePreferencesRequest) _then) = _$FcmUpdatePreferencesRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) bool? newMessage,@JsonKey(includeIfNull: false) bool? newOffer,@JsonKey(includeIfNull: false) bool? offerAccepted,@JsonKey(includeIfNull: false) bool? offerRejected,@JsonKey(includeIfNull: false) bool? newBadge,@JsonKey(includeIfNull: false) bool? challengeCompleted,@JsonKey(includeIfNull: false) bool? newRating,@JsonKey(includeIfNull: false) bool? itemFavorited,@JsonKey(includeIfNull: false) bool? systemAnnouncement,@JsonKey(includeIfNull: false) bool? marketing
});




}
/// @nodoc
class _$FcmUpdatePreferencesRequestCopyWithImpl<$Res>
    implements $FcmUpdatePreferencesRequestCopyWith<$Res> {
  _$FcmUpdatePreferencesRequestCopyWithImpl(this._self, this._then);

  final FcmUpdatePreferencesRequest _self;
  final $Res Function(FcmUpdatePreferencesRequest) _then;

/// Create a copy of FcmUpdatePreferencesRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newMessage = freezed,Object? newOffer = freezed,Object? offerAccepted = freezed,Object? offerRejected = freezed,Object? newBadge = freezed,Object? challengeCompleted = freezed,Object? newRating = freezed,Object? itemFavorited = freezed,Object? systemAnnouncement = freezed,Object? marketing = freezed,}) {
  return _then(_self.copyWith(
newMessage: freezed == newMessage ? _self.newMessage : newMessage // ignore: cast_nullable_to_non_nullable
as bool?,newOffer: freezed == newOffer ? _self.newOffer : newOffer // ignore: cast_nullable_to_non_nullable
as bool?,offerAccepted: freezed == offerAccepted ? _self.offerAccepted : offerAccepted // ignore: cast_nullable_to_non_nullable
as bool?,offerRejected: freezed == offerRejected ? _self.offerRejected : offerRejected // ignore: cast_nullable_to_non_nullable
as bool?,newBadge: freezed == newBadge ? _self.newBadge : newBadge // ignore: cast_nullable_to_non_nullable
as bool?,challengeCompleted: freezed == challengeCompleted ? _self.challengeCompleted : challengeCompleted // ignore: cast_nullable_to_non_nullable
as bool?,newRating: freezed == newRating ? _self.newRating : newRating // ignore: cast_nullable_to_non_nullable
as bool?,itemFavorited: freezed == itemFavorited ? _self.itemFavorited : itemFavorited // ignore: cast_nullable_to_non_nullable
as bool?,systemAnnouncement: freezed == systemAnnouncement ? _self.systemAnnouncement : systemAnnouncement // ignore: cast_nullable_to_non_nullable
as bool?,marketing: freezed == marketing ? _self.marketing : marketing // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmUpdatePreferencesRequest].
extension FcmUpdatePreferencesRequestPatterns on FcmUpdatePreferencesRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmUpdatePreferencesRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmUpdatePreferencesRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmUpdatePreferencesRequest value)  $default,){
final _that = this;
switch (_that) {
case _FcmUpdatePreferencesRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmUpdatePreferencesRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FcmUpdatePreferencesRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  bool? newMessage, @JsonKey(includeIfNull: false)  bool? newOffer, @JsonKey(includeIfNull: false)  bool? offerAccepted, @JsonKey(includeIfNull: false)  bool? offerRejected, @JsonKey(includeIfNull: false)  bool? newBadge, @JsonKey(includeIfNull: false)  bool? challengeCompleted, @JsonKey(includeIfNull: false)  bool? newRating, @JsonKey(includeIfNull: false)  bool? itemFavorited, @JsonKey(includeIfNull: false)  bool? systemAnnouncement, @JsonKey(includeIfNull: false)  bool? marketing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmUpdatePreferencesRequest() when $default != null:
return $default(_that.newMessage,_that.newOffer,_that.offerAccepted,_that.offerRejected,_that.newBadge,_that.challengeCompleted,_that.newRating,_that.itemFavorited,_that.systemAnnouncement,_that.marketing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  bool? newMessage, @JsonKey(includeIfNull: false)  bool? newOffer, @JsonKey(includeIfNull: false)  bool? offerAccepted, @JsonKey(includeIfNull: false)  bool? offerRejected, @JsonKey(includeIfNull: false)  bool? newBadge, @JsonKey(includeIfNull: false)  bool? challengeCompleted, @JsonKey(includeIfNull: false)  bool? newRating, @JsonKey(includeIfNull: false)  bool? itemFavorited, @JsonKey(includeIfNull: false)  bool? systemAnnouncement, @JsonKey(includeIfNull: false)  bool? marketing)  $default,) {final _that = this;
switch (_that) {
case _FcmUpdatePreferencesRequest():
return $default(_that.newMessage,_that.newOffer,_that.offerAccepted,_that.offerRejected,_that.newBadge,_that.challengeCompleted,_that.newRating,_that.itemFavorited,_that.systemAnnouncement,_that.marketing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  bool? newMessage, @JsonKey(includeIfNull: false)  bool? newOffer, @JsonKey(includeIfNull: false)  bool? offerAccepted, @JsonKey(includeIfNull: false)  bool? offerRejected, @JsonKey(includeIfNull: false)  bool? newBadge, @JsonKey(includeIfNull: false)  bool? challengeCompleted, @JsonKey(includeIfNull: false)  bool? newRating, @JsonKey(includeIfNull: false)  bool? itemFavorited, @JsonKey(includeIfNull: false)  bool? systemAnnouncement, @JsonKey(includeIfNull: false)  bool? marketing)?  $default,) {final _that = this;
switch (_that) {
case _FcmUpdatePreferencesRequest() when $default != null:
return $default(_that.newMessage,_that.newOffer,_that.offerAccepted,_that.offerRejected,_that.newBadge,_that.challengeCompleted,_that.newRating,_that.itemFavorited,_that.systemAnnouncement,_that.marketing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmUpdatePreferencesRequest implements FcmUpdatePreferencesRequest {
  const _FcmUpdatePreferencesRequest({@JsonKey(includeIfNull: false) this.newMessage, @JsonKey(includeIfNull: false) this.newOffer, @JsonKey(includeIfNull: false) this.offerAccepted, @JsonKey(includeIfNull: false) this.offerRejected, @JsonKey(includeIfNull: false) this.newBadge, @JsonKey(includeIfNull: false) this.challengeCompleted, @JsonKey(includeIfNull: false) this.newRating, @JsonKey(includeIfNull: false) this.itemFavorited, @JsonKey(includeIfNull: false) this.systemAnnouncement, @JsonKey(includeIfNull: false) this.marketing});
  factory _FcmUpdatePreferencesRequest.fromJson(Map<String, dynamic> json) => _$FcmUpdatePreferencesRequestFromJson(json);

@override@JsonKey(includeIfNull: false) final  bool? newMessage;
@override@JsonKey(includeIfNull: false) final  bool? newOffer;
@override@JsonKey(includeIfNull: false) final  bool? offerAccepted;
@override@JsonKey(includeIfNull: false) final  bool? offerRejected;
@override@JsonKey(includeIfNull: false) final  bool? newBadge;
@override@JsonKey(includeIfNull: false) final  bool? challengeCompleted;
@override@JsonKey(includeIfNull: false) final  bool? newRating;
@override@JsonKey(includeIfNull: false) final  bool? itemFavorited;
@override@JsonKey(includeIfNull: false) final  bool? systemAnnouncement;
@override@JsonKey(includeIfNull: false) final  bool? marketing;

/// Create a copy of FcmUpdatePreferencesRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmUpdatePreferencesRequestCopyWith<_FcmUpdatePreferencesRequest> get copyWith => __$FcmUpdatePreferencesRequestCopyWithImpl<_FcmUpdatePreferencesRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmUpdatePreferencesRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmUpdatePreferencesRequest&&(identical(other.newMessage, newMessage) || other.newMessage == newMessage)&&(identical(other.newOffer, newOffer) || other.newOffer == newOffer)&&(identical(other.offerAccepted, offerAccepted) || other.offerAccepted == offerAccepted)&&(identical(other.offerRejected, offerRejected) || other.offerRejected == offerRejected)&&(identical(other.newBadge, newBadge) || other.newBadge == newBadge)&&(identical(other.challengeCompleted, challengeCompleted) || other.challengeCompleted == challengeCompleted)&&(identical(other.newRating, newRating) || other.newRating == newRating)&&(identical(other.itemFavorited, itemFavorited) || other.itemFavorited == itemFavorited)&&(identical(other.systemAnnouncement, systemAnnouncement) || other.systemAnnouncement == systemAnnouncement)&&(identical(other.marketing, marketing) || other.marketing == marketing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newMessage,newOffer,offerAccepted,offerRejected,newBadge,challengeCompleted,newRating,itemFavorited,systemAnnouncement,marketing);

@override
String toString() {
  return 'FcmUpdatePreferencesRequest(newMessage: $newMessage, newOffer: $newOffer, offerAccepted: $offerAccepted, offerRejected: $offerRejected, newBadge: $newBadge, challengeCompleted: $challengeCompleted, newRating: $newRating, itemFavorited: $itemFavorited, systemAnnouncement: $systemAnnouncement, marketing: $marketing)';
}


}

/// @nodoc
abstract mixin class _$FcmUpdatePreferencesRequestCopyWith<$Res> implements $FcmUpdatePreferencesRequestCopyWith<$Res> {
  factory _$FcmUpdatePreferencesRequestCopyWith(_FcmUpdatePreferencesRequest value, $Res Function(_FcmUpdatePreferencesRequest) _then) = __$FcmUpdatePreferencesRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) bool? newMessage,@JsonKey(includeIfNull: false) bool? newOffer,@JsonKey(includeIfNull: false) bool? offerAccepted,@JsonKey(includeIfNull: false) bool? offerRejected,@JsonKey(includeIfNull: false) bool? newBadge,@JsonKey(includeIfNull: false) bool? challengeCompleted,@JsonKey(includeIfNull: false) bool? newRating,@JsonKey(includeIfNull: false) bool? itemFavorited,@JsonKey(includeIfNull: false) bool? systemAnnouncement,@JsonKey(includeIfNull: false) bool? marketing
});




}
/// @nodoc
class __$FcmUpdatePreferencesRequestCopyWithImpl<$Res>
    implements _$FcmUpdatePreferencesRequestCopyWith<$Res> {
  __$FcmUpdatePreferencesRequestCopyWithImpl(this._self, this._then);

  final _FcmUpdatePreferencesRequest _self;
  final $Res Function(_FcmUpdatePreferencesRequest) _then;

/// Create a copy of FcmUpdatePreferencesRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newMessage = freezed,Object? newOffer = freezed,Object? offerAccepted = freezed,Object? offerRejected = freezed,Object? newBadge = freezed,Object? challengeCompleted = freezed,Object? newRating = freezed,Object? itemFavorited = freezed,Object? systemAnnouncement = freezed,Object? marketing = freezed,}) {
  return _then(_FcmUpdatePreferencesRequest(
newMessage: freezed == newMessage ? _self.newMessage : newMessage // ignore: cast_nullable_to_non_nullable
as bool?,newOffer: freezed == newOffer ? _self.newOffer : newOffer // ignore: cast_nullable_to_non_nullable
as bool?,offerAccepted: freezed == offerAccepted ? _self.offerAccepted : offerAccepted // ignore: cast_nullable_to_non_nullable
as bool?,offerRejected: freezed == offerRejected ? _self.offerRejected : offerRejected // ignore: cast_nullable_to_non_nullable
as bool?,newBadge: freezed == newBadge ? _self.newBadge : newBadge // ignore: cast_nullable_to_non_nullable
as bool?,challengeCompleted: freezed == challengeCompleted ? _self.challengeCompleted : challengeCompleted // ignore: cast_nullable_to_non_nullable
as bool?,newRating: freezed == newRating ? _self.newRating : newRating // ignore: cast_nullable_to_non_nullable
as bool?,itemFavorited: freezed == itemFavorited ? _self.itemFavorited : itemFavorited // ignore: cast_nullable_to_non_nullable
as bool?,systemAnnouncement: freezed == systemAnnouncement ? _self.systemAnnouncement : systemAnnouncement // ignore: cast_nullable_to_non_nullable
as bool?,marketing: freezed == marketing ? _self.marketing : marketing // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
