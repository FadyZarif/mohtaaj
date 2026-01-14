import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohtaaj/core/helpers/app_dialogs.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../home/ui/screens/home_screen.dart';
import '../../../categories/ui/screens/categories_screen.dart';
import '../../../items/ui/screens/create_item_screen.dart';
import '../../../chats/ui/screens/chats_screen.dart';
import '../../../profile/ui/screens/profile_screen.dart';
import '../../logic/main_layout_cubit/main_layout_cubit.dart';
import '../../logic/main_layout_cubit/main_layout_state.dart';
import '../widgets/custom_bottom_nav.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainLayoutCubit>(),
      child: const _MainLayoutBody(),
    );
  }
}

class _MainLayoutBody extends StatefulWidget {
  const _MainLayoutBody();

  @override
  State<_MainLayoutBody> createState() => _MainLayoutBodyState();
}

class _MainLayoutBodyState extends State<_MainLayoutBody> {
  // Screens list
  final List<Widget> _screens = const [
    HomeScreen(),
    CategoriesScreen(),
    CreateItemScreen(),
    ChatsScreen(),
    ProfileScreen(),
  ];

  // Tabs that require authentication
  final List<int> _authRequiredTabs = [2, 3, 4]; // Create Item, Chats, Profile

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainLayoutCubit, MainLayoutState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.currentIndex,
            children: _screens,
          ),
          bottomNavigationBar: CustomBottomNav(
            currentIndex: state.currentIndex,
            unreadChatsCount: state.unreadChatsCount,
            onTap: (index) => _onTabTapped(context, index),
          ),
        );
      },
    );
  }

  Future<void> _onTabTapped(BuildContext context, int index) async {
    final cubit = context.read<MainLayoutCubit>();

    // Check if tab requires authentication
    if (_authRequiredTabs.contains(index)) {
      final isGuest = await cubit.isGuest();

      // ✅ Check if still mounted
      if (!context.mounted) return;

      if (isGuest) {
        // Show login dialog
        AppDialogs.showLoginRequiredDialog(context);
        return;
      }
    }

    // Change tab
    cubit.changeTab(index);
  }

}
