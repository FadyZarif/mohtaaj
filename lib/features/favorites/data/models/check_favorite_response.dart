
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_favorite_response.freezed.dart';
part 'check_favorite_response.g.dart';

@freezed
abstract class CheckFavoriteResponse with _$CheckFavoriteResponse {
  const factory CheckFavoriteResponse({
    required bool success,
    required CheckFavoriteData data,
    required String timestamp,
  }) = _CheckFavoriteResponse;

  factory CheckFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckFavoriteResponseFromJson(json);
}

@freezed
abstract class CheckFavoriteData with _$CheckFavoriteData {
  const factory CheckFavoriteData({
    required String itemId,
    required bool isFavorited,
  }) = _CheckFavoriteData;

  factory CheckFavoriteData.fromJson(Map<String, dynamic> json) =>
      _$CheckFavoriteDataFromJson(json);
}