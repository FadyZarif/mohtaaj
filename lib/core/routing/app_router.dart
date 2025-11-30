import 'package:flutter/material.dart';
import '../../features/auth/data/models/user_model.dart';
import '../../features/categories/data/models/category_model.dart';
import '../../features/categories/ui/screens/categories_screen.dart';
import '../../features/categories/ui/screens/category_items_screen.dart';
import '../../features/favorites/ui/screens/favorites_screen.dart';
import '../../features/items/ui/screens/item_details_screen.dart';
import '../../features/main_layout/ui/screens/main_layout_screen.dart';
import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../../features/profile/ui/screens/edit_profile_screen.dart';
import '../../features/profile/ui/screens/user_profile_screen.dart';
import '../../features/search/ui/screens/search_screen.dart';
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

      // ========================== Categories Routes ==========================

      // Categories Screen
      case Routes.categoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        );

      // Category Items Screen
      case Routes.categoryItemsScreen:
        final category = settings.arguments as CategoryModel;
        return MaterialPageRoute(
          builder: (_) => CategoryItemsScreen(category: category),
        );

      default:
        return null;
    }
  }
}
