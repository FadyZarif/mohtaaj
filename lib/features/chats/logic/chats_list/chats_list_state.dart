// lib/features/chats/logic/chats_list/chats_list_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/chat_model.dart';

part 'chats_list_state.freezed.dart';

@freezed
abstract class ChatsListState with _$ChatsListState {
  const factory ChatsListState.initial() = _Initial;
  const factory ChatsListState.loading() = _Loading;
  const factory ChatsListState.success({
    required List<ChatModel> chats,
    required ChatFilterType currentFilter,
    @Default(1) int currentPage,
    @Default(true) bool hasMore,
    @Default(false) bool isLoadingMore,
  }) = _Success;
  const factory ChatsListState.error(String message) = _Error;
}