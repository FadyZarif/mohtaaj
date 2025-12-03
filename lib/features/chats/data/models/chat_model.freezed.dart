// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatModel {

 String get id; String get type; String? get itemId; String? get requestId; String get buyerId; String get sellerId; String? get lastMsg; MessageType get lastMsgType; int get unreadCountBuyer; int get unreadCountSeller; DateTime get createdAt; DateTime get updatedAt; ChatItem? get item; ChatUser get buyer; ChatUser get seller; int? get unreadCount;
/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatModelCopyWith<ChatModel> get copyWith => _$ChatModelCopyWithImpl<ChatModel>(this as ChatModel, _$identity);

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.lastMsg, lastMsg) || other.lastMsg == lastMsg)&&(identical(other.lastMsgType, lastMsgType) || other.lastMsgType == lastMsgType)&&(identical(other.unreadCountBuyer, unreadCountBuyer) || other.unreadCountBuyer == unreadCountBuyer)&&(identical(other.unreadCountSeller, unreadCountSeller) || other.unreadCountSeller == unreadCountSeller)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.item, item) || other.item == item)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,itemId,requestId,buyerId,sellerId,lastMsg,lastMsgType,unreadCountBuyer,unreadCountSeller,createdAt,updatedAt,item,buyer,seller,unreadCount);

@override
String toString() {
  return 'ChatModel(id: $id, type: $type, itemId: $itemId, requestId: $requestId, buyerId: $buyerId, sellerId: $sellerId, lastMsg: $lastMsg, lastMsgType: $lastMsgType, unreadCountBuyer: $unreadCountBuyer, unreadCountSeller: $unreadCountSeller, createdAt: $createdAt, updatedAt: $updatedAt, item: $item, buyer: $buyer, seller: $seller, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ChatModelCopyWith<$Res>  {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) _then) = _$ChatModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String? itemId, String? requestId, String buyerId, String sellerId, String? lastMsg, MessageType lastMsgType, int unreadCountBuyer, int unreadCountSeller, DateTime createdAt, DateTime updatedAt, ChatItem? item, ChatUser buyer, ChatUser seller, int? unreadCount
});


$ChatItemCopyWith<$Res>? get item;$ChatUserCopyWith<$Res> get buyer;$ChatUserCopyWith<$Res> get seller;

}
/// @nodoc
class _$ChatModelCopyWithImpl<$Res>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._self, this._then);

  final ChatModel _self;
  final $Res Function(ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? itemId = freezed,Object? requestId = freezed,Object? buyerId = null,Object? sellerId = null,Object? lastMsg = freezed,Object? lastMsgType = null,Object? unreadCountBuyer = null,Object? unreadCountSeller = null,Object? createdAt = null,Object? updatedAt = null,Object? item = freezed,Object? buyer = null,Object? seller = null,Object? unreadCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,lastMsg: freezed == lastMsg ? _self.lastMsg : lastMsg // ignore: cast_nullable_to_non_nullable
as String?,lastMsgType: null == lastMsgType ? _self.lastMsgType : lastMsgType // ignore: cast_nullable_to_non_nullable
as MessageType,unreadCountBuyer: null == unreadCountBuyer ? _self.unreadCountBuyer : unreadCountBuyer // ignore: cast_nullable_to_non_nullable
as int,unreadCountSeller: null == unreadCountSeller ? _self.unreadCountSeller : unreadCountSeller // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ChatItem?,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as ChatUser,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ChatUser,unreadCount: freezed == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatItemCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ChatItemCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatUserCopyWith<$Res> get buyer {
  
  return $ChatUserCopyWith<$Res>(_self.buyer, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatUserCopyWith<$Res> get seller {
  
  return $ChatUserCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatModel].
extension ChatModelPatterns on ChatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String? itemId,  String? requestId,  String buyerId,  String sellerId,  String? lastMsg,  MessageType lastMsgType,  int unreadCountBuyer,  int unreadCountSeller,  DateTime createdAt,  DateTime updatedAt,  ChatItem? item,  ChatUser buyer,  ChatUser seller,  int? unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that.id,_that.type,_that.itemId,_that.requestId,_that.buyerId,_that.sellerId,_that.lastMsg,_that.lastMsgType,_that.unreadCountBuyer,_that.unreadCountSeller,_that.createdAt,_that.updatedAt,_that.item,_that.buyer,_that.seller,_that.unreadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String? itemId,  String? requestId,  String buyerId,  String sellerId,  String? lastMsg,  MessageType lastMsgType,  int unreadCountBuyer,  int unreadCountSeller,  DateTime createdAt,  DateTime updatedAt,  ChatItem? item,  ChatUser buyer,  ChatUser seller,  int? unreadCount)  $default,) {final _that = this;
switch (_that) {
case _ChatModel():
return $default(_that.id,_that.type,_that.itemId,_that.requestId,_that.buyerId,_that.sellerId,_that.lastMsg,_that.lastMsgType,_that.unreadCountBuyer,_that.unreadCountSeller,_that.createdAt,_that.updatedAt,_that.item,_that.buyer,_that.seller,_that.unreadCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String? itemId,  String? requestId,  String buyerId,  String sellerId,  String? lastMsg,  MessageType lastMsgType,  int unreadCountBuyer,  int unreadCountSeller,  DateTime createdAt,  DateTime updatedAt,  ChatItem? item,  ChatUser buyer,  ChatUser seller,  int? unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that.id,_that.type,_that.itemId,_that.requestId,_that.buyerId,_that.sellerId,_that.lastMsg,_that.lastMsgType,_that.unreadCountBuyer,_that.unreadCountSeller,_that.createdAt,_that.updatedAt,_that.item,_that.buyer,_that.seller,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatModel implements ChatModel {
  const _ChatModel({required this.id, required this.type, this.itemId, this.requestId, required this.buyerId, required this.sellerId, this.lastMsg, this.lastMsgType = MessageType.text, this.unreadCountBuyer = 0, this.unreadCountSeller = 0, required this.createdAt, required this.updatedAt, this.item, required this.buyer, required this.seller, this.unreadCount});
  factory _ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);

@override final  String id;
@override final  String type;
@override final  String? itemId;
@override final  String? requestId;
@override final  String buyerId;
@override final  String sellerId;
@override final  String? lastMsg;
@override@JsonKey() final  MessageType lastMsgType;
@override@JsonKey() final  int unreadCountBuyer;
@override@JsonKey() final  int unreadCountSeller;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  ChatItem? item;
@override final  ChatUser buyer;
@override final  ChatUser seller;
@override final  int? unreadCount;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatModelCopyWith<_ChatModel> get copyWith => __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.lastMsg, lastMsg) || other.lastMsg == lastMsg)&&(identical(other.lastMsgType, lastMsgType) || other.lastMsgType == lastMsgType)&&(identical(other.unreadCountBuyer, unreadCountBuyer) || other.unreadCountBuyer == unreadCountBuyer)&&(identical(other.unreadCountSeller, unreadCountSeller) || other.unreadCountSeller == unreadCountSeller)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.item, item) || other.item == item)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,itemId,requestId,buyerId,sellerId,lastMsg,lastMsgType,unreadCountBuyer,unreadCountSeller,createdAt,updatedAt,item,buyer,seller,unreadCount);

