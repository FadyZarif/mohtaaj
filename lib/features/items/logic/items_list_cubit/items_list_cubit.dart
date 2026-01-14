// lib/features/items/logic/items_list_cubit/items_list_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/models/item_model.dart';
import '../../data/models/items_queries.dart';
import 'items_list_state.dart';

class ItemsListCubit extends Cubit<ItemsListState> {
  final ApiService _apiService;

  ItemsListCubit(this._apiService) : super(const ItemsListState());

  void setCategoryId(String categoryId) {
    emit(state.copyWith(categoryId: categoryId));
  }

  void updateSearchQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void updateCategory(String? categoryId) {
    emit(state.copyWith(categoryId: categoryId));
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
    emit(state.copyWith(
      selectedCity: null,
      minPrice: null,
      maxPrice: null,
      condition: null,
      isFreeOnly: false,
      sortBy: SortBy.createdAt,
      sortOrder: SortOrder.desc,
      categoryId: state.categoryId, // نحافظ على الـ category
    ));
    search();
  }

  Future<void> search({bool loadMore = false}) async {
    if (state.searchQuery.isEmpty && state.categoryId == null) {
      emit(state.copyWith(items: [], error: null));
      return;
    }

    if (loadMore && !state.hasMoreItems) return;

    final page = loadMore ? state.currentPage + 1 : 1;

    if (!loadMore) {
      emit(state.copyWith(isLoading: true, error: null));
    } else {
      emit(state.copyWith(isLoadingMore: true));
    }

    try {
      final response = await _apiService.getItems(
        ItemsQueries(
          page: page,
          limit: 10,
          status: ItemStatus.active,
          search: state.searchQuery.isNotEmpty ? state.searchQuery : null,
          categoryId: state.categoryId,
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
        isLoadingMore: false,
        currentPage: page,
        hasMoreItems: hasMore,
        error: null,
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

  void refresh() {
    search();
  }
}