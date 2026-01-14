import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../chats/data/models/chat_model.dart';
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

      // Check if favorited
      bool isFavorited = false;
      try {
        final checkResponse = await _apiService.checkIfFavorited(itemId);
        isFavorited = checkResponse.data.isFavorited;
      } catch (_) {
        // If not authenticated, isFavorited stays false
      }

      // Get similar items
      try {
        final similarResponse = await _apiService.getSimilarItems(itemId, 4);
        emit(
          ItemDetailsState.success(
            item: item,
            similarItems: similarResponse.data,
            isFavorite: isFavorited,
          ),
        );
      } catch (_) {
        // If similar items fail, still show the item
        emit(ItemDetailsState.success(item: item, isFavorite: isFavorited));
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
        emit(
          ItemDetailsState.success(
            item: item,
            similarItems: similarItems,
            isFavorite: !isFavorite,
          ),
        );

        try {
          if (isFavorite) {
            await _apiService.removeFromFavorites(itemId);
          } else {
            await _apiService.addToFavorites(itemId, {});
          }
        } catch (error, s) {
          if (kDebugMode) {
            print(error);
          }
          if (kDebugMode) {
            print(s);
          }
          // Revert on error
          emit(
            ItemDetailsState.success(
              item: item,
              similarItems: similarItems,
              isFavorite: isFavorite,
            ),
          );
        }
      },
      orElse: () {},
    );
  }

  Future<String?> getOrCreateChat() async {
    try {
      // ✅ استخدم mapOrNull
      final result = await state.mapOrNull(
        success: (successState) async {
          final item = successState.item;

          if (item.owner == null) {
            if (kDebugMode) {
              print('⚠️ Owner not found');
            }
            return null;
          }

          if (kDebugMode) {
            print('🔄 Creating chat for item: ${item.id}');
          }

          final response = await _apiService.createChat(
            CreateChatRequest(type: ChatType.item, itemId: item.id),
          );

          if (kDebugMode) {
            print('✅ Chat created: ${response.data.id}');
          }
          return response.data.id;
        },
      );

      return result;
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print('❌ Error in getOrCreateChat: $e');
      }
      if (kDebugMode) {
        print('Stack trace: $stackTrace');
      }
      return null;
    }
  }
}