@override
String toString() {
  return 'ChatModel(id: $id, type: $type, itemId: $itemId, requestId: $requestId, buyerId: $buyerId, sellerId: $sellerId, lastMsg: $lastMsg, lastMsgType: $lastMsgType, unreadCountBuyer: $unreadCountBuyer, unreadCountSeller: $unreadCountSeller, createdAt: $createdAt, updatedAt: $updatedAt, item: $item, buyer: $buyer, seller: $seller, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(_ChatModel value, $Res Function(_ChatModel) _then) = __$ChatModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String? itemId, String? requestId, String buyerId, String sellerId, String? lastMsg, MessageType lastMsgType, int unreadCountBuyer, int unreadCountSeller, DateTime createdAt, DateTime updatedAt, ChatItem? item, ChatUser buyer, ChatUser seller, int? unreadCount
});


@override $ChatItemCopyWith<$Res>? get item;@override $ChatUserCopyWith<$Res> get buyer;@override $ChatUserCopyWith<$Res> get seller;

}
/// @nodoc
class __$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(this._self, this._then);

  final _ChatModel _self;
  final $Res Function(_ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? itemId = freezed,Object? requestId = freezed,Object? buyerId = null,Object? sellerId = null,Object? lastMsg = freezed,Object? lastMsgType = null,Object? unreadCountBuyer = null,Object? unreadCountSeller = null,Object? createdAt = null,Object? updatedAt = null,Object? item = freezed,Object? buyer = null,Object? seller = null,Object? unreadCount = freezed,}) {
  return _then(_ChatModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,lastMsg: freezed == lastMsg ? _self.lastMsg : lastMsg // ignore: cast_nullable_to_non_nullable
as String?,lastMsgType: null == lastMsgType ? _self.lastMsgType : lastMsgType // ignore: cast_nullable_to_non_nullable
as MessageType,unreadCountBuyer: null == unreadCountBuyer ? _self.unreadCountBuyer : unreadCountBuyer // ignore: cast_nullable_to_non_nullable
as int,unreadCountSeller: null == unreadCountSeller ? _self.unreadCountSeller : unreadCountSeller // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ChatItem?,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as ChatUser,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ChatUser,unreadCount: freezed == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatItemCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ChatItemCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatUserCopyWith<$Res> get buyer {
  
  return $ChatUserCopyWith<$Res>(_self.buyer, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatUserCopyWith<$Res> get seller {
  
  return $ChatUserCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// @nodoc
mixin _$ChatItem {

 String get id; String get title; List<String> get images; String get status;
/// Create a copy of ChatItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatItemCopyWith<ChatItem> get copyWith => _$ChatItemCopyWithImpl<ChatItem>(this as ChatItem, _$identity);

  /// Serializes this ChatItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(images),status);

@override
String toString() {
  return 'ChatItem(id: $id, title: $title, images: $images, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChatItemCopyWith<$Res>  {
  factory $ChatItemCopyWith(ChatItem value, $Res Function(ChatItem) _then) = _$ChatItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<String> images, String status
});




}
/// @nodoc
class _$ChatItemCopyWithImpl<$Res>
    implements $ChatItemCopyWith<$Res> {
  _$ChatItemCopyWithImpl(this._self, this._then);

  final ChatItem _self;
  final $Res Function(ChatItem) _then;

/// Create a copy of ChatItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? images = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatItem].
extension ChatItemPatterns on ChatItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatItem value)  $default,){
final _that = this;
switch (_that) {
case _ChatItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChatItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<String> images,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatItem() when $default != null:
return $default(_that.id,_that.title,_that.images,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<String> images,  String status)  $default,) {final _that = this;
switch (_that) {
case _ChatItem():
return $default(_that.id,_that.title,_that.images,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<String> images,  String status)?  $default,) {final _that = this;
switch (_that) {
case _ChatItem() when $default != null:
return $default(_that.id,_that.title,_that.images,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatItem implements ChatItem {
  const _ChatItem({required this.id, required this.title, required final  List<String> images, required this.status}): _images = images;
  factory _ChatItem.fromJson(Map<String, dynamic> json) => _$ChatItemFromJson(json);

@override final  String id;
@override final  String title;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String status;

/// Create a copy of ChatItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatItemCopyWith<_ChatItem> get copyWith => __$ChatItemCopyWithImpl<_ChatItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_images),status);

@override
String toString() {
  return 'ChatItem(id: $id, title: $title, images: $images, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChatItemCopyWith<$Res> implements $ChatItemCopyWith<$Res> {
  factory _$ChatItemCopyWith(_ChatItem value, $Res Function(_ChatItem) _then) = __$ChatItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<String> images, String status
});




}
/// @nodoc
class __$ChatItemCopyWithImpl<$Res>
    implements _$ChatItemCopyWith<$Res> {
  __$ChatItemCopyWithImpl(this._self, this._then);

  final _ChatItem _self;
  final $Res Function(_ChatItem) _then;

/// Create a copy of ChatItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? images = null,Object? status = null,}) {
  return _then(_ChatItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChatUser {

 String get id; String get name; String? get avatarUrl; bool get isVerified; DateTime? get lastActive;
/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatUserCopyWith<ChatUser> get copyWith => _$ChatUserCopyWithImpl<ChatUser>(this as ChatUser, _$identity);

  /// Serializes this ChatUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.lastActive, lastActive) || other.lastActive == lastActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,isVerified,lastActive);

@override
String toString() {
  return 'ChatUser(id: $id, name: $name, avatarUrl: $avatarUrl, isVerified: $isVerified, lastActive: $lastActive)';
}


}

/// @nodoc
abstract mixin class $ChatUserCopyWith<$Res>  {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) _then) = _$ChatUserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatarUrl, bool isVerified, DateTime? lastActive
});




}
/// @nodoc
class _$ChatUserCopyWithImpl<$Res>
    implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._self, this._then);

  final ChatUser _self;
  final $Res Function(ChatUser) _then;

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,Object? isVerified = null,Object? lastActive = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,lastActive: freezed == lastActive ? _self.lastActive : lastActive // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatUser].
extension ChatUserPatterns on ChatUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatUser value)  $default,){
final _that = this;
switch (_that) {
case _ChatUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatUser value)?  $default,){
final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? avatarUrl,  bool isVerified,  DateTime? lastActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.isVerified,_that.lastActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? avatarUrl,  bool isVerified,  DateTime? lastActive)  $default,) {final _that = this;
switch (_that) {
case _ChatUser():
return $default(_that.id,_that.name,_that.avatarUrl,_that.isVerified,_that.lastActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? avatarUrl,  bool isVerified,  DateTime? lastActive)?  $default,) {final _that = this;
switch (_that) {
case _ChatUser() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.isVerified,_that.lastActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatUser implements ChatUser {
  const _ChatUser({required this.id, required this.name, this.avatarUrl, required this.isVerified, this.lastActive});
  factory _ChatUser.fromJson(Map<String, dynamic> json) => _$ChatUserFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatarUrl;
@override final  bool isVerified;
@override final  DateTime? lastActive;

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatUserCopyWith<_ChatUser> get copyWith => __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.lastActive, lastActive) || other.lastActive == lastActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,isVerified,lastActive);

@override
String toString() {
  return 'ChatUser(id: $id, name: $name, avatarUrl: $avatarUrl, isVerified: $isVerified, lastActive: $lastActive)';
}


}

/// @nodoc
abstract mixin class _$ChatUserCopyWith<$Res> implements $ChatUserCopyWith<$Res> {
  factory _$ChatUserCopyWith(_ChatUser value, $Res Function(_ChatUser) _then) = __$ChatUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatarUrl, bool isVerified, DateTime? lastActive
});




}
/// @nodoc
class __$ChatUserCopyWithImpl<$Res>
    implements _$ChatUserCopyWith<$Res> {
  __$ChatUserCopyWithImpl(this._self, this._then);

  final _ChatUser _self;
  final $Res Function(_ChatUser) _then;

/// Create a copy of ChatUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,Object? isVerified = null,Object? lastActive = freezed,}) {
  return _then(_ChatUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,lastActive: freezed == lastActive ? _self.lastActive : lastActive // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$MessageModel {

 String get id; String get chatId; String get senderId; String get body; MessageType get type; String? get imageUrl; bool get isEdited; bool get isDeleted; DateTime get createdAt; DateTime? get readAt; DateTime? get editedAt; MessageSender? get sender; bool get isOptimistic;
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageModelCopyWith<MessageModel> get copyWith => _$MessageModelCopyWithImpl<MessageModel>(this as MessageModel, _$identity);

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.isOptimistic, isOptimistic) || other.isOptimistic == isOptimistic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,body,type,imageUrl,isEdited,isDeleted,createdAt,readAt,editedAt,sender,isOptimistic);

