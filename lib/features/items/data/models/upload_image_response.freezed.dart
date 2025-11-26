// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadImageResponse {

 bool get success; UploadedImageData get data; String get timestamp;
/// Create a copy of UploadImageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadImageResponseCopyWith<UploadImageResponse> get copyWith => _$UploadImageResponseCopyWithImpl<UploadImageResponse>(this as UploadImageResponse, _$identity);

  /// Serializes this UploadImageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadImageResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'UploadImageResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $UploadImageResponseCopyWith<$Res>  {
  factory $UploadImageResponseCopyWith(UploadImageResponse value, $Res Function(UploadImageResponse) _then) = _$UploadImageResponseCopyWithImpl;
@useResult
$Res call({
 bool success, UploadedImageData data, String timestamp
});


$UploadedImageDataCopyWith<$Res> get data;

}
/// @nodoc
class _$UploadImageResponseCopyWithImpl<$Res>
    implements $UploadImageResponseCopyWith<$Res> {
  _$UploadImageResponseCopyWithImpl(this._self, this._then);

  final UploadImageResponse _self;
  final $Res Function(UploadImageResponse) _then;

/// Create a copy of UploadImageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UploadedImageData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UploadImageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UploadedImageDataCopyWith<$Res> get data {
  
  return $UploadedImageDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UploadImageResponse].
extension UploadImageResponsePatterns on UploadImageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadImageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadImageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadImageResponse value)  $default,){
final _that = this;
switch (_that) {
case _UploadImageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadImageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UploadImageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UploadedImageData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadImageResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UploadedImageData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _UploadImageResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UploadedImageData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _UploadImageResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadImageResponse implements UploadImageResponse {
  const _UploadImageResponse({required this.success, required this.data, required this.timestamp});
  factory _UploadImageResponse.fromJson(Map<String, dynamic> json) => _$UploadImageResponseFromJson(json);

@override final  bool success;
@override final  UploadedImageData data;
@override final  String timestamp;

/// Create a copy of UploadImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadImageResponseCopyWith<_UploadImageResponse> get copyWith => __$UploadImageResponseCopyWithImpl<_UploadImageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadImageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadImageResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'UploadImageResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$UploadImageResponseCopyWith<$Res> implements $UploadImageResponseCopyWith<$Res> {
  factory _$UploadImageResponseCopyWith(_UploadImageResponse value, $Res Function(_UploadImageResponse) _then) = __$UploadImageResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, UploadedImageData data, String timestamp
});


@override $UploadedImageDataCopyWith<$Res> get data;

}
/// @nodoc
class __$UploadImageResponseCopyWithImpl<$Res>
    implements _$UploadImageResponseCopyWith<$Res> {
  __$UploadImageResponseCopyWithImpl(this._self, this._then);

  final _UploadImageResponse _self;
  final $Res Function(_UploadImageResponse) _then;

/// Create a copy of UploadImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_UploadImageResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UploadedImageData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UploadImageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UploadedImageDataCopyWith<$Res> get data {
  
  return $UploadedImageDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UploadedImageData {

 String get url; String get publicId; int get width; int get height; String get format; int get size;
/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadedImageDataCopyWith<UploadedImageData> get copyWith => _$UploadedImageDataCopyWithImpl<UploadedImageData>(this as UploadedImageData, _$identity);

  /// Serializes this UploadedImageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadedImageData&&(identical(other.url, url) || other.url == url)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.format, format) || other.format == format)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,publicId,width,height,format,size);

@override
String toString() {
  return 'UploadedImageData(url: $url, publicId: $publicId, width: $width, height: $height, format: $format, size: $size)';
}


}

/// @nodoc
abstract mixin class $UploadedImageDataCopyWith<$Res>  {
  factory $UploadedImageDataCopyWith(UploadedImageData value, $Res Function(UploadedImageData) _then) = _$UploadedImageDataCopyWithImpl;
@useResult
$Res call({
 String url, String publicId, int width, int height, String format, int size
});




}
/// @nodoc
class _$UploadedImageDataCopyWithImpl<$Res>
    implements $UploadedImageDataCopyWith<$Res> {
  _$UploadedImageDataCopyWithImpl(this._self, this._then);

  final UploadedImageData _self;
  final $Res Function(UploadedImageData) _then;

/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? publicId = null,Object? width = null,Object? height = null,Object? format = null,Object? size = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadedImageData].
extension UploadedImageDataPatterns on UploadedImageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadedImageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadedImageData value)  $default,){
final _that = this;
switch (_that) {
case _UploadedImageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadedImageData value)?  $default,){
final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String publicId,  int width,  int height,  String format,  int size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
return $default(_that.url,_that.publicId,_that.width,_that.height,_that.format,_that.size);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String publicId,  int width,  int height,  String format,  int size)  $default,) {final _that = this;
switch (_that) {
case _UploadedImageData():
return $default(_that.url,_that.publicId,_that.width,_that.height,_that.format,_that.size);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String publicId,  int width,  int height,  String format,  int size)?  $default,) {final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
return $default(_that.url,_that.publicId,_that.width,_that.height,_that.format,_that.size);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadedImageData implements UploadedImageData {
  const _UploadedImageData({required this.url, required this.publicId, required this.width, required this.height, required this.format, required this.size});
  factory _UploadedImageData.fromJson(Map<String, dynamic> json) => _$UploadedImageDataFromJson(json);

@override final  String url;
@override final  String publicId;
@override final  int width;
@override final  int height;
@override final  String format;
@override final  int size;

/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadedImageDataCopyWith<_UploadedImageData> get copyWith => __$UploadedImageDataCopyWithImpl<_UploadedImageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadedImageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadedImageData&&(identical(other.url, url) || other.url == url)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.format, format) || other.format == format)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,publicId,width,height,format,size);

