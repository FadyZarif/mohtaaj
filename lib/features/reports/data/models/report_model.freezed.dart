// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportModel {

 String get id; ReportTargetType get targetType; String get targetId; String get reporterId; String get reason; bool get resolved; DateTime get createdAt; DateTime? get resolvedAt; ReporterModel get reporter;
/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportModelCopyWith<ReportModel> get copyWith => _$ReportModelCopyWithImpl<ReportModel>(this as ReportModel, _$identity);

  /// Serializes this ReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.resolved, resolved) || other.resolved == resolved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.reporter, reporter) || other.reporter == reporter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,targetType,targetId,reporterId,reason,resolved,createdAt,resolvedAt,reporter);

@override
String toString() {
  return 'ReportModel(id: $id, targetType: $targetType, targetId: $targetId, reporterId: $reporterId, reason: $reason, resolved: $resolved, createdAt: $createdAt, resolvedAt: $resolvedAt, reporter: $reporter)';
}


}

/// @nodoc
abstract mixin class $ReportModelCopyWith<$Res>  {
  factory $ReportModelCopyWith(ReportModel value, $Res Function(ReportModel) _then) = _$ReportModelCopyWithImpl;
@useResult
$Res call({
 String id, ReportTargetType targetType, String targetId, String reporterId, String reason, bool resolved, DateTime createdAt, DateTime? resolvedAt, ReporterModel reporter
});


$ReporterModelCopyWith<$Res> get reporter;

}
/// @nodoc
class _$ReportModelCopyWithImpl<$Res>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._self, this._then);

  final ReportModel _self;
  final $Res Function(ReportModel) _then;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? targetType = null,Object? targetId = null,Object? reporterId = null,Object? reason = null,Object? resolved = null,Object? createdAt = null,Object? resolvedAt = freezed,Object? reporter = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ReportTargetType,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,resolved: null == resolved ? _self.resolved : resolved // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reporter: null == reporter ? _self.reporter : reporter // ignore: cast_nullable_to_non_nullable
as ReporterModel,
  ));
}
/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReporterModelCopyWith<$Res> get reporter {
  
  return $ReporterModelCopyWith<$Res>(_self.reporter, (value) {
    return _then(_self.copyWith(reporter: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportModel].
extension ReportModelPatterns on ReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ReportTargetType targetType,  String targetId,  String reporterId,  String reason,  bool resolved,  DateTime createdAt,  DateTime? resolvedAt,  ReporterModel reporter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
return $default(_that.id,_that.targetType,_that.targetId,_that.reporterId,_that.reason,_that.resolved,_that.createdAt,_that.resolvedAt,_that.reporter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ReportTargetType targetType,  String targetId,  String reporterId,  String reason,  bool resolved,  DateTime createdAt,  DateTime? resolvedAt,  ReporterModel reporter)  $default,) {final _that = this;
switch (_that) {
case _ReportModel():
return $default(_that.id,_that.targetType,_that.targetId,_that.reporterId,_that.reason,_that.resolved,_that.createdAt,_that.resolvedAt,_that.reporter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ReportTargetType targetType,  String targetId,  String reporterId,  String reason,  bool resolved,  DateTime createdAt,  DateTime? resolvedAt,  ReporterModel reporter)?  $default,) {final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
return $default(_that.id,_that.targetType,_that.targetId,_that.reporterId,_that.reason,_that.resolved,_that.createdAt,_that.resolvedAt,_that.reporter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportModel implements ReportModel {
  const _ReportModel({required this.id, required this.targetType, required this.targetId, required this.reporterId, required this.reason, required this.resolved, required this.createdAt, this.resolvedAt, required this.reporter});
  factory _ReportModel.fromJson(Map<String, dynamic> json) => _$ReportModelFromJson(json);

@override final  String id;
@override final  ReportTargetType targetType;
@override final  String targetId;
@override final  String reporterId;
@override final  String reason;
@override final  bool resolved;
@override final  DateTime createdAt;
@override final  DateTime? resolvedAt;
@override final  ReporterModel reporter;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportModelCopyWith<_ReportModel> get copyWith => __$ReportModelCopyWithImpl<_ReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.resolved, resolved) || other.resolved == resolved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.reporter, reporter) || other.reporter == reporter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,targetType,targetId,reporterId,reason,resolved,createdAt,resolvedAt,reporter);

@override
String toString() {
  return 'ReportModel(id: $id, targetType: $targetType, targetId: $targetId, reporterId: $reporterId, reason: $reason, resolved: $resolved, createdAt: $createdAt, resolvedAt: $resolvedAt, reporter: $reporter)';
}


}

/// @nodoc
abstract mixin class _$ReportModelCopyWith<$Res> implements $ReportModelCopyWith<$Res> {
  factory _$ReportModelCopyWith(_ReportModel value, $Res Function(_ReportModel) _then) = __$ReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, ReportTargetType targetType, String targetId, String reporterId, String reason, bool resolved, DateTime createdAt, DateTime? resolvedAt, ReporterModel reporter
});


@override $ReporterModelCopyWith<$Res> get reporter;

}
/// @nodoc
class __$ReportModelCopyWithImpl<$Res>
    implements _$ReportModelCopyWith<$Res> {
  __$ReportModelCopyWithImpl(this._self, this._then);

  final _ReportModel _self;
  final $Res Function(_ReportModel) _then;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? targetType = null,Object? targetId = null,Object? reporterId = null,Object? reason = null,Object? resolved = null,Object? createdAt = null,Object? resolvedAt = freezed,Object? reporter = null,}) {
  return _then(_ReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ReportTargetType,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,resolved: null == resolved ? _self.resolved : resolved // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reporter: null == reporter ? _self.reporter : reporter // ignore: cast_nullable_to_non_nullable
as ReporterModel,
  ));
}

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReporterModelCopyWith<$Res> get reporter {
  
  return $ReporterModelCopyWith<$Res>(_self.reporter, (value) {
    return _then(_self.copyWith(reporter: value));
  });
}
}


