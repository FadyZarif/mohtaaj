import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'mohtaaj_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Setup dependency injection
  setupGetIt();
  // Check if user has seen onboarding
  await CacheHelper.init();
  final hasSeenOnboarding = CacheHelper.getData(key: 'hasSeenOnboarding') ?? false;


  runApp(
    MohtaajApp(
      appRouter: AppRouter(),
      initialRoute: hasSeenOnboarding
          ? Routes.loginScreen
          : Routes.onboardingScreen,
    ),
  );
}
