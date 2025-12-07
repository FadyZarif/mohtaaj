import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/helpers/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/services/auth_service.dart';
import 'features/chats/data/services/socket_service.dart';
import 'mohtaaj_app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();


  // Setup dependency injection
  await setupGetIt();

  // ✅ سجل الـ userId إذا كان User مسجل دخول
  await _registerUserIdIfLoggedIn();


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

Future<void> _registerUserIdIfLoggedIn() async {
  try {
    final authService = getIt<AuthService>();
    final userId = await authService.getUserId();

    if (userId != null && userId.isNotEmpty) {
      // User is logged in - register userId
      if (getIt.isRegistered<String>(instanceName: 'userId')) {
        await getIt.unregister<String>(instanceName: 'userId');
      }
      getIt.registerSingleton<String>(userId, instanceName: 'userId');

      // ✅ Connect Socket
      await getIt<SocketService>().connect();

      print('✅ User ID registered: $userId');
    } else {
      print('ℹ️ No user logged in');
    }
  } catch (e) {
    print('❌ Error registering userId: $e');
  }
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