@override
String toString() {
  return 'MessageModel(id: $id, chatId: $chatId, senderId: $senderId, body: $body, type: $type, imageUrl: $imageUrl, isEdited: $isEdited, isDeleted: $isDeleted, createdAt: $createdAt, readAt: $readAt, editedAt: $editedAt, sender: $sender, isOptimistic: $isOptimistic)';
}


}

/// @nodoc
abstract mixin class $MessageModelCopyWith<$Res>  {
  factory $MessageModelCopyWith(MessageModel value, $Res Function(MessageModel) _then) = _$MessageModelCopyWithImpl;
@useResult
$Res call({
 String id, String chatId, String senderId, String body, MessageType type, String? imageUrl, bool isEdited, bool isDeleted, DateTime createdAt, DateTime? readAt, DateTime? editedAt, MessageSender? sender, bool isOptimistic
});


$MessageSenderCopyWith<$Res>? get sender;

}
/// @nodoc
class _$MessageModelCopyWithImpl<$Res>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._self, this._then);

  final MessageModel _self;
  final $Res Function(MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? body = null,Object? type = null,Object? imageUrl = freezed,Object? isEdited = null,Object? isDeleted = null,Object? createdAt = null,Object? readAt = freezed,Object? editedAt = freezed,Object? sender = freezed,Object? isOptimistic = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as MessageSender?,isOptimistic: null == isOptimistic ? _self.isOptimistic : isOptimistic // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageSenderCopyWith<$Res>? get sender {
    if (_self.sender == null) {
    return null;
  }

  return $MessageSenderCopyWith<$Res>(_self.sender!, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageModel].
extension MessageModelPatterns on MessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String chatId,  String senderId,  String body,  MessageType type,  String? imageUrl,  bool isEdited,  bool isDeleted,  DateTime createdAt,  DateTime? readAt,  DateTime? editedAt,  MessageSender? sender,  bool isOptimistic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.body,_that.type,_that.imageUrl,_that.isEdited,_that.isDeleted,_that.createdAt,_that.readAt,_that.editedAt,_that.sender,_that.isOptimistic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String chatId,  String senderId,  String body,  MessageType type,  String? imageUrl,  bool isEdited,  bool isDeleted,  DateTime createdAt,  DateTime? readAt,  DateTime? editedAt,  MessageSender? sender,  bool isOptimistic)  $default,) {final _that = this;
switch (_that) {
case _MessageModel():
return $default(_that.id,_that.chatId,_that.senderId,_that.body,_that.type,_that.imageUrl,_that.isEdited,_that.isDeleted,_that.createdAt,_that.readAt,_that.editedAt,_that.sender,_that.isOptimistic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String chatId,  String senderId,  String body,  MessageType type,  String? imageUrl,  bool isEdited,  bool isDeleted,  DateTime createdAt,  DateTime? readAt,  DateTime? editedAt,  MessageSender? sender,  bool isOptimistic)?  $default,) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.body,_that.type,_that.imageUrl,_that.isEdited,_that.isDeleted,_that.createdAt,_that.readAt,_that.editedAt,_that.sender,_that.isOptimistic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageModel implements MessageModel {
  const _MessageModel({required this.id, required this.chatId, required this.senderId, required this.body, this.type = MessageType.text, this.imageUrl, this.isEdited = false, this.isDeleted = false, required this.createdAt, this.readAt, this.editedAt, this.sender, this.isOptimistic = false});
  factory _MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

@override final  String id;
@override final  String chatId;
@override final  String senderId;
@override final  String body;
@override@JsonKey() final  MessageType type;
@override final  String? imageUrl;
@override@JsonKey() final  bool isEdited;
@override@JsonKey() final  bool isDeleted;
@override final  DateTime createdAt;
@override final  DateTime? readAt;
@override final  DateTime? editedAt;
@override final  MessageSender? sender;
@override@JsonKey() final  bool isOptimistic;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageModelCopyWith<_MessageModel> get copyWith => __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.isOptimistic, isOptimistic) || other.isOptimistic == isOptimistic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,body,type,imageUrl,isEdited,isDeleted,createdAt,readAt,editedAt,sender,isOptimistic);

