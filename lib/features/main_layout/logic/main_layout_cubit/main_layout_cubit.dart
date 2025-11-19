import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/auth_service.dart';
import 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  final AuthService _authService;

  MainLayoutCubit(this._authService) : super(const MainLayoutState());

  /// Change current tab
  void changeTab(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  /// Check if user is guest
  Future<bool> isGuest() async {
    return !(await _authService.isLoggedIn());
  }

  /// Update unread chats count
  void updateUnreadChatsCount(int count) {
    emit(state.copyWith(unreadChatsCount: count));
  }

  /// Reset to home tab
  void resetToHome() {
    emit(state.copyWith(currentIndex: 0));
  }
}
