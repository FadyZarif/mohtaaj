import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../categories/data/models/category_model.dart';
import '../../../items/data/models/item_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // Categories
    @Default([]) List<CategoryModel> categories,
    @Default(false) bool isCategoriesLoading,
    String? categoriesError,
    
    // Featured Items
    @Default([]) List<ItemModel> featuredItems,
    @Default(false) bool isFeaturedLoading,
    String? featuredError,
    
    // Items (إعلانات مخصصة)
    @Default([]) List<ItemModel> items,
    @Default(false) bool isItemsLoading,
    String? itemsError,
    @Default(1) int currentPage,
    @Default(false) bool hasMoreItems,
  }) = _HomeState;
}
