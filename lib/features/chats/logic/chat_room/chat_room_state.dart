// في lib/features/chats/logic/chat_room/chat_room_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/chat_model.dart';

part 'chat_room_state.freezed.dart';

// في lib/features/chats/logic/chat_room/chat_room_state.dart

@freezed
abstract class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = _Initial;
  const factory ChatRoomState.loading() = _Loading;
  const factory ChatRoomState.success({
    required ChatModel chat,
    required List<MessageModel> messages,
    required bool isOtherUserOnline,
    required bool isOtherUserTyping,
    @Default(false) bool isClosingItem,
    @Default(false) bool isRatingUser,
    @Default(false) bool hasRatedSeller,
  }) = _Success;
  const factory ChatRoomState.error(String message) = _Error;
  const factory ChatRoomState.editingMessage() = _EditingMessage;
// ❌ شيل السطر ده لو موجود:
// const factory ChatRoomState.uploadingImage() = _UploadingImage;
}