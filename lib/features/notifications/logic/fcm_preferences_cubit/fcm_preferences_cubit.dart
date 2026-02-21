import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/fcm_preferences_model.dart';
import 'fcm_preferences_state.dart';

class FcmPreferencesCubit extends Cubit<FcmPreferencesState> {
  final ApiService _apiService;

  FcmPreferencesCubit(this._apiService)
      : super(const FcmPreferencesState());

  Future<void> loadPreferences() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final response = await _apiService.getFcmPreferences();
      emit(state.copyWith(isLoading: false, preferences: response.preferences));
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(state.copyWith(isLoading: false, error: apiError.message));
    }
  }

  Future<void> updatePreference(FcmUpdatePreferencesRequest request) async {
    try {
      final response = await _apiService.updateFcmPreferences(request);
      emit(state.copyWith(preferences: response.preferences));
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(state.copyWith(error: apiError.message));
    }
  }

  Future<void> enableAll() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final response = await _apiService.enableAllNotifications();
      emit(state.copyWith(isLoading: false, preferences: response.preferences));
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(state.copyWith(isLoading: false, error: apiError.message));
    }
  }

  Future<void> disableAll() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final response = await _apiService.disableAllNotifications();
      emit(state.copyWith(isLoading: false, preferences: response.preferences));
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(state.copyWith(isLoading: false, error: apiError.message));
    }
  }

  Future<void> resetToDefault() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final response = await _apiService.resetFcmPreferences();
      emit(state.copyWith(isLoading: false, preferences: response.preferences));
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(state.copyWith(isLoading: false, error: apiError.message));
    }
  }
}
