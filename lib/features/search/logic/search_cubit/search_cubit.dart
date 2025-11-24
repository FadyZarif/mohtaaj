
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohtaaj/features/items/data/models/item_model.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../items/data/models/items_queries.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final ApiService _apiService;

  SearchCubit(this._apiService) : super(const SearchState());

  void updateSearchQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void updateCategory(String? category) {
    emit(state.copyWith(selectedCategory: category));
  }

  void updateCity(String? city) {
    emit(state.copyWith(selectedCity: city));
  }

  void updatePriceRange(String? minPrice, String? maxPrice) {
    emit(state.copyWith(minPrice: minPrice, maxPrice: maxPrice));
  }

  void updateCondition(ItemCondition? condition) {
    emit(state.copyWith(condition: condition));
  }

  void toggleFreeOnly() {
    emit(state.copyWith(isFreeOnly: !state.isFreeOnly));
  }

  void updateSort(SortBy sortBy, SortOrder sortOrder) {
    emit(state.copyWith(sortBy: sortBy, sortOrder: sortOrder));
  }

  void clearFilters() {
    emit(const SearchState());
  }

  Future<void> search({bool loadMore = false}) async {
    if (state.searchQuery.isEmpty && state.selectedCategory == null) {
      emit(state.copyWith(items: [], error: null));
      return;
    }

    if (loadMore && !state.hasMoreItems) return;

    final page = loadMore ? state.currentPage + 1 : 1;

    if (!loadMore) {
      emit(state.copyWith(isLoading: true, error: null));
    }

    try {
      final response = await _apiService.getItems(
        ItemsQueries(
          page: page,
          limit: 20,
          status: ItemStatus.active,
          search: state.searchQuery.isNotEmpty ? state.searchQuery : null,
          categoryId: state.selectedCategory,
          city: state.selectedCity,
          minPrice: state.minPrice?.isNotEmpty == true ? state.minPrice : null,
          maxPrice: state.maxPrice?.isNotEmpty == true ? state.maxPrice : null,
          condition: state.condition,
          isFree: state.isFreeOnly ? true : null,
          sortBy: state.sortBy,
          sortOrder: state.sortOrder,
        ),
      );

      final newItems = response.data.items;
      final hasMore = page < response.data.meta.totalPages;

      emit(state.copyWith(
        items: loadMore ? [...state.items, ...newItems] : newItems,
        isLoading: false,
        currentPage: page,
        hasMoreItems: hasMore,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isLoading: false,
        error: errorMessage,
      ));
    }
  }
}