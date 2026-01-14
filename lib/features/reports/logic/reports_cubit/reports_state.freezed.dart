// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState()';
}


}

/// @nodoc
class $ReportsStateCopyWith<$Res>  {
$ReportsStateCopyWith(ReportsState _, $Res Function(ReportsState) __);
}


/// Adds pattern-matching-related methods to [ReportsState].
extension ReportsStatePatterns on ReportsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _CreatingReport value)?  creatingReport,TResult Function( _ReportCreated value)?  reportCreated,TResult Function( _LoadingReports value)?  loadingReports,TResult Function( _LoadingMoreReports value)?  loadingMoreReports,TResult Function( _ReportsLoaded value)?  reportsLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CreatingReport() when creatingReport != null:
return creatingReport(_that);case _ReportCreated() when reportCreated != null:
return reportCreated(_that);case _LoadingReports() when loadingReports != null:
return loadingReports(_that);case _LoadingMoreReports() when loadingMoreReports != null:
return loadingMoreReports(_that);case _ReportsLoaded() when reportsLoaded != null:
return reportsLoaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _CreatingReport value)  creatingReport,required TResult Function( _ReportCreated value)  reportCreated,required TResult Function( _LoadingReports value)  loadingReports,required TResult Function( _LoadingMoreReports value)  loadingMoreReports,required TResult Function( _ReportsLoaded value)  reportsLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _CreatingReport():
return creatingReport(_that);case _ReportCreated():
return reportCreated(_that);case _LoadingReports():
return loadingReports(_that);case _LoadingMoreReports():
return loadingMoreReports(_that);case _ReportsLoaded():
return reportsLoaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _CreatingReport value)?  creatingReport,TResult? Function( _ReportCreated value)?  reportCreated,TResult? Function( _LoadingReports value)?  loadingReports,TResult? Function( _LoadingMoreReports value)?  loadingMoreReports,TResult? Function( _ReportsLoaded value)?  reportsLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _CreatingReport() when creatingReport != null:
return creatingReport(_that);case _ReportCreated() when reportCreated != null:
return reportCreated(_that);case _LoadingReports() when loadingReports != null:
return loadingReports(_that);case _LoadingMoreReports() when loadingMoreReports != null:
return loadingMoreReports(_that);case _ReportsLoaded() when reportsLoaded != null:
return reportsLoaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  creatingReport,TResult Function( ReportModel report,  String message)?  reportCreated,TResult Function()?  loadingReports,TResult Function( List<ReportModel> currentReports)?  loadingMoreReports,TResult Function( List<ReportModel> reports,  bool hasMorePages)?  reportsLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CreatingReport() when creatingReport != null:
return creatingReport();case _ReportCreated() when reportCreated != null:
return reportCreated(_that.report,_that.message);case _LoadingReports() when loadingReports != null:
return loadingReports();case _LoadingMoreReports() when loadingMoreReports != null:
return loadingMoreReports(_that.currentReports);case _ReportsLoaded() when reportsLoaded != null:
return reportsLoaded(_that.reports,_that.hasMorePages);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  creatingReport,required TResult Function( ReportModel report,  String message)  reportCreated,required TResult Function()  loadingReports,required TResult Function( List<ReportModel> currentReports)  loadingMoreReports,required TResult Function( List<ReportModel> reports,  bool hasMorePages)  reportsLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _CreatingReport():
return creatingReport();case _ReportCreated():
return reportCreated(_that.report,_that.message);case _LoadingReports():
return loadingReports();case _LoadingMoreReports():
return loadingMoreReports(_that.currentReports);case _ReportsLoaded():
return reportsLoaded(_that.reports,_that.hasMorePages);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  creatingReport,TResult? Function( ReportModel report,  String message)?  reportCreated,TResult? Function()?  loadingReports,TResult? Function( List<ReportModel> currentReports)?  loadingMoreReports,TResult? Function( List<ReportModel> reports,  bool hasMorePages)?  reportsLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _CreatingReport() when creatingReport != null:
return creatingReport();case _ReportCreated() when reportCreated != null:
return reportCreated(_that.report,_that.message);case _LoadingReports() when loadingReports != null:
return loadingReports();case _LoadingMoreReports() when loadingMoreReports != null:
return loadingMoreReports(_that.currentReports);case _ReportsLoaded() when reportsLoaded != null:
return reportsLoaded(_that.reports,_that.hasMorePages);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ReportsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState.initial()';
}


}




/// @nodoc


