import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohtaaj/features/categories/ui/screens/categories_screen.dart';
import '../../features/auth/data/models/user_model.dart';
import '../../features/categories/data/models/category_model.dart';
import '../../features/chats/logic/chat_room/chat_room_cubit.dart';
import '../../features/chats/logic/chats_list/chats_list_cubit.dart';
import '../../features/chats/ui/screens/chat_room_screen.dart';
import '../../features/chats/ui/screens/chats_list_screen.dart';
import '../../features/favorites/ui/screens/favorites_screen.dart';
import '../../features/items/data/models/item_model.dart';
import '../../features/items/ui/screens/category_items_screen.dart';
import '../../features/items/ui/screens/edit_item_screen.dart';
import '../../features/items/ui/screens/item_details_screen.dart';
import '../../features/main_layout/ui/screens/main_layout_screen.dart';
import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../../features/profile/ui/screens/edit_profile_screen.dart';
import '../../features/profile/ui/screens/my_items_screen.dart';
import '../../features/profile/ui/screens/user_profile_screen.dart';
import '../../features/search/ui/screens/search_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../../features/auth/ui/login_screen.dart';
import '../../features/auth/ui/register_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Onboarding
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // ========================== Auth Routes ==========================

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      // TODO: Add forgot password screen
      // case Routes.forgotPasswordScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgotPasswordScreen(),
      //   );

      // ========================== Main Layout ==========================

      case Routes.mainLayout:
        return MaterialPageRoute(builder: (_) => const MainLayoutScreen());

      // Legacy route - redirect to main layout
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const MainLayoutScreen());
      // Profile Screen route can be added here later
      //   case Routes.myProfileScreen:
      //     return MaterialPageRoute(
      //       builder: (_) => const MyProfileScreen(),
      //     );
      // Edit Profile Screen
      case Routes.editProfileScreen:
        final args = settings.arguments as Map<String, dynamic>;
        final user = args['user'] as UserModel;
        final cubit = args['cubit'] as ProfileCubit;
        return MaterialPageRoute(
          builder: (_) => EditProfileScreen(user: user, cubit: cubit),
        );

    // في app_router.dart:
      case Routes.editItemScreen:
        final item = settings.arguments as ItemModel;
        return MaterialPageRoute(
          builder: (_) => EditItemScreen(item: item),
        );

      // My Items Screen
      case Routes.myItemsScreen:
        return MaterialPageRoute(
          builder: (_) => const MyItemsScreen(),
        );

      // Item Details Screen
      case Routes.itemDetailsScreen:
        final itemId = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => ItemDetailsScreen(itemId: itemId),
        );

      // Search Screen
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );

      // Favorites Screen
      case Routes.favoritesScreen:
        return MaterialPageRoute(
          builder: (_) => const FavoritesScreen(),
        );

      // User Profile Screen
      case Routes.userProfileScreen:
        final userId = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => UserProfileScreen(userId: userId),
        );

      case Routes.categoriesScreen:
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());

      case Routes.categoryItemsScreen:
        final category = settings.arguments as CategoryModel;
        return MaterialPageRoute(
          builder: (_) => CategoryItemsScreen(category: category),
        );

      // Chats List Screen
      case Routes.chatsListScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ChatsListCubit>(),
            child: const ChatsListScreen(),
          ),
        );

     // Chat Room Screen
      case Routes.chatRoomScreen:
        final chatId = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ChatRoomCubit>(param1: chatId),
            child: ChatRoomScreen(chatId: chatId),
          ),
        );
      default:
        return null;
    }
  }
}
