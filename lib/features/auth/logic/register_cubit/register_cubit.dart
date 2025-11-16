import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final ApiService _apiService;

  RegisterCubit(this._apiService) : super(const RegisterState.initial());

  String? detectedCity;
  String? detectedCountry;

  /// Detect user location
  Future<void> detectLocation() async {
    emit(const RegisterState.detectingLocation());

    try {
      // Check location permission
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(const RegisterState.locationError(
            'يرجى السماح بالوصول إلى الموقع',
          ));
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(const RegisterState.locationError(
          'يرجى تفعيل صلاحية الموقع من الإعدادات',
        ));
        return;
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      // Get address from coordinates
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        detectedCity = placemarks[0].locality ??
            placemarks[0].subAdministrativeArea ??
            'القاهرة';
        detectedCountry = placemarks[0].country ?? 'مصر';

        emit(RegisterState.locationDetected(
          city: detectedCity!,
          country: detectedCountry!,
        ));
      } else {
        emit(const RegisterState.locationError('لم نتمكن من تحديد موقعك'));
      }
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.locationError(apiError.message));
    }
  }

  /// Register user
  Future<void> register({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String city,
    required String country,
  }) async {
    emit(const RegisterState.loading());

    try {
      await _apiService.register({
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'city': city,
        'country': country,
      });

      // Handle successful registration
      emit(const RegisterState.success('تم التسجيل بنجاح'));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.error(apiError.message));
    }
  }
}