
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../items/data/models/item_model.dart';

part 'favorites_response.freezed.dart';
part 'favorites_response.g.dart';

@freezed
abstract class FavoritesResponse with _$FavoritesResponse {
  const factory FavoritesResponse({
    required bool success,
    required FavoritesData data,
    required String timestamp,
  }) = _FavoritesResponse;

  factory FavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoritesResponseFromJson(json);
}

@freezed
abstract class FavoritesData with _$FavoritesData {
  const factory FavoritesData({
    required List<ItemModel> items,
    required FavoritesMeta meta,
  }) = _FavoritesData;

  factory FavoritesData.fromJson(Map<String, dynamic> json) =>
      _$FavoritesDataFromJson(json);
}

@freezed
abstract class FavoritesMeta with _$FavoritesMeta {
  const factory FavoritesMeta({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _FavoritesMeta;

  factory FavoritesMeta.fromJson(Map<String, dynamic> json) =>
      _$FavoritesMetaFromJson(json);
}