@override
String toString() {
  return 'MessageModel(id: $id, chatId: $chatId, senderId: $senderId, body: $body, type: $type, imageUrl: $imageUrl, isEdited: $isEdited, isDeleted: $isDeleted, createdAt: $createdAt, readAt: $readAt, editedAt: $editedAt, sender: $sender, isOptimistic: $isOptimistic)';
}


}

/// @nodoc
abstract mixin class _$MessageModelCopyWith<$Res> implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(_MessageModel value, $Res Function(_MessageModel) _then) = __$MessageModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String chatId, String senderId, String body, MessageType type, String? imageUrl, bool isEdited, bool isDeleted, DateTime createdAt, DateTime? readAt, DateTime? editedAt, MessageSender? sender, bool isOptimistic
});


@override $MessageSenderCopyWith<$Res>? get sender;

}
/// @nodoc
class __$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(this._self, this._then);

  final _MessageModel _self;
  final $Res Function(_MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? body = null,Object? type = null,Object? imageUrl = freezed,Object? isEdited = null,Object? isDeleted = null,Object? createdAt = null,Object? readAt = freezed,Object? editedAt = freezed,Object? sender = freezed,Object? isOptimistic = null,}) {
  return _then(_MessageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as MessageSender?,isOptimistic: null == isOptimistic ? _self.isOptimistic : isOptimistic // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageSenderCopyWith<$Res>? get sender {
    if (_self.sender == null) {
    return null;
  }

  return $MessageSenderCopyWith<$Res>(_self.sender!, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// @nodoc
mixin _$MessageSender {

 String get id; String get name; String? get avatarUrl;
/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageSenderCopyWith<MessageSender> get copyWith => _$MessageSenderCopyWithImpl<MessageSender>(this as MessageSender, _$identity);

  /// Serializes this MessageSender to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageSender&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'MessageSender(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $MessageSenderCopyWith<$Res>  {
  factory $MessageSenderCopyWith(MessageSender value, $Res Function(MessageSender) _then) = _$MessageSenderCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatarUrl
});




}
/// @nodoc
class _$MessageSenderCopyWithImpl<$Res>
    implements $MessageSenderCopyWith<$Res> {
  _$MessageSenderCopyWithImpl(this._self, this._then);

  final MessageSender _self;
  final $Res Function(MessageSender) _then;

/// Create a copy of MessageSender
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


/// Adds pattern-matching-related methods to [MessageSender].
extension MessageSenderPatterns on MessageSender {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageSender value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageSender() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageSender value)  $default,){
final _that = this;
switch (_that) {
case _MessageSender():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageSender value)?  $default,){
final _that = this;
switch (_that) {
case _MessageSender() when $default != null:
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
case _MessageSender() when $default != null:
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
case _MessageSender():
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
case _MessageSender() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageSender implements MessageSender {
  const _MessageSender({required this.id, required this.name, this.avatarUrl});
  factory _MessageSender.fromJson(Map<String, dynamic> json) => _$MessageSenderFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatarUrl;

/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageSenderCopyWith<_MessageSender> get copyWith => __$MessageSenderCopyWithImpl<_MessageSender>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageSenderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageSender&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'MessageSender(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$MessageSenderCopyWith<$Res> implements $MessageSenderCopyWith<$Res> {
  factory _$MessageSenderCopyWith(_MessageSender value, $Res Function(_MessageSender) _then) = __$MessageSenderCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatarUrl
});




}
/// @nodoc
class __$MessageSenderCopyWithImpl<$Res>
    implements _$MessageSenderCopyWith<$Res> {
  __$MessageSenderCopyWithImpl(this._self, this._then);

  final _MessageSender _self;
  final $Res Function(_MessageSender) _then;

/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,}) {
  return _then(_MessageSender(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatsResponse {

 List<ChatModel> get data; PaginationModel get pagination;
/// Create a copy of ChatsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatsResponseCopyWith<ChatsResponse> get copyWith => _$ChatsResponseCopyWithImpl<ChatsResponse>(this as ChatsResponse, _$identity);

  /// Serializes this ChatsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatsResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ChatsResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ChatsResponseCopyWith<$Res>  {
  factory $ChatsResponseCopyWith(ChatsResponse value, $Res Function(ChatsResponse) _then) = _$ChatsResponseCopyWithImpl;
@useResult
$Res call({
 List<ChatModel> data, PaginationModel pagination
});


$PaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$ChatsResponseCopyWithImpl<$Res>
    implements $ChatsResponseCopyWith<$Res> {
  _$ChatsResponseCopyWithImpl(this._self, this._then);

  final ChatsResponse _self;
  final $Res Function(ChatsResponse) _then;

/// Create a copy of ChatsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,
  ));
}
/// Create a copy of ChatsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatsResponse].
extension ChatsResponsePatterns on ChatsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatModel> data,  PaginationModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatsResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatModel> data,  PaginationModel pagination)  $default,) {final _that = this;
switch (_that) {
case _ChatsResponse():
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatModel> data,  PaginationModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _ChatsResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatsResponse implements ChatsResponse {
  const _ChatsResponse({required final  List<ChatModel> data, required this.pagination}): _data = data;
  factory _ChatsResponse.fromJson(Map<String, dynamic> json) => _$ChatsResponseFromJson(json);

 final  List<ChatModel> _data;
@override List<ChatModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationModel pagination;

/// Create a copy of ChatsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatsResponseCopyWith<_ChatsResponse> get copyWith => __$ChatsResponseCopyWithImpl<_ChatsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatsResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ChatsResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ChatsResponseCopyWith<$Res> implements $ChatsResponseCopyWith<$Res> {
  factory _$ChatsResponseCopyWith(_ChatsResponse value, $Res Function(_ChatsResponse) _then) = __$ChatsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ChatModel> data, PaginationModel pagination
});


@override $PaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$ChatsResponseCopyWithImpl<$Res>
    implements _$ChatsResponseCopyWith<$Res> {
  __$ChatsResponseCopyWithImpl(this._self, this._then);

  final _ChatsResponse _self;
  final $Res Function(_ChatsResponse) _then;

/// Create a copy of ChatsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_ChatsResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,
  ));
}

