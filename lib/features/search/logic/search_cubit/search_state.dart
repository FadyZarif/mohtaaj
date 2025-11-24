
import 'package:freezed_annotation/freezed_annotation.dart';
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
    String? condition,
    @Default(false) bool isFreeOnly,
    @Default('createdAt') String sortBy,
    @Default('desc') String sortOrder,
  }) = _SearchState;
}