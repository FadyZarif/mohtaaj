// lib/features/items/logic/items_list_cubit/items_list_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/item_model.dart';
import '../../data/models/items_queries.dart';

part 'items_list_state.freezed.dart';

@freezed
abstract class ItemsListState with _$ItemsListState {
  const factory ItemsListState({
    @Default('') String searchQuery,
    @Default([]) List<ItemModel> items,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    @Default(1) int currentPage,
    @Default(false) bool hasMoreItems,
    // Filters
    String? categoryId, // ده الفرق الوحيد - عشان الـ category items
    String? selectedCity,
    String? minPrice,
    String? maxPrice,
    ItemCondition? condition, // ✅ enum مش String
    @Default(false) bool isFreeOnly,
    @Default(SortBy.createdAt) SortBy sortBy,
    @Default(SortOrder.desc) SortOrder sortOrder,
  }) = _ItemsListState;
}