/// @nodoc
mixin _$ReporterModel {

 String get id; String get name; String? get avatarUrl;
/// Create a copy of ReporterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReporterModelCopyWith<ReporterModel> get copyWith => _$ReporterModelCopyWithImpl<ReporterModel>(this as ReporterModel, _$identity);

  /// Serializes this ReporterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReporterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'ReporterModel(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $ReporterModelCopyWith<$Res>  {
  factory $ReporterModelCopyWith(ReporterModel value, $Res Function(ReporterModel) _then) = _$ReporterModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatarUrl
});




}
/// @nodoc
class _$ReporterModelCopyWithImpl<$Res>
    implements $ReporterModelCopyWith<$Res> {
  _$ReporterModelCopyWithImpl(this._self, this._then);

  final ReporterModel _self;
  final $Res Function(ReporterModel) _then;

/// Create a copy of ReporterModel
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


/// Adds pattern-matching-related methods to [ReporterModel].
extension ReporterModelPatterns on ReporterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReporterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReporterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReporterModel value)  $default,){
final _that = this;
switch (_that) {
case _ReporterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReporterModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReporterModel() when $default != null:
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
case _ReporterModel() when $default != null:
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
case _ReporterModel():
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
case _ReporterModel() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReporterModel implements ReporterModel {
  const _ReporterModel({required this.id, required this.name, this.avatarUrl});
  factory _ReporterModel.fromJson(Map<String, dynamic> json) => _$ReporterModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatarUrl;

/// Create a copy of ReporterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReporterModelCopyWith<_ReporterModel> get copyWith => __$ReporterModelCopyWithImpl<_ReporterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReporterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReporterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'ReporterModel(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$ReporterModelCopyWith<$Res> implements $ReporterModelCopyWith<$Res> {
  factory _$ReporterModelCopyWith(_ReporterModel value, $Res Function(_ReporterModel) _then) = __$ReporterModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatarUrl
});




}
/// @nodoc
class __$ReporterModelCopyWithImpl<$Res>
    implements _$ReporterModelCopyWith<$Res> {
  __$ReporterModelCopyWithImpl(this._self, this._then);

  final _ReporterModel _self;
  final $Res Function(_ReporterModel) _then;

/// Create a copy of ReporterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,}) {
  return _then(_ReporterModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateReportRequest {

 ReportTargetType get targetType; String get targetId; String get reason;
/// Create a copy of CreateReportRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReportRequestCopyWith<CreateReportRequest> get copyWith => _$CreateReportRequestCopyWithImpl<CreateReportRequest>(this as CreateReportRequest, _$identity);

  /// Serializes this CreateReportRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReportRequest&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,targetType,targetId,reason);

@override
String toString() {
  return 'CreateReportRequest(targetType: $targetType, targetId: $targetId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CreateReportRequestCopyWith<$Res>  {
  factory $CreateReportRequestCopyWith(CreateReportRequest value, $Res Function(CreateReportRequest) _then) = _$CreateReportRequestCopyWithImpl;
@useResult
$Res call({
 ReportTargetType targetType, String targetId, String reason
});




}
/// @nodoc
class _$CreateReportRequestCopyWithImpl<$Res>
    implements $CreateReportRequestCopyWith<$Res> {
  _$CreateReportRequestCopyWithImpl(this._self, this._then);

  final CreateReportRequest _self;
  final $Res Function(CreateReportRequest) _then;

/// Create a copy of CreateReportRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? targetType = null,Object? targetId = null,Object? reason = null,}) {
  return _then(_self.copyWith(
targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ReportTargetType,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReportRequest].
extension CreateReportRequestPatterns on CreateReportRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReportRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReportRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReportRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateReportRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReportRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReportRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportTargetType targetType,  String targetId,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReportRequest() when $default != null:
return $default(_that.targetType,_that.targetId,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportTargetType targetType,  String targetId,  String reason)  $default,) {final _that = this;
switch (_that) {
case _CreateReportRequest():
return $default(_that.targetType,_that.targetId,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportTargetType targetType,  String targetId,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _CreateReportRequest() when $default != null:
return $default(_that.targetType,_that.targetId,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReportRequest implements CreateReportRequest {
  const _CreateReportRequest({required this.targetType, required this.targetId, required this.reason});
  factory _CreateReportRequest.fromJson(Map<String, dynamic> json) => _$CreateReportRequestFromJson(json);

@override final  ReportTargetType targetType;
@override final  String targetId;
@override final  String reason;

/// Create a copy of CreateReportRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReportRequestCopyWith<_CreateReportRequest> get copyWith => __$CreateReportRequestCopyWithImpl<_CreateReportRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReportRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReportRequest&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,targetType,targetId,reason);

@override
String toString() {
  return 'CreateReportRequest(targetType: $targetType, targetId: $targetId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$CreateReportRequestCopyWith<$Res> implements $CreateReportRequestCopyWith<$Res> {
  factory _$CreateReportRequestCopyWith(_CreateReportRequest value, $Res Function(_CreateReportRequest) _then) = __$CreateReportRequestCopyWithImpl;
@override @useResult
$Res call({
 ReportTargetType targetType, String targetId, String reason
});




}
/// @nodoc
class __$CreateReportRequestCopyWithImpl<$Res>
    implements _$CreateReportRequestCopyWith<$Res> {
  __$CreateReportRequestCopyWithImpl(this._self, this._then);

  final _CreateReportRequest _self;
  final $Res Function(_CreateReportRequest) _then;

/// Create a copy of CreateReportRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? targetType = null,Object? targetId = null,Object? reason = null,}) {
  return _then(_CreateReportRequest(
targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ReportTargetType,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateReportResponse {

 bool get success; CreateReportData get data; String get timestamp;
/// Create a copy of CreateReportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReportResponseCopyWith<CreateReportResponse> get copyWith => _$CreateReportResponseCopyWithImpl<CreateReportResponse>(this as CreateReportResponse, _$identity);

  /// Serializes this CreateReportResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CreateReportResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CreateReportResponseCopyWith<$Res>  {
  factory $CreateReportResponseCopyWith(CreateReportResponse value, $Res Function(CreateReportResponse) _then) = _$CreateReportResponseCopyWithImpl;
@useResult
$Res call({
 bool success, CreateReportData data, String timestamp
});


$CreateReportDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CreateReportResponseCopyWithImpl<$Res>
    implements $CreateReportResponseCopyWith<$Res> {
  _$CreateReportResponseCopyWithImpl(this._self, this._then);

  final CreateReportResponse _self;
  final $Res Function(CreateReportResponse) _then;

/// Create a copy of CreateReportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateReportData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CreateReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateReportDataCopyWith<$Res> get data {
  
  return $CreateReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateReportResponse].
extension CreateReportResponsePatterns on CreateReportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReportResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateReportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CreateReportData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReportResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CreateReportData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _CreateReportResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CreateReportData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CreateReportResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReportResponse implements CreateReportResponse {
  const _CreateReportResponse({required this.success, required this.data, required this.timestamp});
  factory _CreateReportResponse.fromJson(Map<String, dynamic> json) => _$CreateReportResponseFromJson(json);

@override final  bool success;
@override final  CreateReportData data;
@override final  String timestamp;

/// Create a copy of CreateReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReportResponseCopyWith<_CreateReportResponse> get copyWith => __$CreateReportResponseCopyWithImpl<_CreateReportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReportResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'CreateReportResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CreateReportResponseCopyWith<$Res> implements $CreateReportResponseCopyWith<$Res> {
  factory _$CreateReportResponseCopyWith(_CreateReportResponse value, $Res Function(_CreateReportResponse) _then) = __$CreateReportResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, CreateReportData data, String timestamp
});


@override $CreateReportDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CreateReportResponseCopyWithImpl<$Res>
    implements _$CreateReportResponseCopyWith<$Res> {
  __$CreateReportResponseCopyWithImpl(this._self, this._then);

  final _CreateReportResponse _self;
  final $Res Function(_CreateReportResponse) _then;

/// Create a copy of CreateReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_CreateReportResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateReportData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreateReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateReportDataCopyWith<$Res> get data {
  
  return $CreateReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreateReportData {

 ReportModel get report; String get message;
/// Create a copy of CreateReportData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReportDataCopyWith<CreateReportData> get copyWith => _$CreateReportDataCopyWithImpl<CreateReportData>(this as CreateReportData, _$identity);

  /// Serializes this CreateReportData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReportData&&(identical(other.report, report) || other.report == report)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,report,message);

@override
String toString() {
  return 'CreateReportData(report: $report, message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateReportDataCopyWith<$Res>  {
  factory $CreateReportDataCopyWith(CreateReportData value, $Res Function(CreateReportData) _then) = _$CreateReportDataCopyWithImpl;
@useResult
$Res call({
 ReportModel report, String message
});


$ReportModelCopyWith<$Res> get report;

}
/// @nodoc
class _$CreateReportDataCopyWithImpl<$Res>
    implements $CreateReportDataCopyWith<$Res> {
  _$CreateReportDataCopyWithImpl(this._self, this._then);

  final CreateReportData _self;
  final $Res Function(CreateReportData) _then;

/// Create a copy of CreateReportData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = null,Object? message = null,}) {
  return _then(_self.copyWith(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CreateReportData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportModelCopyWith<$Res> get report {
  
  return $ReportModelCopyWith<$Res>(_self.report, (value) {
    return _then(_self.copyWith(report: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateReportData].
extension CreateReportDataPatterns on CreateReportData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReportData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReportData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReportData value)  $default,){
final _that = this;
switch (_that) {
case _CreateReportData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReportData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReportData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportModel report,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReportData() when $default != null:
return $default(_that.report,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportModel report,  String message)  $default,) {final _that = this;
switch (_that) {
case _CreateReportData():
return $default(_that.report,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportModel report,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CreateReportData() when $default != null:
return $default(_that.report,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReportData implements CreateReportData {
  const _CreateReportData({required this.report, required this.message});
  factory _CreateReportData.fromJson(Map<String, dynamic> json) => _$CreateReportDataFromJson(json);

@override final  ReportModel report;
@override final  String message;

/// Create a copy of CreateReportData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReportDataCopyWith<_CreateReportData> get copyWith => __$CreateReportDataCopyWithImpl<_CreateReportData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReportDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReportData&&(identical(other.report, report) || other.report == report)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,report,message);

@override
String toString() {
  return 'CreateReportData(report: $report, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateReportDataCopyWith<$Res> implements $CreateReportDataCopyWith<$Res> {
  factory _$CreateReportDataCopyWith(_CreateReportData value, $Res Function(_CreateReportData) _then) = __$CreateReportDataCopyWithImpl;
@override @useResult
$Res call({
 ReportModel report, String message
});


@override $ReportModelCopyWith<$Res> get report;

}
/// @nodoc
class __$CreateReportDataCopyWithImpl<$Res>
    implements _$CreateReportDataCopyWith<$Res> {
  __$CreateReportDataCopyWithImpl(this._self, this._then);

  final _CreateReportData _self;
  final $Res Function(_CreateReportData) _then;

/// Create a copy of CreateReportData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = null,Object? message = null,}) {
  return _then(_CreateReportData(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreateReportData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportModelCopyWith<$Res> get report {
  
  return $ReportModelCopyWith<$Res>(_self.report, (value) {
    return _then(_self.copyWith(report: value));
  });
}
}


/// @nodoc
mixin _$MyReportsResponse {

 bool get success; MyReportsData get data; String get timestamp;
/// Create a copy of MyReportsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyReportsResponseCopyWith<MyReportsResponse> get copyWith => _$MyReportsResponseCopyWithImpl<MyReportsResponse>(this as MyReportsResponse, _$identity);

  /// Serializes this MyReportsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyReportsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'MyReportsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $MyReportsResponseCopyWith<$Res>  {
  factory $MyReportsResponseCopyWith(MyReportsResponse value, $Res Function(MyReportsResponse) _then) = _$MyReportsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, MyReportsData data, String timestamp
});


$MyReportsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$MyReportsResponseCopyWithImpl<$Res>
    implements $MyReportsResponseCopyWith<$Res> {
  _$MyReportsResponseCopyWithImpl(this._self, this._then);

  final MyReportsResponse _self;
  final $Res Function(MyReportsResponse) _then;

/// Create a copy of MyReportsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyReportsData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MyReportsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyReportsDataCopyWith<$Res> get data {
  
  return $MyReportsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyReportsResponse].
extension MyReportsResponsePatterns on MyReportsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyReportsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyReportsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyReportsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyReportsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyReportsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyReportsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  MyReportsData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyReportsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  MyReportsData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _MyReportsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  MyReportsData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _MyReportsResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyReportsResponse implements MyReportsResponse {
  const _MyReportsResponse({required this.success, required this.data, required this.timestamp});
  factory _MyReportsResponse.fromJson(Map<String, dynamic> json) => _$MyReportsResponseFromJson(json);

@override final  bool success;
@override final  MyReportsData data;
@override final  String timestamp;

/// Create a copy of MyReportsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyReportsResponseCopyWith<_MyReportsResponse> get copyWith => __$MyReportsResponseCopyWithImpl<_MyReportsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyReportsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyReportsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'MyReportsResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$MyReportsResponseCopyWith<$Res> implements $MyReportsResponseCopyWith<$Res> {
  factory _$MyReportsResponseCopyWith(_MyReportsResponse value, $Res Function(_MyReportsResponse) _then) = __$MyReportsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, MyReportsData data, String timestamp
});


@override $MyReportsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$MyReportsResponseCopyWithImpl<$Res>
    implements _$MyReportsResponseCopyWith<$Res> {
  __$MyReportsResponseCopyWithImpl(this._self, this._then);

  final _MyReportsResponse _self;
  final $Res Function(_MyReportsResponse) _then;

/// Create a copy of MyReportsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_MyReportsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MyReportsData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MyReportsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyReportsDataCopyWith<$Res> get data {
  
  return $MyReportsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$MyReportsData {

 List<ReportModel> get items; ReportsMeta get meta;
/// Create a copy of MyReportsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyReportsDataCopyWith<MyReportsData> get copyWith => _$MyReportsDataCopyWithImpl<MyReportsData>(this as MyReportsData, _$identity);

  /// Serializes this MyReportsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyReportsData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),meta);

@override
String toString() {
  return 'MyReportsData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $MyReportsDataCopyWith<$Res>  {
  factory $MyReportsDataCopyWith(MyReportsData value, $Res Function(MyReportsData) _then) = _$MyReportsDataCopyWithImpl;
@useResult
$Res call({
 List<ReportModel> items, ReportsMeta meta
});


$ReportsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$MyReportsDataCopyWithImpl<$Res>
    implements $MyReportsDataCopyWith<$Res> {
  _$MyReportsDataCopyWithImpl(this._self, this._then);

  final MyReportsData _self;
  final $Res Function(MyReportsData) _then;

/// Create a copy of MyReportsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReportModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReportsMeta,
  ));
}
/// Create a copy of MyReportsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportsMetaCopyWith<$Res> get meta {
  
  return $ReportsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyReportsData].
extension MyReportsDataPatterns on MyReportsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyReportsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyReportsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyReportsData value)  $default,){
final _that = this;
switch (_that) {
case _MyReportsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyReportsData value)?  $default,){
final _that = this;
switch (_that) {
case _MyReportsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReportModel> items,  ReportsMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyReportsData() when $default != null:
return $default(_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReportModel> items,  ReportsMeta meta)  $default,) {final _that = this;
switch (_that) {
case _MyReportsData():
return $default(_that.items,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReportModel> items,  ReportsMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _MyReportsData() when $default != null:
return $default(_that.items,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyReportsData implements MyReportsData {
  const _MyReportsData({required final  List<ReportModel> items, required this.meta}): _items = items;
  factory _MyReportsData.fromJson(Map<String, dynamic> json) => _$MyReportsDataFromJson(json);

 final  List<ReportModel> _items;
@override List<ReportModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  ReportsMeta meta;

/// Create a copy of MyReportsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyReportsDataCopyWith<_MyReportsData> get copyWith => __$MyReportsDataCopyWithImpl<_MyReportsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyReportsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyReportsData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),meta);

@override
String toString() {
  return 'MyReportsData(items: $items, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$MyReportsDataCopyWith<$Res> implements $MyReportsDataCopyWith<$Res> {
  factory _$MyReportsDataCopyWith(_MyReportsData value, $Res Function(_MyReportsData) _then) = __$MyReportsDataCopyWithImpl;
@override @useResult
$Res call({
 List<ReportModel> items, ReportsMeta meta
});


@override $ReportsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$MyReportsDataCopyWithImpl<$Res>
    implements _$MyReportsDataCopyWith<$Res> {
  __$MyReportsDataCopyWithImpl(this._self, this._then);

  final _MyReportsData _self;
  final $Res Function(_MyReportsData) _then;

/// Create a copy of MyReportsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? meta = null,}) {
  return _then(_MyReportsData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReportModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReportsMeta,
  ));
}

/// Create a copy of MyReportsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportsMetaCopyWith<$Res> get meta {
  
  return $ReportsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ReportsMeta {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of ReportsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsMetaCopyWith<ReportsMeta> get copyWith => _$ReportsMetaCopyWithImpl<ReportsMeta>(this as ReportsMeta, _$identity);

  /// Serializes this ReportsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'ReportsMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ReportsMetaCopyWith<$Res>  {
  factory $ReportsMetaCopyWith(ReportsMeta value, $Res Function(ReportsMeta) _then) = _$ReportsMetaCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$ReportsMetaCopyWithImpl<$Res>
    implements $ReportsMetaCopyWith<$Res> {
  _$ReportsMetaCopyWithImpl(this._self, this._then);

  final ReportsMeta _self;
  final $Res Function(ReportsMeta) _then;

/// Create a copy of ReportsMeta
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


/// Adds pattern-matching-related methods to [ReportsMeta].
extension ReportsMetaPatterns on ReportsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportsMeta value)  $default,){
final _that = this;
switch (_that) {
case _ReportsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ReportsMeta() when $default != null:
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
case _ReportsMeta() when $default != null:
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
case _ReportsMeta():
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
case _ReportsMeta() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportsMeta implements ReportsMeta {
  const _ReportsMeta({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _ReportsMeta.fromJson(Map<String, dynamic> json) => _$ReportsMetaFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  int totalPages;

/// Create a copy of ReportsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportsMetaCopyWith<_ReportsMeta> get copyWith => __$ReportsMetaCopyWithImpl<_ReportsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportsMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'ReportsMeta(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ReportsMetaCopyWith<$Res> implements $ReportsMetaCopyWith<$Res> {
  factory _$ReportsMetaCopyWith(_ReportsMeta value, $Res Function(_ReportsMeta) _then) = __$ReportsMetaCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$ReportsMetaCopyWithImpl<$Res>
    implements _$ReportsMetaCopyWith<$Res> {
  __$ReportsMetaCopyWithImpl(this._self, this._then);

  final _ReportsMeta _self;
  final $Res Function(_ReportsMeta) _then;

/// Create a copy of ReportsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_ReportsMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
