// features/items/logic/item_details_cubit/item_details_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import 'item_details_state.dart';

class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  final ApiService _apiService;
  final String itemId;

  ItemDetailsCubit(this._apiService, this.itemId)
      : super(const ItemDetailsState.initial());

  Future<void> getItemDetails() async {
    emit(const ItemDetailsState.loading());

    try {
      final itemResponse = await _apiService.getItemById(itemId);
      final item = itemResponse.data;

      // Get similar items
      try {
        final similarResponse = await _apiService.getSimilarItems(itemId, 4);
        emit(ItemDetailsState.success(
          item: item,
          similarItems: similarResponse.data,
        ));
      } catch (_) {
        // If similar items fail, still show the item
        emit(ItemDetailsState.success(item: item));
      }
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(ItemDetailsState.error(errorMessage));
    }
  }

  Future<void> toggleFavorite() async {
    state.maybeWhen(
      success: (item, similarItems, isFavorite) async {
        // Optimistic update
        emit(ItemDetailsState.success(
          item: item,
          similarItems: similarItems,
          isFavorite: !isFavorite,
        ));

        try {
          if (isFavorite) {
            await _apiService.removeFromFavorites(itemId);
          } else {
            await _apiService.addToFavorites(itemId);
          }
        } catch (error) {
          // Revert on error
          emit(ItemDetailsState.success(
            item: item,
            similarItems: similarItems,
            isFavorite: isFavorite,
          ));
        }
      },
      orElse: () {},
    );
  }
}