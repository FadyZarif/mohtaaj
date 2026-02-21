import '../../data/models/fcm_preferences_model.dart';

class FcmPreferencesState {
  final bool isLoading;
  final FcmPreferencesModel? preferences;
  final String? error;

  const FcmPreferencesState({
    this.isLoading = false,
    this.preferences,
    this.error,
  });

  FcmPreferencesState copyWith({
    bool? isLoading,
    FcmPreferencesModel? preferences,
    String? error,
  }) {
    return FcmPreferencesState(
      isLoading: isLoading ?? this.isLoading,
      preferences: preferences ?? this.preferences,
      error: error,
    );
  }
}
