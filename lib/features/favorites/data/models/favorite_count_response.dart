
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_count_response.freezed.dart';
part 'favorite_count_response.g.dart';

@freezed
abstract class FavoriteCountResponse with _$FavoriteCountResponse {
  const factory FavoriteCountResponse({
    required bool success,
    required FavoriteCountData data,
    required String timestamp,
  }) = _FavoriteCountResponse;

  factory FavoriteCountResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteCountResponseFromJson(json);
}

@freezed
abstract class FavoriteCountData with _$FavoriteCountData {
  const factory FavoriteCountData({
    required String itemId,
    required int count,
  }) = _FavoriteCountData;

  factory FavoriteCountData.fromJson(Map<String, dynamic> json) =>
      _$FavoriteCountDataFromJson(json);
}