import 'package:flutter/material.dart';
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

    // TODO: Add home screen
    case Routes.homeScreen:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(body: Center(child: Text('Home Screen')),),
      );

      default:
        return null;
    }
  }
}
