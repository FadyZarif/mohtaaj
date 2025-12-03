// lib/features/chats/logic/chat_room/chat_room_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/chat_model.dart';

part 'chat_room_state.freezed.dart';

@freezed
abstract class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = _Initial;
  const factory ChatRoomState.loading() = _Loading;
  const factory ChatRoomState.success({
    required ChatModel chat,
    required List<MessageModel> messages,
    required bool isOtherUserOnline,
    required bool isOtherUserTyping,
  }) = _Success;
  const factory ChatRoomState.editingMessage() = _EditingMessage;
  const factory ChatRoomState.error(String message) = _Error;
}