/// Create a copy of ChatsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$PaginationModel {

 int get total; int get page; int get limit; int get totalPages;
/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<PaginationModel> get copyWith => _$PaginationModelCopyWithImpl<PaginationModel>(this as PaginationModel, _$identity);

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationModel&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'PaginationModel(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationModelCopyWith<$Res>  {
  factory $PaginationModelCopyWith(PaginationModel value, $Res Function(PaginationModel) _then) = _$PaginationModelCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class _$PaginationModelCopyWithImpl<$Res>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._self, this._then);

  final PaginationModel _self;
  final $Res Function(PaginationModel) _then;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationModel].
extension PaginationModelPatterns on PaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PaginationModel():
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationModel implements PaginationModel {
  const _PaginationModel({required this.total, required this.page, required this.limit, required this.totalPages});
  factory _PaginationModel.fromJson(Map<String, dynamic> json) => _$PaginationModelFromJson(json);

@override final  int total;
@override final  int page;
@override final  int limit;
@override final  int totalPages;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationModelCopyWith<_PaginationModel> get copyWith => __$PaginationModelCopyWithImpl<_PaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationModel&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'PaginationModel(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationModelCopyWith<$Res> implements $PaginationModelCopyWith<$Res> {
  factory _$PaginationModelCopyWith(_PaginationModel value, $Res Function(_PaginationModel) _then) = __$PaginationModelCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int totalPages
});




}
/// @nodoc
class __$PaginationModelCopyWithImpl<$Res>
    implements _$PaginationModelCopyWith<$Res> {
  __$PaginationModelCopyWithImpl(this._self, this._then);

  final _PaginationModel _self;
  final $Res Function(_PaginationModel) _then;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_PaginationModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MessagesResponse {

 List<MessageModel> get data; PaginationModel get pagination;
/// Create a copy of MessagesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagesResponseCopyWith<MessagesResponse> get copyWith => _$MessagesResponseCopyWithImpl<MessagesResponse>(this as MessagesResponse, _$identity);

  /// Serializes this MessagesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagesResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'MessagesResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $MessagesResponseCopyWith<$Res>  {
  factory $MessagesResponseCopyWith(MessagesResponse value, $Res Function(MessagesResponse) _then) = _$MessagesResponseCopyWithImpl;
@useResult
$Res call({
 List<MessageModel> data, PaginationModel pagination
});


$PaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$MessagesResponseCopyWithImpl<$Res>
    implements $MessagesResponseCopyWith<$Res> {
  _$MessagesResponseCopyWithImpl(this._self, this._then);

  final MessagesResponse _self;
  final $Res Function(MessagesResponse) _then;

/// Create a copy of MessagesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,
  ));
}
/// Create a copy of MessagesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessagesResponse].
extension MessagesResponsePatterns on MessagesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagesResponse value)  $default,){
final _that = this;
switch (_that) {
case _MessagesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MessagesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MessageModel> data,  PaginationModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagesResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MessageModel> data,  PaginationModel pagination)  $default,) {final _that = this;
switch (_that) {
case _MessagesResponse():
return $default(_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MessageModel> data,  PaginationModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _MessagesResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagesResponse implements MessagesResponse {
  const _MessagesResponse({required final  List<MessageModel> data, required this.pagination}): _data = data;
  factory _MessagesResponse.fromJson(Map<String, dynamic> json) => _$MessagesResponseFromJson(json);

 final  List<MessageModel> _data;
@override List<MessageModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationModel pagination;

/// Create a copy of MessagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesResponseCopyWith<_MessagesResponse> get copyWith => __$MessagesResponseCopyWithImpl<_MessagesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'MessagesResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$MessagesResponseCopyWith<$Res> implements $MessagesResponseCopyWith<$Res> {
  factory _$MessagesResponseCopyWith(_MessagesResponse value, $Res Function(_MessagesResponse) _then) = __$MessagesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MessageModel> data, PaginationModel pagination
});


@override $PaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$MessagesResponseCopyWithImpl<$Res>
    implements _$MessagesResponseCopyWith<$Res> {
  __$MessagesResponseCopyWithImpl(this._self, this._then);

  final _MessagesResponse _self;
  final $Res Function(_MessagesResponse) _then;

/// Create a copy of MessagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_MessagesResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel,
  ));
}

