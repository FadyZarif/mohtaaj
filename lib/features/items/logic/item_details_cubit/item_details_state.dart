
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/item_model.dart';

part 'item_details_state.freezed.dart';

@freezed
class ItemDetailsState with _$ItemDetailsState {
  const factory ItemDetailsState.initial() = _Initial;
  const factory ItemDetailsState.loading() = _Loading;
  const factory ItemDetailsState.success({
    required ItemModel item,
    @Default([]) List<ItemModel> similarItems,
    @Default(false) bool isFavorite,
  }) = _Success;
  const factory ItemDetailsState.error(String message) = _Error;
}