class _CreatingReport implements ReportsState {
  const _CreatingReport();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatingReport);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState.creatingReport()';
}


}




/// @nodoc


class _ReportCreated implements ReportsState {
  const _ReportCreated({required this.report, required this.message});
  

 final  ReportModel report;
 final  String message;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCreatedCopyWith<_ReportCreated> get copyWith => __$ReportCreatedCopyWithImpl<_ReportCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportCreated&&(identical(other.report, report) || other.report == report)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,report,message);

@override
String toString() {
  return 'ReportsState.reportCreated(report: $report, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReportCreatedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$ReportCreatedCopyWith(_ReportCreated value, $Res Function(_ReportCreated) _then) = __$ReportCreatedCopyWithImpl;
@useResult
$Res call({
 ReportModel report, String message
});


$ReportModelCopyWith<$Res> get report;

}
/// @nodoc
class __$ReportCreatedCopyWithImpl<$Res>
    implements _$ReportCreatedCopyWith<$Res> {
  __$ReportCreatedCopyWithImpl(this._self, this._then);

  final _ReportCreated _self;
  final $Res Function(_ReportCreated) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? report = null,Object? message = null,}) {
  return _then(_ReportCreated(
report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ReportsState
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


class _LoadingReports implements ReportsState {
  const _LoadingReports();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingReports);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsState.loadingReports()';
}


}




/// @nodoc


class _LoadingMoreReports implements ReportsState {
  const _LoadingMoreReports(final  List<ReportModel> currentReports): _currentReports = currentReports;
  

 final  List<ReportModel> _currentReports;
 List<ReportModel> get currentReports {
  if (_currentReports is EqualUnmodifiableListView) return _currentReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentReports);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingMoreReportsCopyWith<_LoadingMoreReports> get copyWith => __$LoadingMoreReportsCopyWithImpl<_LoadingMoreReports>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingMoreReports&&const DeepCollectionEquality().equals(other._currentReports, _currentReports));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currentReports));

@override
String toString() {
  return 'ReportsState.loadingMoreReports(currentReports: $currentReports)';
}


}

/// @nodoc
abstract mixin class _$LoadingMoreReportsCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$LoadingMoreReportsCopyWith(_LoadingMoreReports value, $Res Function(_LoadingMoreReports) _then) = __$LoadingMoreReportsCopyWithImpl;
@useResult
$Res call({
 List<ReportModel> currentReports
});




}
/// @nodoc
class __$LoadingMoreReportsCopyWithImpl<$Res>
    implements _$LoadingMoreReportsCopyWith<$Res> {
  __$LoadingMoreReportsCopyWithImpl(this._self, this._then);

  final _LoadingMoreReports _self;
  final $Res Function(_LoadingMoreReports) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentReports = null,}) {
  return _then(_LoadingMoreReports(
null == currentReports ? _self._currentReports : currentReports // ignore: cast_nullable_to_non_nullable
as List<ReportModel>,
  ));
}


}

/// @nodoc


class _ReportsLoaded implements ReportsState {
  const _ReportsLoaded({required final  List<ReportModel> reports, required this.hasMorePages}): _reports = reports;
  

 final  List<ReportModel> _reports;
 List<ReportModel> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}

 final  bool hasMorePages;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportsLoadedCopyWith<_ReportsLoaded> get copyWith => __$ReportsLoadedCopyWithImpl<_ReportsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportsLoaded&&const DeepCollectionEquality().equals(other._reports, _reports)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reports),hasMorePages);

@override
String toString() {
  return 'ReportsState.reportsLoaded(reports: $reports, hasMorePages: $hasMorePages)';
}


}

/// @nodoc
abstract mixin class _$ReportsLoadedCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$ReportsLoadedCopyWith(_ReportsLoaded value, $Res Function(_ReportsLoaded) _then) = __$ReportsLoadedCopyWithImpl;
@useResult
$Res call({
 List<ReportModel> reports, bool hasMorePages
});




}
/// @nodoc
class __$ReportsLoadedCopyWithImpl<$Res>
    implements _$ReportsLoadedCopyWith<$Res> {
  __$ReportsLoadedCopyWithImpl(this._self, this._then);

  final _ReportsLoaded _self;
  final $Res Function(_ReportsLoaded) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reports = null,Object? hasMorePages = null,}) {
  return _then(_ReportsLoaded(
reports: null == reports ? _self._reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportModel>,hasMorePages: null == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements ReportsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReportsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