/// Create a copy of MessagesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res> get pagination {
  
  return $PaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$MessageResponse {

 MessageModel get data;
/// Create a copy of MessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageResponseCopyWith<MessageResponse> get copyWith => _$MessageResponseCopyWithImpl<MessageResponse>(this as MessageResponse, _$identity);

  /// Serializes this MessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MessageResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $MessageResponseCopyWith<$Res>  {
  factory $MessageResponseCopyWith(MessageResponse value, $Res Function(MessageResponse) _then) = _$MessageResponseCopyWithImpl;
@useResult
$Res call({
 MessageModel data
});


$MessageModelCopyWith<$Res> get data;

}
/// @nodoc
class _$MessageResponseCopyWithImpl<$Res>
    implements $MessageResponseCopyWith<$Res> {
  _$MessageResponseCopyWithImpl(this._self, this._then);

  final MessageResponse _self;
  final $Res Function(MessageResponse) _then;

/// Create a copy of MessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MessageModel,
  ));
}
/// Create a copy of MessageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageModelCopyWith<$Res> get data {
  
  return $MessageModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageResponse].
extension MessageResponsePatterns on MessageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _MessageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MessageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MessageModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageResponse() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MessageModel data)  $default,) {final _that = this;
switch (_that) {
case _MessageResponse():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MessageModel data)?  $default,) {final _that = this;
switch (_that) {
case _MessageResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageResponse implements MessageResponse {
  const _MessageResponse({required this.data});
  factory _MessageResponse.fromJson(Map<String, dynamic> json) => _$MessageResponseFromJson(json);

@override final  MessageModel data;

/// Create a copy of MessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageResponseCopyWith<_MessageResponse> get copyWith => __$MessageResponseCopyWithImpl<_MessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MessageResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$MessageResponseCopyWith<$Res> implements $MessageResponseCopyWith<$Res> {
  factory _$MessageResponseCopyWith(_MessageResponse value, $Res Function(_MessageResponse) _then) = __$MessageResponseCopyWithImpl;
@override @useResult
$Res call({
 MessageModel data
});


@override $MessageModelCopyWith<$Res> get data;

}
/// @nodoc
class __$MessageResponseCopyWithImpl<$Res>
    implements _$MessageResponseCopyWith<$Res> {
  __$MessageResponseCopyWithImpl(this._self, this._then);

  final _MessageResponse _self;
  final $Res Function(_MessageResponse) _then;

/// Create a copy of MessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_MessageResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MessageModel,
  ));
}

/// Create a copy of MessageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageModelCopyWith<$Res> get data {
  
  return $MessageModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$EditMessageRequest {

 String get body;
/// Create a copy of EditMessageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditMessageRequestCopyWith<EditMessageRequest> get copyWith => _$EditMessageRequestCopyWithImpl<EditMessageRequest>(this as EditMessageRequest, _$identity);

  /// Serializes this EditMessageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditMessageRequest&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'EditMessageRequest(body: $body)';
}


}

