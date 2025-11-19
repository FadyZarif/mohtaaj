import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_layout_state.freezed.dart';

@freezed
abstract class MainLayoutState with _$MainLayoutState {
  const factory MainLayoutState({
    @Default(0) int currentIndex,
    @Default(0) int unreadChatsCount,
  }) = _MainLayoutState;
}
