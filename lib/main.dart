import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/helpers/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/services/auth_service.dart';
import 'core/services/fcm_service.dart';
import 'features/chats/data/services/socket_service.dart';
import 'firebase_options.dart';
import 'mohtaaj_app.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_native_splash/flutter_native_splash.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Preserve the native splash until we've finished initialization.
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  timeago.setLocaleMessages('ar', timeago.ArMessages());
  timeago.setLocaleMessages('ar_short', timeago.ArShortMessages());

  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Setup dependency injection
  await setupGetIt();

  await getIt<FcmService>().initialize();

  // ✅ سجل الـ userId إذا كان User مسجل دخول
  await _registerUserIdIfLoggedIn();

  runApp(
    MohtaajApp(
      appRouter: AppRouter(),
      initialRoute: Routes.splashScreen,
    ),
  );

  // Remove native splash after the first frame is rendered.
  // Using addPostFrameCallback ensures Flutter has drawn its first frame.
  WidgetsBinding.instance.addPostFrameCallback((_) {
    try {
      FlutterNativeSplash.remove();
    } catch (e) {
      // Ignore if splash removal fails for any reason.
      debugPrint('Failed to remove native splash: $e');
    }
  });
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

      // ✅ Register FCM token
      await getIt<FcmService>().registerCurrentDevice();

      print('✅ User ID registered: $userId');
    } else {
      print('ℹ️ No user logged in');
    }
  } catch (e) {
    print('❌ Error registering userId: $e');
  }
}