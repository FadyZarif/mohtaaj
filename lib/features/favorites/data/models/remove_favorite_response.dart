
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_favorite_response.freezed.dart';
part 'remove_favorite_response.g.dart';

@freezed
abstract class RemoveFavoriteResponse with _$RemoveFavoriteResponse {
  const factory RemoveFavoriteResponse({
    required bool success,
    required RemoveFavoriteData data,
    required String timestamp,
  }) = _RemoveFavoriteResponse;

  factory RemoveFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoveFavoriteResponseFromJson(json);
}

@freezed
abstract class RemoveFavoriteData with _$RemoveFavoriteData {
  const factory RemoveFavoriteData({
    required String message,
  }) = _RemoveFavoriteData;

  factory RemoveFavoriteData.fromJson(Map<String, dynamic> json) =>
      _$RemoveFavoriteDataFromJson(json);
}