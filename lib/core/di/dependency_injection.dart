import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/auth/logic/email_verification_cubit/email_verification_cubit.dart';
import '../../features/auth/logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/chats/data/services/socket_service.dart';
import '../../features/chats/logic/chat_room/chat_room_cubit.dart';
import '../../features/chats/logic/chats_list/chats_list_cubit.dart';
import '../../features/favorites/logic/favorites_cubit/favorites_cubit.dart';
import '../../features/items/logic/create_item_cubit/create_item_cubit.dart';
import '../../features/items/logic/item_details_cubit/item_details_cubit.dart';
import '../../features/items/logic/items_list_cubit/items_list_cubit.dart';
import '../../features/main_layout/logic/main_layout_cubit/main_layout_cubit.dart';
import '../../features/notifications/logic/notifications_cubit/notifications_cubit.dart';
import '../../features/profile/logic/my_items_cubit/my_items_cubit.dart';
import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../../features/categories/logic/categories_cubit/categories_cubit.dart';
import '../../features/home/logic/home_cubit/home_cubit.dart';
import '../../features/profile/logic/user_profile_cubit/user_profile_cubit.dart';
import '../../features/reports/logic/reports_cubit/reports_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/auth/logic/login_cubit/login_cubit.dart';
import '../../features/auth/logic/register_cubit/register_cubit.dart';
import '../services/auth_service.dart';
import '../services/location_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // ========================== Services ==========================

  // AuthService - Singleton لإدارة الـ Tokens
  getIt.registerLazySingleton<AuthService>(
    () => AuthService(getIt<ApiService>()),
  );

  getIt.registerLazySingleton<LocationService>(() => LocationService());

  // ========================== Auth ==========================

  // Login
  getIt.registerFactory<LoginCubit>(
        () => LoginCubit(
      getIt<ApiService>(),
      getIt<AuthService>(),
      getIt<SocketService>(),
    ),
  );

  // Register
  getIt.registerFactory<RegisterCubit>(
        () => RegisterCubit(
      getIt<ApiService>(),
      // ❌ Remove: AuthService, SocketService
    ),
  );
  // Forgot Password Cubit
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(getIt<ApiService>()),
  );

  // Email Verification Cubit
  getIt.registerFactory<EmailVerificationCubit>(
        () => EmailVerificationCubit(
      getIt<ApiService>(),
      getIt<AuthService>(),
      getIt<SocketService>(),
    ),
  );

  // ========================== Main Layout ==========================

  getIt.registerFactory<MainLayoutCubit>(
    () => MainLayoutCubit(
      getIt<AuthService>(),
      getIt<ApiService>(),
      getIt<SocketService>(),
    ),
  );

  // ========================== Profile ==========================

  getIt.registerFactory<ProfileCubit>(
    () => ProfileCubit(
      getIt<ApiService>(),
      getIt<AuthService>(),
      getIt<SocketService>(),
    ),
  );

  getIt.registerFactoryParam<UserProfileCubit, String, void>(
    (userId, _) => UserProfileCubit(getIt<ApiService>(), userId),
  );

  getIt.registerFactory<MyItemsCubit>(() => MyItemsCubit(getIt(), getIt()));

  // ========================== Categories ==========================

  getIt.registerFactory<CategoriesCubit>(
    () => CategoriesCubit(getIt<ApiService>()),
  );

  // ========================== Home ==========================

  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<ApiService>()));

  // ========================== Items ==========================

  getIt.registerFactoryParam<ItemDetailsCubit, String, void>(
    (itemId, _) => ItemDetailsCubit(getIt<ApiService>(), itemId),
  );

  // ========================== Create Item ==========================

  getIt.registerFactory<CreateItemCubit>(
    () => CreateItemCubit(
      getIt<ApiService>(),
      getIt<LocationService>(),
      getIt<AuthService>(),
    ),
  );

  // ========================== Search ==========================

  getIt.registerFactory<ItemsListCubit>(() => ItemsListCubit(getIt()));

  // ========================== Favorites ==========================

  getIt.registerFactory<FavoritesCubit>(
    () => FavoritesCubit(getIt<ApiService>()),
  );

  // ========================== Notifications ==========================

  getIt.registerFactory<NotificationsCubit>(
    () => NotificationsCubit(getIt<ApiService>()),
  );

  // ========================== Socket Service ==========================
  getIt.registerLazySingleton<SocketService>(() => SocketService());


  // ========================== Chats Cubits ==========================
  getIt.registerFactoryParam<ChatsListCubit, Function(int)?, void>(
    (callback, _) => ChatsListCubit(
      getIt<ApiService>(),
      getIt<SocketService>(),
      onTotalUnreadChanged: callback,
    ),
  );

  getIt.registerFactoryParam<ChatRoomCubit, String, void>(
    (chatId, _) =>
        ChatRoomCubit(getIt<ApiService>(), getIt<SocketService>(), chatId),
  );

  // ========================== Reports Cubits ==========================
  getIt.registerFactory<ReportsCubit>(() => ReportsCubit(getIt<ApiService>()));
}
