import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mohtaaj/core/routing/routes.dart';
import '../services/auth_service.dart';
import '../di/dependency_injection.dart';

/// Session manager that handles auto-logout after inactivity
class SessionManager {
  static const Duration _inactivityTimeout = Duration(minutes: 30);

  Timer? _inactivityTimer;
  DateTime _lastActivityTime = DateTime.now();
  bool _isActive = false;

  static final SessionManager _instance = SessionManager._internal();
  factory SessionManager() => _instance;
  SessionManager._internal();

  /// Start monitoring user activity
  void startMonitoring(BuildContext context) {
    if (_isActive) return;

    _isActive = true;
    _lastActivityTime = DateTime.now();
    _resetTimer(context);
  }

  /// Stop monitoring
  void stopMonitoring() {
    _isActive = false;
    _inactivityTimer?.cancel();
    _inactivityTimer = null;
  }

  /// Record user activity
  void recordActivity(BuildContext context) {
    if (!_isActive) return;

    _lastActivityTime = DateTime.now();
    _resetTimer(context);
  }

  /// Reset the inactivity timer
  void _resetTimer(BuildContext context) {
    _inactivityTimer?.cancel();
    _inactivityTimer = Timer(_inactivityTimeout, () => _onTimeout(context));
  }

  /// Handle timeout
  void _onTimeout(BuildContext context) {
    if (!_isActive) return;

    final inactiveDuration = DateTime.now().difference(_lastActivityTime);

    if (inactiveDuration >= _inactivityTimeout) {
      _performAutoLogout(context);
    } else {
      // Still active, reset timer
      _resetTimer(context);
    }
  }

  /// Perform automatic logout
  Future<void> _performAutoLogout(BuildContext context) async {
    stopMonitoring();

    final authService = getIt<AuthService>();
    await authService.logout();

    if (context.mounted) {
      // Show dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('انتهت الجلسة'),
          content: const Text('تم تسجيل خروجك تلقائياً بسبب عدم النشاط'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  (route) => false,
                );
              },
              child: const Text('حسناً'),
            ),
          ],
        ),
      );
    }
  }

  /// Get remaining time until timeout
  Duration getRemainingTime() {
    if (!_isActive) return Duration.zero;

    final elapsed = DateTime.now().difference(_lastActivityTime);
    final remaining = _inactivityTimeout - elapsed;

    return remaining.isNegative ? Duration.zero : remaining;
  }

  /// Check if user is still active
  bool get isActive => _isActive;
}

/// Widget wrapper that monitors user activity
class SessionAwareWidget extends StatefulWidget {
  final Widget child;

  const SessionAwareWidget({super.key, required this.child});

  @override
  State<SessionAwareWidget> createState() => _SessionAwareWidgetState();
}

class _SessionAwareWidgetState extends State<SessionAwareWidget>
    with WidgetsBindingObserver {
  final SessionManager _sessionManager = SessionManager();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _sessionManager.startMonitoring(context);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _sessionManager.recordActivity(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _sessionManager.recordActivity(context),
      onPanDown: (_) => _sessionManager.recordActivity(context),
      child: widget.child,
    );
  }
}
