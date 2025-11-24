
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mohtaaj/features/items/data/models/items_queries.dart';
import '../../../items/data/models/item_model.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String searchQuery,
    @Default([]) List<ItemModel> items,
    @Default(false) bool isLoading,
    String? error,
    @Default(1) int currentPage,
    @Default(false) bool hasMoreItems,
    // Filters
    String? selectedCategory,
    String? selectedCity,
    String? minPrice,
    String? maxPrice,
    ItemCondition? condition,
    @Default(false) bool isFreeOnly,
    @Default(SortBy.createdAt) SortBy sortBy,
    @Default(SortOrder.desc) SortOrder sortOrder,
  }) = _SearchState;
}