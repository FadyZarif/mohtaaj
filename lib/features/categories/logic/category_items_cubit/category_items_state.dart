import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../items/data/models/item_model.dart';
import '../../../items/data/models/items_queries.dart';

part 'category_items_state.freezed.dart';

@freezed
class CategoryItemsState with _$CategoryItemsState {
  const factory CategoryItemsState({
    @Default([]) List<ItemModel> items,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(1) int currentPage,
    @Default(true) bool hasMoreItems,
    @Default(20) int itemsPerPage,
    String? error,

    // Filters
    String? searchQuery,
    ItemCondition? selectedCondition,
    String? selectedCity,
    bool? isFree,
    String? minPrice,
    String? maxPrice,
    SortBy? sortBy,
    @Default(SortOrder.desc) SortOrder sortOrder,
  }) = _CategoryItemsState;
}
