import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/items/logic/item_details_cubit/item_details_cubit.dart';
import '../../features/main_layout/logic/main_layout_cubit/main_layout_cubit.dart';
import '../../features/profile/logic/profile_cubit/profile_cubit.dart';
import '../../features/categories/logic/categories_cubit/categories_cubit.dart';
import '../../features/home/logic/home_cubit/home_cubit.dart';
import '../../features/search/logic/search_cubit/search_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/auth/logic/login_cubit/login_cubit.dart';
import '../../features/auth/logic/register_cubit/register_cubit.dart';
import '../services/auth_service.dart';

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

  // ========================== Search ==========================

  getIt.registerFactory<SearchCubit>(
        () => SearchCubit(getIt<ApiService>()),
  );
}
