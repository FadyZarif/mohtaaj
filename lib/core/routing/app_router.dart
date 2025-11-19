import 'package:flutter/material.dart';
import '../../features/auth/data/models/user_model.dart';
import '../../features/main_layout/ui/screens/main_layout_screen.dart';
import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../../features/profile/ui/screens/edit_profile_screen.dart';
import 'routes.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../../features/auth/ui/login_screen.dart';
import '../../features/auth/ui/register_screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
    // Onboarding
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

    // ========================== Auth Routes ==========================

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

    // TODO: Add forgot password screen
    // case Routes.forgotPasswordScreen:
    //   return MaterialPageRoute(
    //     builder: (_) => const ForgotPasswordScreen(),
    //   );


    // ========================== Main Layout ==========================

      case Routes.mainLayout:
        return MaterialPageRoute(
          builder: (_) => const MainLayoutScreen(),
        );

    // Legacy route - redirect to main layout
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const MainLayoutScreen(),
        );
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

      default:
        return null;
    }
  }
}
