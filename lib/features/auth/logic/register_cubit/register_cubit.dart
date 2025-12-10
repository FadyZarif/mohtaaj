import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/helpers/location_data.dart';
import '../../../chats/data/services/socket_service.dart';
import '../../data/models/register_request.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final ApiService _apiService;
  final AuthService _authService;
  final SocketService _socketService;

  RegisterCubit(this._apiService, this._authService, this._socketService) : super(const RegisterState.initial());

  String? detectedCity;
  String? detectedCountry;
  String? detectedPhoneCode;

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
        final placemark = placemarks[0];

        // Get English names from geocoding
        final englishCountry = placemark.country ?? 'Egypt';

        // Convert to Arabic
        detectedCountry = LocationData.getArabicCountry(englishCountry);

        // Smart city detection with fallback logic
        detectedCity = LocationData.detectCityFromPlacemark(
          locality: placemark.locality,
          subAdministrativeArea: placemark.subAdministrativeArea,
          administrativeArea: placemark.administrativeArea,
          arabicCountry: detectedCountry!,
        );

        // Get phone country code
        // detectedPhoneCode = LocationData.getCodeByCountry(detectedCountry!);
        detectedPhoneCode = placemark.isoCountryCode;

        emit(RegisterState.locationDetected(
          city: detectedCity!,
          country: detectedCountry!,
          phoneCountryCode: detectedPhoneCode!,
        ));
      } else {
        // Default values
        detectedCity = 'القاهرة';
        detectedCountry = 'مصر';
        detectedPhoneCode = 'EG';

        emit(RegisterState.locationDetected(
          city: detectedCity!,
          country: detectedCountry!,
          phoneCountryCode: detectedPhoneCode!,
        ));
      }
    } catch (error) {
      // Set defaults on error
      detectedCity = 'القاهرة';
      detectedCountry = 'مصر';
      detectedPhoneCode = 'EG';

      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.locationError(
        apiError.message ?? 'حدث خطأ في تحديد الموقع',
      ));
    }
  }

  /// Register user
  Future<void> register(RegisterRequest request) async
  {
    emit(const RegisterState.loading());

    try {
      final response = await _apiService.register(
        request
      );

      // Save tokens
      await _authService.saveTokens(
        accessToken: response.data.tokens.accessToken,
        refreshToken: response.data.tokens.refreshToken,
      );


      // Save user ID
      await _authService.saveUserId(response.data.user.id);

      // Save user Data
      await _authService.saveUserData(response.data.user);

      // ✅ سجل الـ userId
      if (getIt.isRegistered<String>(instanceName: 'userId')) {
        await getIt.unregister<String>(instanceName: 'userId');
      }
      getIt.registerSingleton<String>(
        response.data.user.id,
        instanceName: 'userId',
      );

      // ✅ Connect Socket
      await _socketService.connect();

      emit(const RegisterState.success('تم التسجيل بنجاح'));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.error(
        apiError.message ?? 'حدث خطأ أثناء التسجيل',
      ));
    }
  }
}