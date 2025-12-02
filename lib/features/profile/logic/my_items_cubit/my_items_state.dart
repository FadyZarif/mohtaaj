// lib/features/profile/logic/my_items_cubit/my_items_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../items/data/models/item_model.dart';

part 'my_items_state.freezed.dart';

@freezed
abstract class MyItemsState with _$MyItemsState {
  const factory MyItemsState({
    @Default([]) List<ItemModel> allItems, // ✅ كل الـ items
    @Default([]) List<ItemModel> filteredItems, // ✅ الـ items المفلترة
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasMore,
    @Default(1) int currentPage,
    String? error,
    ItemStatus? selectedStatus, // ✅ غيرنا من String لـ ItemStatus?
  }) = _MyItemsState;
}