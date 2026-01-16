// lib/features/items/data/models/close_item_request.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'close_item_request.freezed.dart';
part 'close_item_request.g.dart';

@freezed
abstract class CloseItemRequest with _$CloseItemRequest {
  @JsonSerializable(includeIfNull: false)
  const factory CloseItemRequest({
    String? buyerId,
  }) = _CloseItemRequest;

  factory CloseItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CloseItemRequestFromJson(json);
}
