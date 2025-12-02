// lib/features/profile/logic/my_items_cubit/my_items_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/services/auth_service.dart';
import '../../../items/data/models/item_model.dart';
import '../../../items/data/models/items_queries.dart';
import 'my_items_state.dart';

class MyItemsCubit extends Cubit<MyItemsState> {
  final ApiService _apiService;
  final AuthService _authService;

  MyItemsCubit(this._apiService, this._authService)
      : super(const MyItemsState());

  Future<void> loadMyItems({bool isRefresh = false}) async {
    if (isRefresh) {
      emit(state.copyWith(
        isLoading: true,
        currentPage: 1,
        allItems: [],
        filteredItems: [],
        hasMore: true,
        error: null,
      ));
    } else if (state.isLoading || state.isLoadingMore || !state.hasMore) {
      return;
    }

    if (state.currentPage > 1) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(state.copyWith(isLoading: true));
    }

    try {
      final userId = await _authService.getUserId();
      if (userId == null) {
        emit(state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          error: 'المستخدم غير مسجل',
        ));
        return;
      }

      // ✅ نجيب كل الـ items بدون فلتر
      final queries = ItemsQueries(
        page: state.currentPage,
        limit: 50, // نزود الـ limit عشان نجيب أكبر عدد
      );

      final response = await _apiService.getMyItems(queries);

      final newAllItems = state.currentPage == 1
          ? response.data.items
          : [...state.allItems, ...response.data.items];

      emit(state.copyWith(
        allItems: newAllItems,
        isLoading: false,
        isLoadingMore: false,
        currentPage: state.currentPage + 1,
        hasMore: response.data.items.length >= 50,
        error: null,
      ));

      // ✅ بعد ما نجيب الداتا، نعمل filter
      _applyFilter();
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        error: errorMessage,
      ));
    }
  }

  void changeStatus(ItemStatus? status) {
    emit(state.copyWith(selectedStatus: status));
    _applyFilter(); // ✅ نعمل filter محلي بس
  }

  void _applyFilter() {
    if (state.selectedStatus == null) {
      // لو "الكل" - نعرض كل الـ items
      emit(state.copyWith(filteredItems: state.allItems));
    } else {
      // نفلتر حسب الـ status
      final filtered = state.allItems
          .where((item) => item.status == state.selectedStatus)
          .toList();
      emit(state.copyWith(filteredItems: filtered));
    }
  }

  void refresh() {
    loadMyItems(isRefresh: true);
  }

  Future<void> closeItem(String itemId) async {
    try {
      await _apiService.closeItem(itemId);

      // Update item status in list
      final updatedAllItems = state.allItems.map((item) {
        if (item.id == itemId) {
          return item.copyWith(status: ItemStatus.closed);
        }
        return item;
      }).toList();

      emit(state.copyWith(allItems: updatedAllItems));
      _applyFilter();
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(error: errorMessage));
      rethrow;
    }
  }

  Future<void> deleteItem(String itemId) async {
    try {
      await _apiService.deleteItem(itemId);

      // ✅ نشيله من الـ allItems
      final updatedAllItems = state.allItems
          .where((item) => item.id != itemId)
          .toList();

      emit(state.copyWith(allItems: updatedAllItems));

      // ✅ نعمل filter تاني
      _applyFilter();
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(state.copyWith(error: errorMessage));
      rethrow;
    }
  }
}