// lib/features/chats/data/models/chat_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String id,
    required String type,
    String? itemId,
    String? requestId,
    required String buyerId,
    required String sellerId,
    String? lastMsg,
    @Default(MessageType.text) MessageType lastMsgType,
    @Default(0) int unreadCountBuyer,
    @Default(0) int unreadCountSeller,
    required DateTime createdAt,
    required DateTime updatedAt,
    ChatItem? item,
    required ChatUser buyer,
    required ChatUser seller,
    int? unreadCount,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}

@freezed
abstract class ChatItem with _$ChatItem {
  const factory ChatItem({
    required String id,
    required String title,
    required List<String> images,
    required String status,
  }) = _ChatItem;

  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);
}

@freezed
abstract class ChatUser with _$ChatUser {
  const factory ChatUser({
    required String id,
    required String name,
    String? avatarUrl,
    required bool isVerified,
    DateTime? lastActive,
  }) = _ChatUser;

  factory ChatUser.fromJson(Map<String, dynamic> json) =>
      _$ChatUserFromJson(json);
}

@freezed
abstract class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String chatId,
    required String senderId,
    required String body,
    @Default(MessageType.text) MessageType type,
    String? imageUrl,
    @Default(false) bool isEdited,
    @Default(false) bool isDeleted,
    required DateTime createdAt,
    DateTime? readAt,
    DateTime? editedAt,
    MessageSender? sender,
    @Default(false) bool isOptimistic,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

@freezed
abstract class MessageSender with _$MessageSender {
  const factory MessageSender({
    required String id,
    required String name,
    String? avatarUrl,
  }) = _MessageSender;

  factory MessageSender.fromJson(Map<String, dynamic> json) =>
      _$MessageSenderFromJson(json);
}

@freezed
abstract class ChatsResponse with _$ChatsResponse {
  const factory ChatsResponse({
    required List<ChatModel> data,
    required PaginationModel pagination,
  }) = _ChatsResponse;

  factory ChatsResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatsResponseFromJson(json);
}

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    required int total,
    required int page,
    required int limit,
    required int totalPages,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

@freezed
abstract class MessagesResponse with _$MessagesResponse {
  const factory MessagesResponse({
    required List<MessageModel> data,
    required PaginationModel pagination,
  }) = _MessagesResponse;

  factory MessagesResponse.fromJson(Map<String, dynamic> json) =>
      _$MessagesResponseFromJson(json);
}

@freezed
abstract class MessageResponse with _$MessageResponse {
  const factory MessageResponse({
    required MessageModel data,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}

@freezed
abstract class EditMessageRequest with _$EditMessageRequest {
  const factory EditMessageRequest({
    required String body,
  }) = _EditMessageRequest;

  factory EditMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$EditMessageRequestFromJson(json);
}

@freezed
abstract class SendMessageRequest with _$SendMessageRequest {
  const factory SendMessageRequest({
    required String chatId,
    required String body,
    @Default(MessageType.text) MessageType type,
    String? imageUrl,
  }) = _SendMessageRequest;

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestFromJson(json);
}



@freezed
abstract class CreateChatRequest with _$CreateChatRequest {
  const factory CreateChatRequest({
    required ChatType type,
    String? itemId,
    String? requestId,
  }) = _CreateChatRequest;

  factory CreateChatRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateChatRequestFromJson(json);
}

@freezed
abstract class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required ChatModel data,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}

@freezed
abstract class CountResponse with _$CountResponse {
  const factory CountResponse({
    required CountData data,
  }) = _CountResponse;

  factory CountResponse.fromJson(Map<String, dynamic> json) =>
      _$CountResponseFromJson(json);
}

@freezed
abstract class CountData with _$CountData {
  const factory CountData({
    required int totalUnread,
  }) = _CountData;

  factory CountData.fromJson(Map<String, dynamic> json) =>
      _$CountDataFromJson(json);
}

enum ChatFilterType { all, buying, selling }
enum ChatType { item, request }
enum MessageType { text, image, system }