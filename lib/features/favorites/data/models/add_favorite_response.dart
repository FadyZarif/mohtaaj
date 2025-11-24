
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_favorite_response.freezed.dart';
part 'add_favorite_response.g.dart';

@freezed
abstract class AddFavoriteResponse with _$AddFavoriteResponse {
  const factory AddFavoriteResponse({
    required bool success,
    required AddFavoriteData data,
    required String timestamp,
  }) = _AddFavoriteResponse;

  factory AddFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteResponseFromJson(json);
}

@freezed
abstract class AddFavoriteData with _$AddFavoriteData {
  const factory AddFavoriteData({
    required FavoriteRecord favorite,
    required String message,
  }) = _AddFavoriteData;

  factory AddFavoriteData.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteDataFromJson(json);
}

@freezed
abstract class FavoriteRecord with _$FavoriteRecord {
  const factory FavoriteRecord({
    required String userId,
    required String itemId,
    required DateTime createdAt,
  }) = _FavoriteRecord;

  factory FavoriteRecord.fromJson(Map<String, dynamic> json) =>
      _$FavoriteRecordFromJson(json);
}