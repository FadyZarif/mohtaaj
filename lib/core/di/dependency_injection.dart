import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/favorites/logic/favorites_cubit/favorites_cubit.dart';
import '../../features/items/logic/create_item_cubit/create_item_cubit.dart';
import '../../features/items/logic/item_details_cubit/item_details_cubit.dart';
import '../../features/items/logic/items_list_cubit/items_list_cubit.dart';
import '../../features/main_layout/logic/main_layout_cubit/main_layout_cubit.dart';
import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../../features/categories/logic/categories_cubit/categories_cubit.dart';
import '../../features/home/logic/home_cubit/home_cubit.dart';
import '../../features/profile/logic/user_profile_cubit/user_profile_cubit.dart';
import '../../features/search/logic/search_cubit/search_cubit.dart';
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
        () => LoginCubit(getIt<ApiService>(),getIt<AuthService>()),
  );

  // Register
  getIt.registerFactory<RegisterCubit>(
        () => RegisterCubit(getIt<ApiService>(),getIt<AuthService>()),
  );

  // ========================== Main Layout ==========================

  getIt.registerFactory<MainLayoutCubit>(
        () => MainLayoutCubit(getIt<AuthService>()),
  );

  // ========================== Profile ==========================

  getIt.registerFactory<ProfileCubit>(
          () => ProfileCubit(
        getIt<ApiService>(),
        getIt<AuthService>(),
      ));

  getIt.registerFactoryParam<UserProfileCubit, String, void>(
        (userId, _) => UserProfileCubit(getIt<ApiService>(), userId),
  );

  // ========================== Categories ==========================

  getIt.registerFactory<CategoriesCubit>(
        () => CategoriesCubit(getIt<ApiService>()),
  );

  // ========================== Home ==========================

  getIt.registerFactory<HomeCubit>(
        () => HomeCubit(getIt<ApiService>()),
  );


  // ========================== Items ==========================

  getIt.registerFactoryParam<ItemDetailsCubit, String, void>(
        (itemId, _) => ItemDetailsCubit(getIt<ApiService>(), itemId),
  );

  // ========================== Create Item ==========================

  getIt.registerFactory<CreateItemCubit>(
        () => CreateItemCubit(getIt<ApiService>(), getIt<LocationService>()),
  );

  // ========================== Search ==========================

  getIt.registerFactory<ItemsListCubit>(
        () => ItemsListCubit(getIt()),
  );

  // ========================== Favorites ==========================

  getIt.registerFactory<FavoritesCubit>(
        () => FavoritesCubit(getIt<ApiService>()),
  );
}
