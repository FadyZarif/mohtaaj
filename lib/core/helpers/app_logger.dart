import 'package:flutter/foundation.dart';

/// Secure logger that only works in debug mode
class AppLogger {
  static void log(String message, {String? tag}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toString();
      final tagPrefix = tag != null ? '[$tag] ' : '';
      debugPrint('[$timestamp] $tagPrefix$message');
    }
  }

  static void error(String message, {String? tag, Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toString();
      final tagPrefix = tag != null ? '[$tag] ' : '';
      debugPrint('[$timestamp] ❌ $tagPrefix$message');
      if (error != null) {
        debugPrint('Error: $error');
      }
      if (stackTrace != null) {
        debugPrint('StackTrace: $stackTrace');
      }
    }
  }

  static void warning(String message, {String? tag}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toString();
      final tagPrefix = tag != null ? '[$tag] ' : '';
      debugPrint('[$timestamp] ⚠️ $tagPrefix$message');
    }
  }

  static void info(String message, {String? tag}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toString();
      final tagPrefix = tag != null ? '[$tag] ' : '';
      debugPrint('[$timestamp] ℹ️ $tagPrefix$message');
    }
  }

  static void success(String message, {String? tag}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toString();
      final tagPrefix = tag != null ? '[$tag] ' : '';
      debugPrint('[$timestamp] ✅ $tagPrefix$message');
    }
  }
}
