import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import '../networking/api_service.dart';
import '../../features/notifications/data/models/fcm_token_model.dart';
import '../routing/routes.dart';

class FcmService {
  final ApiService _apiService;
  String? _currentToken;

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  FcmService(this._apiService);

  Future<void> initialize() async {
    await _requestPermissions();

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

    final initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) _handleNotificationTap(initialMessage);

    FirebaseMessaging.onMessage.listen(_onForegroundMessage);
    FirebaseMessaging.instance.onTokenRefresh.listen(_onTokenRefresh);
  }

  Future<void> _requestPermissions() async {
    if (Platform.isIOS) {
      await FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  Future<void> registerCurrentDevice() async {
    try {
      final token = await FirebaseMessaging.instance.getToken();
      if (token == null) {
        debugPrint('⚠️ FCM: No token available');
        return;
      }

      final deviceType = Platform.isIOS ? 'ios' : 'android';

      await _apiService.registerFcmToken(
        FcmRegisterTokenRequest(token: token, deviceType: deviceType),
      );

      _currentToken = token;
      debugPrint('✅ FCM token registered');
    } catch (e) {
      debugPrint('❌ FCM token registration failed: $e');
    }
  }

  Future<void> _onTokenRefresh(String newToken) async {
    try {
      if (_currentToken != null && _currentToken != newToken) {
        final deviceType = Platform.isIOS ? 'ios' : 'android';

        await _apiService.updateFcmToken(
          FcmUpdateTokenRequest(
            oldToken: _currentToken!,
            newToken: newToken,
            deviceType: deviceType,
          ),
        );

        debugPrint('✅ FCM token updated');
      } else {
        // No old token: register fresh
        await registerCurrentDevice();
      }
      _currentToken = newToken;
    } catch (e) {
      debugPrint('❌ FCM token refresh failed: $e');
    }
  }

  Future<void> deleteCurrentToken() async {
    try {
      final token = _currentToken ?? await FirebaseMessaging.instance.getToken();
      if (token == null) return;

      await _apiService.deleteFcmToken(FcmDeleteTokenRequest(token: token));
      _currentToken = null;
      debugPrint('✅ FCM token deleted');
    } catch (e) {
      debugPrint('❌ FCM token deletion failed: $e');
    }
  }

  void _onForegroundMessage(RemoteMessage message) {
    debugPrint('📩 FCM foreground message: ${message.messageId}');
    // Local notification display is handled by the OS on iOS (setForegroundNotificationPresentationOptions).
    // Android foreground notifications require a local notification plugin if desired.
  }

  void _handleNotificationTap(RemoteMessage message) {
    final data = message.data;
    final type = data['type'] as String?;

    debugPrint('🔔 FCM notification tapped: type=$type');

    final navigator = navigatorKey.currentState;
    if (navigator == null) return;

    switch (type) {
      case 'new_message':
        final chatId = data['chatId'] as String?;
        if (chatId != null) {
          navigator.pushNamed(Routes.chatRoomScreen, arguments: chatId);
        }
        break;
      case 'item_favorited':
        final itemId = data['itemId'] as String?;
        if (itemId != null) {
          navigator.pushNamed(Routes.itemDetailsScreen, arguments: itemId);
        }
        break;
      case 'badge_earned':
        navigator.pushNamed(Routes.myBadgesScreen);
        break;
      default:
        // new_offer, offer_accepted, offer_rejected, new_rating,
        // challenge_completed, points_earned, request_fulfilled, others
        navigator.pushNamed(Routes.notificationsScreen);
        break;
    }
  }
}
