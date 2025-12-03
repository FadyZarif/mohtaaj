// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatRoomState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState()';
}


}

/// @nodoc
class $ChatRoomStateCopyWith<$Res>  {
$ChatRoomStateCopyWith(ChatRoomState _, $Res Function(ChatRoomState) __);
}


/// Adds pattern-matching-related methods to [ChatRoomState].
extension ChatRoomStatePatterns on ChatRoomState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _EditingMessage value)?  editingMessage,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _EditingMessage() when editingMessage != null:
return editingMessage(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _EditingMessage value)  editingMessage,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _EditingMessage():
return editingMessage(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _EditingMessage value)?  editingMessage,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _EditingMessage() when editingMessage != null:
return editingMessage(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ChatModel chat,  List<MessageModel> messages,  bool isOtherUserOnline,  bool isOtherUserTyping)?  success,TResult Function()?  editingMessage,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.chat,_that.messages,_that.isOtherUserOnline,_that.isOtherUserTyping);case _EditingMessage() when editingMessage != null:
return editingMessage();case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ChatModel chat,  List<MessageModel> messages,  bool isOtherUserOnline,  bool isOtherUserTyping)  success,required TResult Function()  editingMessage,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.chat,_that.messages,_that.isOtherUserOnline,_that.isOtherUserTyping);case _EditingMessage():
return editingMessage();case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ChatModel chat,  List<MessageModel> messages,  bool isOtherUserOnline,  bool isOtherUserTyping)?  success,TResult? Function()?  editingMessage,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.chat,_that.messages,_that.isOtherUserOnline,_that.isOtherUserTyping);case _EditingMessage() when editingMessage != null:
return editingMessage();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ChatRoomState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState.initial()';
}


}




/// @nodoc


class _Loading implements ChatRoomState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState.loading()';
}


}




/// @nodoc


class _Success implements ChatRoomState {
  const _Success({required this.chat, required final  List<MessageModel> messages, required this.isOtherUserOnline, required this.isOtherUserTyping}): _messages = messages;
  

 final  ChatModel chat;
 final  List<MessageModel> _messages;
 List<MessageModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  bool isOtherUserOnline;
 final  bool isOtherUserTyping;

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.chat, chat) || other.chat == chat)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.isOtherUserOnline, isOtherUserOnline) || other.isOtherUserOnline == isOtherUserOnline)&&(identical(other.isOtherUserTyping, isOtherUserTyping) || other.isOtherUserTyping == isOtherUserTyping));
}


@override
int get hashCode => Object.hash(runtimeType,chat,const DeepCollectionEquality().hash(_messages),isOtherUserOnline,isOtherUserTyping);

@override
String toString() {
  return 'ChatRoomState.success(chat: $chat, messages: $messages, isOtherUserOnline: $isOtherUserOnline, isOtherUserTyping: $isOtherUserTyping)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 ChatModel chat, List<MessageModel> messages, bool isOtherUserOnline, bool isOtherUserTyping
});


$ChatModelCopyWith<$Res> get chat;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chat = null,Object? messages = null,Object? isOtherUserOnline = null,Object? isOtherUserTyping = null,}) {
  return _then(_Success(
chat: null == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as ChatModel,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,isOtherUserOnline: null == isOtherUserOnline ? _self.isOtherUserOnline : isOtherUserOnline // ignore: cast_nullable_to_non_nullable
as bool,isOtherUserTyping: null == isOtherUserTyping ? _self.isOtherUserTyping : isOtherUserTyping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatModelCopyWith<$Res> get chat {
  
  return $ChatModelCopyWith<$Res>(_self.chat, (value) {
    return _then(_self.copyWith(chat: value));
  });
}
}

/// @nodoc


class _EditingMessage implements ChatRoomState {
  const _EditingMessage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditingMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState.editingMessage()';
}


}




/// @nodoc


class _Error implements ChatRoomState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ChatRoomState
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
  return 'ChatRoomState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
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

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
