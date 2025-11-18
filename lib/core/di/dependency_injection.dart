import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
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
}
