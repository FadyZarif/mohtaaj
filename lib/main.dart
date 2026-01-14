import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/helpers/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/services/auth_service.dart';
import 'mohtaaj_app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();


  // Setup dependency injection
  await setupGetIt();


  // Determine initial route
  final initialRoute = await _determineInitialRoute();

  runApp(
    MohtaajApp(
      appRouter: AppRouter(),
      initialRoute: initialRoute,
    ),
  );

  // Remove native splash
  // FlutterNativeSplash.remove();
}

Future<String> _determineInitialRoute() async {
  // Check if user has seen onboarding
  final hasSeenOnboarding = CacheHelper.getData(key: 'hasSeenOnboarding') ?? false;

  if (!hasSeenOnboarding) {
    return Routes.onboardingScreen;
  }

  // Check auto login
  final authService = getIt<AuthService>();

  final hasRefreshToken = await authService.hasRefreshToken();

  if (!hasRefreshToken) {
    return Routes.loginScreen;
  }

  // Try to refresh token
  // Try to refresh access token
  final success = await authService.refreshAccessToken();
  if (success) {
    return Routes.homeScreen;
  } else {
    // Token expired or invalid
    await authService.logout();
    return Routes.loginScreen;
  }
}