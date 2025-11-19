import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final ApiService _apiService;

  CategoriesCubit(this._apiService) : super(const CategoriesState.initial());

  Future<void> getCategories() async {
    emit(const CategoriesState.loading());

    try {
      final response = await _apiService.getCategories();
      emit(CategoriesState.success(response.data.items));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(CategoriesState.error(errorMessage));
    }
  }

  Future<void> getPopularCategories({int limit = 5}) async {
    emit(const CategoriesState.loading());

    try {
      final response = await _apiService.getPopularCategories(limit);
      emit(CategoriesState.success(response.data));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(CategoriesState.error(errorMessage));
    }
  }

  Future<void> getCategoryTree() async {
    emit(const CategoriesState.loading());

    try {
      final response = await _apiService.getCategoryTree();
      emit(CategoriesState.success(response.data));
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(CategoriesState.error(errorMessage));
    }
  }
}
