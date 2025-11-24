
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../items/data/models/items_queries.dart';
import 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final ApiService _apiService;

  FavoritesCubit(this._apiService) : super(const FavoritesState.initial());


  Future<void> getFavorites({bool loadMore = false}) async {
    state.maybeWhen(
      success: (items, currentPage, hasMoreItems) {
        if (loadMore && !hasMoreItems) return;
      },
      orElse: () {},
    );

    final page = state.maybeWhen(
      success: (items, currentPage, hasMoreItems) => loadMore ? currentPage + 1 : 1,
      orElse: () => 1,
    );

    if (!loadMore) {
      emit(const FavoritesState.loading());
    }

    try {
      final response = await _apiService.getMyFavorites(
        ItemsQueries(
          page: page,
          limit: 20,
        ),
      );

      final newItems = response.data.items;
      final hasMore = page < response.data.meta.totalPages;

      state.maybeWhen(
        success: (items, _, __) {
          if (loadMore) {
            emit(FavoritesState.success(
              items: [...items, ...newItems],
              currentPage: page,
              hasMoreItems: hasMore,
            ));
          } else {
            emit(FavoritesState.success(
              items: newItems,
              currentPage: page,
              hasMoreItems: hasMore,
            ));
          }
        },
        orElse: () {
          emit(FavoritesState.success(
            items: newItems,
            currentPage: page,
            hasMoreItems: hasMore,
          ));
        },
      );
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(FavoritesState.error(errorMessage));
    }
  }

  Future<void> removeFromFavorites(String itemId) async {
    state.maybeWhen(
      success: (items, currentPage, hasMoreItems) async {
        // Optimistic update
        final updatedItems = items.where((item) => item.id != itemId).toList();
        emit(FavoritesState.success(
          items: updatedItems,
          currentPage: currentPage,
          hasMoreItems: hasMoreItems,
        ));

        try {
          await _apiService.removeFromFavorites(itemId);
        } catch (error) {
          // Revert on error
          emit(FavoritesState.success(
            items: items,
            currentPage: currentPage,
            hasMoreItems: hasMoreItems,
          ));
        }
      },
      orElse: () {},
    );
  }

  Future<void> refresh() async {
    await getFavorites();
  }
}