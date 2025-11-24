
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../items/data/models/item_model.dart';

part 'favorites_state.freezed.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.success({
    required List<ItemModel> items,
    @Default(1) int currentPage,
    @Default(false) bool hasMoreItems,
  }) = _Success;
  const factory FavoritesState.error(String message) = _Error;
}