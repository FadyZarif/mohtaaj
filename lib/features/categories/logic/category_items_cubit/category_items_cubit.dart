import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../items/data/models/item_model.dart';
import '../../../items/data/models/items_queries.dart';
import 'category_items_state.dart';

class CategoryItemsCubit extends Cubit<CategoryItemsState> {
  final ApiService _apiService;
  final String categoryId;

  CategoryItemsCubit(this._apiService, this.categoryId)
      : super(const CategoryItemsState());

  // Get Items for Category
  Future<void> getItems({bool loadMore = false}) async {
    if (loadMore && !state.hasMoreItems) return;
    if (state.isLoadingMore) return;

    final page = loadMore ? state.currentPage + 1 : 1;

    if (loadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(state.copyWith(isLoading: true, error: null));
    }

    try {
      final queries = ItemsQueries(
        page: page,
        limit: state.itemsPerPage,
        categoryId: categoryId,
        status: ItemStatus.active,
        search: state.searchQuery,
        condition: state.selectedCondition,
        city: state.selectedCity,
        isFree: state.isFree,
        minPrice: state.minPrice,
        maxPrice: state.maxPrice,
        sortBy: state.sortBy ?? SortBy.createdAt,
        sortOrder: state.sortOrder,
      );

      final response = await _apiService.getItems(queries);
      final newItems = response.data.items;
      final hasMore = page < response.data.meta.totalPages;

      emit(state.copyWith(
        items: loadMore ? [...state.items, ...newItems] : newItems,
        isLoading: false,
        isLoadingMore: false,
        currentPage: page,
        hasMoreItems: hasMore,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        error: errorMessage,
      ));
    }
  }

  // Search
  void search(String query) {
    emit(state.copyWith(searchQuery: query.isEmpty ? null : query));
    getItems();
  }

  // Apply Filters
  void applyFilters({
    ItemCondition? condition,
    String? city,
    bool? isFree,
    String? minPrice,
    String? maxPrice,
  }) {
    emit(state.copyWith(
      selectedCondition: condition,
      selectedCity: city,
      isFree: isFree,
      minPrice: minPrice,
      maxPrice: maxPrice,
    ));
    getItems();
  }

  // Clear Filters
  void clearFilters() {
    emit(state.copyWith(
      selectedCondition: null,
      selectedCity: null,
      isFree: null,
      minPrice: null,
      maxPrice: null,
      searchQuery: null,
    ));
    getItems();
  }

  // Sort
  void changeSort(SortBy sortBy, SortOrder sortOrder) {
    emit(state.copyWith(sortBy: sortBy, sortOrder: sortOrder));
    getItems();
  }

  // Refresh
  Future<void> refresh() async {
    emit(const CategoryItemsState());
    await getItems();
  }
}
