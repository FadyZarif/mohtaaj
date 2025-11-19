import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohtaaj/features/items/data/models/items_queries.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ApiService _apiService;

  HomeCubit(this._apiService) : super(const HomeState());

  // Load all home data
  Future<void> loadHomeData() async {
    await Future.wait([
      getPopularCategories(),
      getFeaturedItems(),
      getItems(),
    ]);
  }

  // Get Popular Categories
  Future<void> getPopularCategories() async {
    emit(state.copyWith(isCategoriesLoading: true, categoriesError: null));

    try {
      final response = await _apiService.getPopularCategories(4);
      emit(state.copyWith(
        categories: response.data,
        isCategoriesLoading: false,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isCategoriesLoading: false,
        categoriesError: errorMessage,
      ));
    }
  }

  // Get Featured Items
  Future<void> getFeaturedItems() async {
    emit(state.copyWith(isFeaturedLoading: true, featuredError: null));

    try {
      final response = await _apiService.getFeaturedItems(10);
      emit(state.copyWith(
        featuredItems: response.data,
        isFeaturedLoading: false,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isFeaturedLoading: false,
        featuredError: errorMessage,
      ));
    }
  }

  // Get Items (إعلانات مخصصة)
  Future<void> getItems({bool loadMore = false}) async {
    if (loadMore && !state.hasMoreItems) return;

    final page = loadMore ? state.currentPage + 1 : 1;

    if (!loadMore) {
      emit(state.copyWith(isItemsLoading: true, itemsError: null));
    }


    try {
      final response = await _apiService.getItems(ItemsQueries(
        page: page,
        limit: 20,
        status: 'active',
        sortBy: 'createdAt',
        sortOrder: SortOrder.desc,
      ));

      final newItems = response.data.items;
      final hasMore = page < response.data.meta.totalPages;

      emit(state.copyWith(
        items: loadMore ? [...state.items, ...newItems] : newItems,
        isItemsLoading: false,
        currentPage: page,
        hasMoreItems: hasMore,
      ));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isItemsLoading: false,
        itemsError: errorMessage,
      ));
    }
  }

  // Refresh all data
  Future<void> refresh() async {
    emit(const HomeState());
    await loadHomeData();
  }
}
