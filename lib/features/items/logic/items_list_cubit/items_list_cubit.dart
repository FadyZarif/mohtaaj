// lib/features/items/logic/items_list_cubit/items_list_cubit.dart
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../data/models/item_model.dart';
import '../../data/models/items_queries.dart';
import 'items_list_state.dart';

class ItemsListCubit extends Cubit<ItemsListState> {
  final ApiService _apiService;

  ItemsListCubit(this._apiService) : super(const ItemsListState());

  void setCategoryId(String categoryId) {
    emit(state.copyWith(categoryId: categoryId));
  }

  void updateSearchQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void updateCategory(String? categoryId) {
    emit(state.copyWith(categoryId: categoryId));
  }

  void updateCountry(String? country) {
    emit(state.copyWith(
      selectedCountry: country,
      selectedCity: null, // Reset city when country changes
    ));
  }

  void updateCity(String? city) {
    emit(state.copyWith(selectedCity: city));
  }

  void updateLocation(double? lat, double? lng, double radiusKm) {
    emit(state.copyWith(
      latitude: lat,
      longitude: lng,
      radiusKm: radiusKm,
      // Clear country and city when location is selected
      selectedCountry: null,
      selectedCity: null,
    ));
  }

  void clearLocation() {
    emit(state.copyWith(
      latitude: null,
      longitude: null,
      radiusKm: 5.0,
    ));
  }

  void updatePriceRange(String? minPrice, String? maxPrice) {
    emit(state.copyWith(minPrice: minPrice, maxPrice: maxPrice));
  }

  void updateCondition(ItemCondition? condition) {
    emit(state.copyWith(condition: condition));
  }

  void toggleFreeOnly() {
    emit(state.copyWith(isFreeOnly: !state.isFreeOnly));
  }

  void updateSort(SortBy sortBy, SortOrder sortOrder) {
    emit(state.copyWith(sortBy: sortBy, sortOrder: sortOrder));
  }

  void clearFilters() {
    emit(state.copyWith(
      selectedCountry: null,
      selectedCity: null,
      minPrice: null,
      maxPrice: null,
      condition: null,
      isFreeOnly: false,
      sortBy: SortBy.createdAt,
      sortOrder: SortOrder.desc,
      latitude: null,
      longitude: null,
      radiusKm: 5.0,
      categoryId: state.categoryId, // نحافظ على الـ category
    ));
    search();
  }

  // Helper function to calculate bounding box from center point and radius
  Map<String, double>? _calculateBoundingBox(double? lat, double? lng, double radiusKm) {
    if (lat == null || lng == null) return null;

    // Earth's radius in kilometers
    const earthRadiusKm = 6371.0;

    // Convert radius to radians
    final radiusRad = radiusKm / earthRadiusKm;

    // Convert lat/lng to radians
    final latRad = lat * pi / 180;
    final lngRad = lng * pi / 180;

    // Calculate min/max latitude
    final minLat = latRad - radiusRad;
    final maxLat = latRad + radiusRad;

    // Calculate min/max longitude
    final deltaLng = asin(sin(radiusRad) / cos(latRad));
    final minLng = lngRad - deltaLng;
    final maxLng = lngRad + deltaLng;

    // Convert back to degrees
    return {
      'minLat': minLat * 180 / pi,
      'maxLat': maxLat * 180 / pi,
      'minLng': minLng * 180 / pi,
      'maxLng': maxLng * 180 / pi,
    };
  }

  Future<void> search({bool loadMore = false}) async {
    // Allow search with any filter, not just searchQuery or categoryId
    // Removed the condition to allow filter-only searches

    if (loadMore && !state.hasMoreItems) return;

    final page = loadMore ? state.currentPage + 1 : 1;

    if (!loadMore) {
      emit(state.copyWith(isLoading: true, error: null));
    } else {
      emit(state.copyWith(isLoadingMore: true));
    }

    try {
      // Calculate bounding box if location-based search is enabled
      final boundingBox = _calculateBoundingBox(
        state.latitude,
        state.longitude,
        state.radiusKm,
      );

      final response = await _apiService.getItems(
        ItemsQueries(
          page: page,
          limit: 10,
          status: ItemStatus.active,
          search: state.searchQuery.isNotEmpty ? state.searchQuery : null,
          categoryId: state.categoryId,
          city: boundingBox == null ? state.selectedCity : null, // Use city only if no location search
          minPrice: state.minPrice?.isNotEmpty == true ? state.minPrice : null,
          maxPrice: state.maxPrice?.isNotEmpty == true ? state.maxPrice : null,
          condition: state.condition,
          isFree: state.isFreeOnly ? true : null,
          sortBy: state.sortBy,
          sortOrder: state.sortOrder,
          // Location-based search parameters
          minLat: boundingBox?['minLat'],
          maxLat: boundingBox?['maxLat'],
          minLng: boundingBox?['minLng'],
          maxLng: boundingBox?['maxLng'],
        ),
      );

      final newItems = response.data.items;
      final hasMore = page < response.data.meta.totalPages;

      emit(state.copyWith(
        items: loadMore ? [...state.items, ...newItems] : newItems,
        isLoading: false,
        isLoadingMore: false,
        currentPage: page,
        hasMoreItems: hasMore,
        error: null,
      ));
    } catch (error,s) {
      print(error);
      print(s);
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        error: errorMessage,
      ));
    }
  }

  void refresh() {
    search();
  }
}