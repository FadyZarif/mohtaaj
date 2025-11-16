import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial());

  int currentPage = 0;

  void onPageChanged(int index) {
    currentPage = index;
    emit(OnboardingState.pageChanged(index));
  }

  void nextPage() {
    if (currentPage < 2) {
      currentPage++;
      emit(OnboardingState.pageChanged(currentPage));
    } else {
      emit(const OnboardingState.completed());
    }
  }

  void skipOnboarding() {
    emit(const OnboardingState.completed());
  }
}
