import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohtaaj/core/helpers/spacing.dart';
import '../helpers/cache_helper.dart';
import '../routing/routes.dart';
import '../services/auth_service.dart';
import '../di/dependency_injection.dart';
import '../theming/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    _navigateToNextScreen();
  }

  void _setupAnimations() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.65, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.65, curve: Curves.easeOutBack),
      ),
    );

    _animationController.forward();
  }

  Future<void> _navigateToNextScreen() async {
    // Wait for animation to complete
    await Future.delayed(const Duration(milliseconds: 2500));

    if (!mounted) return;

    final nextRoute = await _determineInitialRoute();

    if (!mounted) return;

    Navigator.of(context).pushReplacementNamed(nextRoute);
  }

  Future<String> _determineInitialRoute() async {
    // Check if user has seen onboarding
    final hasSeenOnboarding =
        CacheHelper.getData(key: 'hasSeenOnboarding') ?? false;

    if (!hasSeenOnboarding) {
      return Routes.onboardingScreen;
    }

    // Check auto login
    final authService = getIt<AuthService>();
    final hasRefreshToken = await authService.hasRefreshToken();

    if (!hasRefreshToken) {
      return Routes.loginScreen;
    }

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

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Logo
            FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Image.asset(
                  'assets/logo_trans.png',
                  width: 200.w,
                  height: 200.w,
                ),
              ),
            ),
            verticalSpace(30), // Tagline// App Name
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'محتاج',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.mainColor,
                  letterSpacing: 1,
                ),
              ),
            ),
            verticalSpace(10), // Tagline
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'منصة التبرع والمبادلة',
                style: TextStyle(
                  fontSize: 16,
                  color: ColorsManager.mainColor.withOpacity(0.9),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            verticalSpace(50), // Tagline
            // Loading Indicator
            FadeTransition(
              opacity: _fadeAnimation,
              child: SizedBox(
                width: 40.w,
                height: 40.w,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(ColorsManager.mainColor),
                  strokeWidth: 3,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