@override
String toString() {
  return 'UploadedImageData(url: $url, publicId: $publicId, width: $width, height: $height, format: $format, size: $size)';
}


}

/// @nodoc
abstract mixin class _$UploadedImageDataCopyWith<$Res> implements $UploadedImageDataCopyWith<$Res> {
  factory _$UploadedImageDataCopyWith(_UploadedImageData value, $Res Function(_UploadedImageData) _then) = __$UploadedImageDataCopyWithImpl;
@override @useResult
$Res call({
 String url, String publicId, int width, int height, String format, int size
});




}
/// @nodoc
class __$UploadedImageDataCopyWithImpl<$Res>
    implements _$UploadedImageDataCopyWith<$Res> {
  __$UploadedImageDataCopyWithImpl(this._self, this._then);

  final _UploadedImageData _self;
  final $Res Function(_UploadedImageData) _then;

/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? publicId = null,Object? width = null,Object? height = null,Object? format = null,Object? size = null,}) {
  return _then(_UploadedImageData(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$UploadImagesResponse {

 bool get success; UploadedImagesData get data; String get timestamp;
/// Create a copy of UploadImagesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadImagesResponseCopyWith<UploadImagesResponse> get copyWith => _$UploadImagesResponseCopyWithImpl<UploadImagesResponse>(this as UploadImagesResponse, _$identity);

  /// Serializes this UploadImagesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadImagesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'UploadImagesResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $UploadImagesResponseCopyWith<$Res>  {
  factory $UploadImagesResponseCopyWith(UploadImagesResponse value, $Res Function(UploadImagesResponse) _then) = _$UploadImagesResponseCopyWithImpl;
@useResult
$Res call({
 bool success, UploadedImagesData data, String timestamp
});


$UploadedImagesDataCopyWith<$Res> get data;

}
/// @nodoc
class _$UploadImagesResponseCopyWithImpl<$Res>
    implements $UploadImagesResponseCopyWith<$Res> {
  _$UploadImagesResponseCopyWithImpl(this._self, this._then);

  final UploadImagesResponse _self;
  final $Res Function(UploadImagesResponse) _then;

/// Create a copy of UploadImagesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UploadedImagesData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UploadImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UploadedImagesDataCopyWith<$Res> get data {
  
  return $UploadedImagesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UploadImagesResponse].
extension UploadImagesResponsePatterns on UploadImagesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadImagesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadImagesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadImagesResponse value)  $default,){
final _that = this;
switch (_that) {
case _UploadImagesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadImagesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UploadImagesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UploadedImagesData data,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadImagesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UploadedImagesData data,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _UploadImagesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UploadedImagesData data,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _UploadImagesResponse() when $default != null:
return $default(_that.success,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadImagesResponse implements UploadImagesResponse {
  const _UploadImagesResponse({required this.success, required this.data, required this.timestamp});
  factory _UploadImagesResponse.fromJson(Map<String, dynamic> json) => _$UploadImagesResponseFromJson(json);

@override final  bool success;
@override final  UploadedImagesData data;
@override final  String timestamp;

/// Create a copy of UploadImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadImagesResponseCopyWith<_UploadImagesResponse> get copyWith => __$UploadImagesResponseCopyWithImpl<_UploadImagesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadImagesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadImagesResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,timestamp);

@override
String toString() {
  return 'UploadImagesResponse(success: $success, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$UploadImagesResponseCopyWith<$Res> implements $UploadImagesResponseCopyWith<$Res> {
  factory _$UploadImagesResponseCopyWith(_UploadImagesResponse value, $Res Function(_UploadImagesResponse) _then) = __$UploadImagesResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, UploadedImagesData data, String timestamp
});


@override $UploadedImagesDataCopyWith<$Res> get data;

}
/// @nodoc
class __$UploadImagesResponseCopyWithImpl<$Res>
    implements _$UploadImagesResponseCopyWith<$Res> {
  __$UploadImagesResponseCopyWithImpl(this._self, this._then);

  final _UploadImagesResponse _self;
  final $Res Function(_UploadImagesResponse) _then;

/// Create a copy of UploadImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? timestamp = null,}) {
  return _then(_UploadImagesResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UploadedImagesData,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UploadImagesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UploadedImagesDataCopyWith<$Res> get data {
  
  return $UploadedImagesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UploadedImagesData {

 List<UploadedImageData> get images;
/// Create a copy of UploadedImagesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadedImagesDataCopyWith<UploadedImagesData> get copyWith => _$UploadedImagesDataCopyWithImpl<UploadedImagesData>(this as UploadedImagesData, _$identity);

  /// Serializes this UploadedImagesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadedImagesData&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'UploadedImagesData(images: $images)';
}


}

/// @nodoc
abstract mixin class $UploadedImagesDataCopyWith<$Res>  {
  factory $UploadedImagesDataCopyWith(UploadedImagesData value, $Res Function(UploadedImagesData) _then) = _$UploadedImagesDataCopyWithImpl;
@useResult
$Res call({
 List<UploadedImageData> images
});




}
/// @nodoc
class _$UploadedImagesDataCopyWithImpl<$Res>
    implements $UploadedImagesDataCopyWith<$Res> {
  _$UploadedImagesDataCopyWithImpl(this._self, this._then);

  final UploadedImagesData _self;
  final $Res Function(UploadedImagesData) _then;

/// Create a copy of UploadedImagesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,}) {
  return _then(_self.copyWith(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<UploadedImageData>,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadedImagesData].
extension UploadedImagesDataPatterns on UploadedImagesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadedImagesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadedImagesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadedImagesData value)  $default,){
final _that = this;
switch (_that) {
case _UploadedImagesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadedImagesData value)?  $default,){
final _that = this;
switch (_that) {
case _UploadedImagesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UploadedImageData> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadedImagesData() when $default != null:
return $default(_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UploadedImageData> images)  $default,) {final _that = this;
switch (_that) {
case _UploadedImagesData():
return $default(_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UploadedImageData> images)?  $default,) {final _that = this;
switch (_that) {
case _UploadedImagesData() when $default != null:
return $default(_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadedImagesData implements UploadedImagesData {
  const _UploadedImagesData({required final  List<UploadedImageData> images}): _images = images;
  factory _UploadedImagesData.fromJson(Map<String, dynamic> json) => _$UploadedImagesDataFromJson(json);

 final  List<UploadedImageData> _images;
@override List<UploadedImageData> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of UploadedImagesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadedImagesDataCopyWith<_UploadedImagesData> get copyWith => __$UploadedImagesDataCopyWithImpl<_UploadedImagesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadedImagesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadedImagesData&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'UploadedImagesData(images: $images)';
}


}

/// @nodoc
abstract mixin class _$UploadedImagesDataCopyWith<$Res> implements $UploadedImagesDataCopyWith<$Res> {
  factory _$UploadedImagesDataCopyWith(_UploadedImagesData value, $Res Function(_UploadedImagesData) _then) = __$UploadedImagesDataCopyWithImpl;
@override @useResult
$Res call({
 List<UploadedImageData> images
});




}
/// @nodoc
class __$UploadedImagesDataCopyWithImpl<$Res>
    implements _$UploadedImagesDataCopyWith<$Res> {
  __$UploadedImagesDataCopyWithImpl(this._self, this._then);

  final _UploadedImagesData _self;
  final $Res Function(_UploadedImagesData) _then;

/// Create a copy of UploadedImagesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? images = null,}) {
  return _then(_UploadedImagesData(
images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<UploadedImageData>,
  ));
}


}

// dart format on