/// @nodoc
abstract mixin class $EditMessageRequestCopyWith<$Res>  {
  factory $EditMessageRequestCopyWith(EditMessageRequest value, $Res Function(EditMessageRequest) _then) = _$EditMessageRequestCopyWithImpl;
@useResult
$Res call({
 String body
});




}
/// @nodoc
class _$EditMessageRequestCopyWithImpl<$Res>
    implements $EditMessageRequestCopyWith<$Res> {
  _$EditMessageRequestCopyWithImpl(this._self, this._then);

  final EditMessageRequest _self;
  final $Res Function(EditMessageRequest) _then;

/// Create a copy of EditMessageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,}) {
  return _then(_self.copyWith(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EditMessageRequest].
extension EditMessageRequestPatterns on EditMessageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditMessageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditMessageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditMessageRequest value)  $default,){
final _that = this;
switch (_that) {
case _EditMessageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditMessageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EditMessageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditMessageRequest() when $default != null:
return $default(_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String body)  $default,) {final _that = this;
switch (_that) {
case _EditMessageRequest():
return $default(_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String body)?  $default,) {final _that = this;
switch (_that) {
case _EditMessageRequest() when $default != null:
return $default(_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditMessageRequest implements EditMessageRequest {
  const _EditMessageRequest({required this.body});
  factory _EditMessageRequest.fromJson(Map<String, dynamic> json) => _$EditMessageRequestFromJson(json);

@override final  String body;

/// Create a copy of EditMessageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditMessageRequestCopyWith<_EditMessageRequest> get copyWith => __$EditMessageRequestCopyWithImpl<_EditMessageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditMessageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditMessageRequest&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'EditMessageRequest(body: $body)';
}


}

/// @nodoc
abstract mixin class _$EditMessageRequestCopyWith<$Res> implements $EditMessageRequestCopyWith<$Res> {
  factory _$EditMessageRequestCopyWith(_EditMessageRequest value, $Res Function(_EditMessageRequest) _then) = __$EditMessageRequestCopyWithImpl;
@override @useResult
$Res call({
 String body
});




}
/// @nodoc
class __$EditMessageRequestCopyWithImpl<$Res>
    implements _$EditMessageRequestCopyWith<$Res> {
  __$EditMessageRequestCopyWithImpl(this._self, this._then);

  final _EditMessageRequest _self;
  final $Res Function(_EditMessageRequest) _then;

/// Create a copy of EditMessageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,}) {
  return _then(_EditMessageRequest(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SendMessageRequest {

 String get chatId; String get body; MessageType get type; String? get imageUrl;
/// Create a copy of SendMessageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageRequestCopyWith<SendMessageRequest> get copyWith => _$SendMessageRequestCopyWithImpl<SendMessageRequest>(this as SendMessageRequest, _$identity);

  /// Serializes this SendMessageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessageRequest&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,body,type,imageUrl);

@override
String toString() {
  return 'SendMessageRequest(chatId: $chatId, body: $body, type: $type, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $SendMessageRequestCopyWith<$Res>  {
  factory $SendMessageRequestCopyWith(SendMessageRequest value, $Res Function(SendMessageRequest) _then) = _$SendMessageRequestCopyWithImpl;
@useResult
$Res call({
 String chatId, String body, MessageType type, String? imageUrl
});




}
/// @nodoc
class _$SendMessageRequestCopyWithImpl<$Res>
    implements $SendMessageRequestCopyWith<$Res> {
  _$SendMessageRequestCopyWithImpl(this._self, this._then);

  final SendMessageRequest _self;
  final $Res Function(SendMessageRequest) _then;

/// Create a copy of SendMessageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? body = null,Object? type = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendMessageRequest].
extension SendMessageRequestPatterns on SendMessageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendMessageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendMessageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendMessageRequest value)  $default,){
final _that = this;
switch (_that) {
case _SendMessageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendMessageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SendMessageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chatId,  String body,  MessageType type,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendMessageRequest() when $default != null:
return $default(_that.chatId,_that.body,_that.type,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chatId,  String body,  MessageType type,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _SendMessageRequest():
return $default(_that.chatId,_that.body,_that.type,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chatId,  String body,  MessageType type,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _SendMessageRequest() when $default != null:
return $default(_that.chatId,_that.body,_that.type,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendMessageRequest implements SendMessageRequest {
  const _SendMessageRequest({required this.chatId, required this.body, this.type = MessageType.text, this.imageUrl});
  factory _SendMessageRequest.fromJson(Map<String, dynamic> json) => _$SendMessageRequestFromJson(json);

@override final  String chatId;
@override final  String body;
@override@JsonKey() final  MessageType type;
@override final  String? imageUrl;

/// Create a copy of SendMessageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageRequestCopyWith<_SendMessageRequest> get copyWith => __$SendMessageRequestCopyWithImpl<_SendMessageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendMessageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessageRequest&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,body,type,imageUrl);

@override
String toString() {
  return 'SendMessageRequest(chatId: $chatId, body: $body, type: $type, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$SendMessageRequestCopyWith<$Res> implements $SendMessageRequestCopyWith<$Res> {
  factory _$SendMessageRequestCopyWith(_SendMessageRequest value, $Res Function(_SendMessageRequest) _then) = __$SendMessageRequestCopyWithImpl;
@override @useResult
$Res call({
 String chatId, String body, MessageType type, String? imageUrl
});




}
/// @nodoc
class __$SendMessageRequestCopyWithImpl<$Res>
    implements _$SendMessageRequestCopyWith<$Res> {
  __$SendMessageRequestCopyWithImpl(this._self, this._then);

  final _SendMessageRequest _self;
  final $Res Function(_SendMessageRequest) _then;

/// Create a copy of SendMessageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? body = null,Object? type = null,Object? imageUrl = freezed,}) {
  return _then(_SendMessageRequest(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateChatRequest {

 ChatType get type; String? get itemId; String? get requestId;
/// Create a copy of CreateChatRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateChatRequestCopyWith<CreateChatRequest> get copyWith => _$CreateChatRequestCopyWithImpl<CreateChatRequest>(this as CreateChatRequest, _$identity);

  /// Serializes this CreateChatRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,itemId,requestId);

@override
String toString() {
  return 'CreateChatRequest(type: $type, itemId: $itemId, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $CreateChatRequestCopyWith<$Res>  {
  factory $CreateChatRequestCopyWith(CreateChatRequest value, $Res Function(CreateChatRequest) _then) = _$CreateChatRequestCopyWithImpl;
@useResult
$Res call({
 ChatType type, String? itemId, String? requestId
});




}
/// @nodoc
class _$CreateChatRequestCopyWithImpl<$Res>
    implements $CreateChatRequestCopyWith<$Res> {
  _$CreateChatRequestCopyWithImpl(this._self, this._then);

  final CreateChatRequest _self;
  final $Res Function(CreateChatRequest) _then;

/// Create a copy of CreateChatRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? itemId = freezed,Object? requestId = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChatType,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateChatRequest].
extension CreateChatRequestPatterns on CreateChatRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateChatRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateChatRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateChatRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateChatRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateChatRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateChatRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatType type,  String? itemId,  String? requestId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateChatRequest() when $default != null:
return $default(_that.type,_that.itemId,_that.requestId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatType type,  String? itemId,  String? requestId)  $default,) {final _that = this;
switch (_that) {
case _CreateChatRequest():
return $default(_that.type,_that.itemId,_that.requestId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatType type,  String? itemId,  String? requestId)?  $default,) {final _that = this;
switch (_that) {
case _CreateChatRequest() when $default != null:
return $default(_that.type,_that.itemId,_that.requestId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateChatRequest implements CreateChatRequest {
  const _CreateChatRequest({required this.type, this.itemId, this.requestId});
  factory _CreateChatRequest.fromJson(Map<String, dynamic> json) => _$CreateChatRequestFromJson(json);

@override final  ChatType type;
@override final  String? itemId;
@override final  String? requestId;

/// Create a copy of CreateChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateChatRequestCopyWith<_CreateChatRequest> get copyWith => __$CreateChatRequestCopyWithImpl<_CreateChatRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateChatRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateChatRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,itemId,requestId);

@override
String toString() {
  return 'CreateChatRequest(type: $type, itemId: $itemId, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class _$CreateChatRequestCopyWith<$Res> implements $CreateChatRequestCopyWith<$Res> {
  factory _$CreateChatRequestCopyWith(_CreateChatRequest value, $Res Function(_CreateChatRequest) _then) = __$CreateChatRequestCopyWithImpl;
@override @useResult
$Res call({
 ChatType type, String? itemId, String? requestId
});




}
/// @nodoc
class __$CreateChatRequestCopyWithImpl<$Res>
    implements _$CreateChatRequestCopyWith<$Res> {
  __$CreateChatRequestCopyWithImpl(this._self, this._then);

  final _CreateChatRequest _self;
  final $Res Function(_CreateChatRequest) _then;

/// Create a copy of CreateChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? itemId = freezed,Object? requestId = freezed,}) {
  return _then(_CreateChatRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChatType,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatResponse {

 ChatModel get data;
/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatResponseCopyWith<ChatResponse> get copyWith => _$ChatResponseCopyWithImpl<ChatResponse>(this as ChatResponse, _$identity);

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ChatResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $ChatResponseCopyWith<$Res>  {
  factory $ChatResponseCopyWith(ChatResponse value, $Res Function(ChatResponse) _then) = _$ChatResponseCopyWithImpl;
@useResult
$Res call({
 ChatModel data
});


$ChatModelCopyWith<$Res> get data;

}
/// @nodoc
class _$ChatResponseCopyWithImpl<$Res>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._self, this._then);

  final ChatResponse _self;
  final $Res Function(ChatResponse) _then;

/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatModel,
  ));
}
/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatModelCopyWith<$Res> get data {
  
  return $ChatModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatResponse].
extension ChatResponsePatterns on ChatResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatModel data)  $default,) {final _that = this;
switch (_that) {
case _ChatResponse():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatModel data)?  $default,) {final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatResponse implements ChatResponse {
  const _ChatResponse({required this.data});
  factory _ChatResponse.fromJson(Map<String, dynamic> json) => _$ChatResponseFromJson(json);

@override final  ChatModel data;

/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatResponseCopyWith<_ChatResponse> get copyWith => __$ChatResponseCopyWithImpl<_ChatResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ChatResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChatResponseCopyWith<$Res> implements $ChatResponseCopyWith<$Res> {
  factory _$ChatResponseCopyWith(_ChatResponse value, $Res Function(_ChatResponse) _then) = __$ChatResponseCopyWithImpl;
@override @useResult
$Res call({
 ChatModel data
});


@override $ChatModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ChatResponseCopyWithImpl<$Res>
    implements _$ChatResponseCopyWith<$Res> {
  __$ChatResponseCopyWithImpl(this._self, this._then);

  final _ChatResponse _self;
  final $Res Function(_ChatResponse) _then;

/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ChatResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatModel,
  ));
}

/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatModelCopyWith<$Res> get data {
  
  return $ChatModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CountResponse {

 CountData get data;
/// Create a copy of CountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountResponseCopyWith<CountResponse> get copyWith => _$CountResponseCopyWithImpl<CountResponse>(this as CountResponse, _$identity);

  /// Serializes this CountResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CountResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $CountResponseCopyWith<$Res>  {
  factory $CountResponseCopyWith(CountResponse value, $Res Function(CountResponse) _then) = _$CountResponseCopyWithImpl;
@useResult
$Res call({
 CountData data
});


$CountDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CountResponseCopyWithImpl<$Res>
    implements $CountResponseCopyWith<$Res> {
  _$CountResponseCopyWithImpl(this._self, this._then);

  final CountResponse _self;
  final $Res Function(CountResponse) _then;

/// Create a copy of CountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CountData,
  ));
}
/// Create a copy of CountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountDataCopyWith<$Res> get data {
  
  return $CountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CountResponse].
extension CountResponsePatterns on CountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountResponse value)  $default,){
final _that = this;
switch (_that) {
case _CountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CountResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CountData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountResponse() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CountData data)  $default,) {final _that = this;
switch (_that) {
case _CountResponse():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CountData data)?  $default,) {final _that = this;
switch (_that) {
case _CountResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountResponse implements CountResponse {
  const _CountResponse({required this.data});
  factory _CountResponse.fromJson(Map<String, dynamic> json) => _$CountResponseFromJson(json);

@override final  CountData data;

/// Create a copy of CountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountResponseCopyWith<_CountResponse> get copyWith => __$CountResponseCopyWithImpl<_CountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CountResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CountResponseCopyWith<$Res> implements $CountResponseCopyWith<$Res> {
  factory _$CountResponseCopyWith(_CountResponse value, $Res Function(_CountResponse) _then) = __$CountResponseCopyWithImpl;
@override @useResult
$Res call({
 CountData data
});


@override $CountDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CountResponseCopyWithImpl<$Res>
    implements _$CountResponseCopyWith<$Res> {
  __$CountResponseCopyWithImpl(this._self, this._then);

  final _CountResponse _self;
  final $Res Function(_CountResponse) _then;

/// Create a copy of CountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CountResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CountData,
  ));
}

/// Create a copy of CountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountDataCopyWith<$Res> get data {
  
  return $CountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CountData {

 int get totalUnread;
/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountDataCopyWith<CountData> get copyWith => _$CountDataCopyWithImpl<CountData>(this as CountData, _$identity);

  /// Serializes this CountData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountData&&(identical(other.totalUnread, totalUnread) || other.totalUnread == totalUnread));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUnread);

@override
String toString() {
  return 'CountData(totalUnread: $totalUnread)';
}


}

/// @nodoc
abstract mixin class $CountDataCopyWith<$Res>  {
  factory $CountDataCopyWith(CountData value, $Res Function(CountData) _then) = _$CountDataCopyWithImpl;
@useResult
$Res call({
 int totalUnread
});




}
/// @nodoc
class _$CountDataCopyWithImpl<$Res>
    implements $CountDataCopyWith<$Res> {
  _$CountDataCopyWithImpl(this._self, this._then);

  final CountData _self;
  final $Res Function(CountData) _then;

/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUnread = null,}) {
  return _then(_self.copyWith(
totalUnread: null == totalUnread ? _self.totalUnread : totalUnread // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CountData].
extension CountDataPatterns on CountData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountData value)  $default,){
final _that = this;
switch (_that) {
case _CountData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountData value)?  $default,){
final _that = this;
switch (_that) {
case _CountData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalUnread)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountData() when $default != null:
return $default(_that.totalUnread);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalUnread)  $default,) {final _that = this;
switch (_that) {
case _CountData():
return $default(_that.totalUnread);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalUnread)?  $default,) {final _that = this;
switch (_that) {
case _CountData() when $default != null:
return $default(_that.totalUnread);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountData implements CountData {
  const _CountData({required this.totalUnread});
  factory _CountData.fromJson(Map<String, dynamic> json) => _$CountDataFromJson(json);

@override final  int totalUnread;

/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountDataCopyWith<_CountData> get copyWith => __$CountDataCopyWithImpl<_CountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountData&&(identical(other.totalUnread, totalUnread) || other.totalUnread == totalUnread));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUnread);

@override
String toString() {
  return 'CountData(totalUnread: $totalUnread)';
}


}

/// @nodoc
abstract mixin class _$CountDataCopyWith<$Res> implements $CountDataCopyWith<$Res> {
  factory _$CountDataCopyWith(_CountData value, $Res Function(_CountData) _then) = __$CountDataCopyWithImpl;
@override @useResult
$Res call({
 int totalUnread
});




}
/// @nodoc
class __$CountDataCopyWithImpl<$Res>
    implements _$CountDataCopyWith<$Res> {
  __$CountDataCopyWithImpl(this._self, this._then);

  final _CountData _self;
  final $Res Function(_CountData) _then;

/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUnread = null,}) {
  return _then(_CountData(
totalUnread: null == totalUnread ? _self.totalUnread : totalUnread // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
