import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:mohtaaj/core/helpers/cache_helper.dart';
import 'package:mohtaaj/core/services/auth_service.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/helpers/location_data.dart';
import '../../data/models/register_request.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final ApiService _apiService;
  final AuthService _authService;

  RegisterCubit(this._apiService, this._authService) : super(const RegisterState.initial());

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
        desiredAccuracy: LocationAccuracy.high,
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
        final englishCity = placemark.locality ??
            placemark.subAdministrativeArea ??
            placemark.administrativeArea ??
            'Cairo';

        // Convert to Arabic
        detectedCountry = LocationData.getArabicCountry(englishCountry);

        // Get cities list for this country
        final citiesList = LocationData.getCitiesByCountry(detectedCountry!);

        // Try to convert city to Arabic
        String arabicCity = LocationData.getArabicCity(englishCity, detectedCountry!);

        // Find matching city from our list
        detectedCity = LocationData.findMatchingCity(arabicCity, citiesList);

        // If no match found, use first city as default
        if (detectedCity == null && citiesList.isNotEmpty) {
          detectedCity = citiesList[0];
        }

        // Get phone country code
        detectedPhoneCode = LocationData.getPhoneCountryCode(detectedCountry!);

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

      emit(const RegisterState.success('تم التسجيل بنجاح'));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.error(
        apiError.message ?? 'حدث خطأ أثناء التسجيل',
      ));
    }
  }
}