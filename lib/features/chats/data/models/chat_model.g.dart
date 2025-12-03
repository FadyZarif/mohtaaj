// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => _ChatModel(
  id: json['id'] as String,
  type: json['type'] as String,
  itemId: json['itemId'] as String?,
  requestId: json['requestId'] as String?,
  buyerId: json['buyerId'] as String,
  sellerId: json['sellerId'] as String,
  lastMsg: json['lastMsg'] as String?,
  lastMsgType:
      $enumDecodeNullable(_$MessageTypeEnumMap, json['lastMsgType']) ??
      MessageType.text,
  unreadCountBuyer: (json['unreadCountBuyer'] as num?)?.toInt() ?? 0,
  unreadCountSeller: (json['unreadCountSeller'] as num?)?.toInt() ?? 0,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  item: json['item'] == null
      ? null
      : ChatItem.fromJson(json['item'] as Map<String, dynamic>),
  buyer: ChatUser.fromJson(json['buyer'] as Map<String, dynamic>),
  seller: ChatUser.fromJson(json['seller'] as Map<String, dynamic>),
  unreadCount: (json['unreadCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatModelToJson(_ChatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'itemId': instance.itemId,
      'requestId': instance.requestId,
      'buyerId': instance.buyerId,
      'sellerId': instance.sellerId,
      'lastMsg': instance.lastMsg,
      'lastMsgType': _$MessageTypeEnumMap[instance.lastMsgType]!,
      'unreadCountBuyer': instance.unreadCountBuyer,
      'unreadCountSeller': instance.unreadCountSeller,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'item': instance.item,
      'buyer': instance.buyer,
      'seller': instance.seller,
      'unreadCount': instance.unreadCount,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.system: 'system',
};

_ChatItem _$ChatItemFromJson(Map<String, dynamic> json) => _ChatItem(
  id: json['id'] as String,
  title: json['title'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  status: json['status'] as String,
);

Map<String, dynamic> _$ChatItemToJson(_ChatItem instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'images': instance.images,
  'status': instance.status,
};

_ChatUser _$ChatUserFromJson(Map<String, dynamic> json) => _ChatUser(
  id: json['id'] as String,
  name: json['name'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  isVerified: json['isVerified'] as bool,
  lastActive: json['lastActive'] == null
      ? null
      : DateTime.parse(json['lastActive'] as String),
);

Map<String, dynamic> _$ChatUserToJson(_ChatUser instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatarUrl': instance.avatarUrl,
  'isVerified': instance.isVerified,
  'lastActive': instance.lastActive?.toIso8601String(),
};

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      id: json['id'] as String,
      chatId: json['chatId'] as String,
      senderId: json['senderId'] as String,
      body: json['body'] as String,
      type:
          $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
          MessageType.text,
      imageUrl: json['imageUrl'] as String?,
      isEdited: json['isEdited'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
      editedAt: json['editedAt'] == null
          ? null
          : DateTime.parse(json['editedAt'] as String),
      sender: json['sender'] == null
          ? null
          : MessageSender.fromJson(json['sender'] as Map<String, dynamic>),
      isOptimistic: json['isOptimistic'] as bool? ?? false,
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'senderId': instance.senderId,
      'body': instance.body,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'imageUrl': instance.imageUrl,
      'isEdited': instance.isEdited,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'readAt': instance.readAt?.toIso8601String(),
      'editedAt': instance.editedAt?.toIso8601String(),
      'sender': instance.sender,
      'isOptimistic': instance.isOptimistic,
    };

_MessageSender _$MessageSenderFromJson(Map<String, dynamic> json) =>
    _MessageSender(
      id: json['id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$MessageSenderToJson(_MessageSender instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };

_ChatsResponse _$ChatsResponseFromJson(Map<String, dynamic> json) =>
    _ChatsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationModel.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ChatsResponseToJson(_ChatsResponse instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};

_PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) =>
    _PaginationModel(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationModelToJson(_PaginationModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_MessagesResponse _$MessagesResponseFromJson(Map<String, dynamic> json) =>
    _MessagesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationModel.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$MessagesResponseToJson(_MessagesResponse instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};

_MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    _MessageResponse(
      data: MessageModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageResponseToJson(_MessageResponse instance) =>
    <String, dynamic>{'data': instance.data};

_EditMessageRequest _$EditMessageRequestFromJson(Map<String, dynamic> json) =>
    _EditMessageRequest(body: json['body'] as String);

Map<String, dynamic> _$EditMessageRequestToJson(_EditMessageRequest instance) =>
    <String, dynamic>{'body': instance.body};

_SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) =>
    _SendMessageRequest(
      chatId: json['chatId'] as String,
      body: json['body'] as String,
      type:
          $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
          MessageType.text,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$SendMessageRequestToJson(_SendMessageRequest instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'body': instance.body,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'imageUrl': instance.imageUrl,
    };

_CreateChatRequest _$CreateChatRequestFromJson(Map<String, dynamic> json) =>
    _CreateChatRequest(
      type: $enumDecode(_$ChatTypeEnumMap, json['type']),
      itemId: json['itemId'] as String?,
      requestId: json['requestId'] as String?,
    );

Map<String, dynamic> _$CreateChatRequestToJson(_CreateChatRequest instance) =>
    <String, dynamic>{
      'type': _$ChatTypeEnumMap[instance.type]!,
      'itemId': instance.itemId,
      'requestId': instance.requestId,
    };

const _$ChatTypeEnumMap = {ChatType.item: 'item', ChatType.request: 'request'};

_ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) =>
    _ChatResponse(
      data: ChatModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatResponseToJson(_ChatResponse instance) =>
    <String, dynamic>{'data': instance.data};

_CountResponse _$CountResponseFromJson(Map<String, dynamic> json) =>
    _CountResponse(
      data: CountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountResponseToJson(_CountResponse instance) =>
    <String, dynamic>{'data': instance.data};

_CountData _$CountDataFromJson(Map<String, dynamic> json) =>
    _CountData(totalUnread: (json['totalUnread'] as num).toInt());

Map<String, dynamic> _$CountDataToJson(_CountData instance) =>
    <String, dynamic>{'totalUnread': instance.totalUnread};
