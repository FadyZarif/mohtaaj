// lib/features/chats/logic/chats_list/chats_list_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/chat_model.dart';

part 'chats_list_state.freezed.dart';

@freezed
abstract class ChatsListState with _$ChatsListState {
  const factory ChatsListState.initial() = _Initial;
  const factory ChatsListState.loading() = _Loading;
  const factory ChatsListState.success(
      List<ChatModel> chats,
      ChatFilterType currentFilter,
      ) = _Success;
  const factory ChatsListState.error(String message) = _Error;
}