import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_queries.freezed.dart';

part 'items_queries.g.dart';


enum SortOrder {
  asc,
  desc,
}
@freezed
abstract class ItemsQueries with _$ItemsQueries {
  const factory ItemsQueries({
    int? page,

    int? limit,

    String? category,

    String? condition,

    String? status,

    String? city,

    bool? isFree,

    bool? isFeatured,

    String? search,

    String? sortBy,

    SortOrder? sortOrder,

    // String? minPrice,
    // String? maxPrice,
  }) = _ItemsQueries;

  factory ItemsQueries.fromJson(Map<String, dynamic> json) =>
      _$ItemsQueriesFromJson(json);
}
