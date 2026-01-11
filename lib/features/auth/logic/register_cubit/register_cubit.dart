// lib/features/auth/logic/register_cubit/register_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/helpers/location_data.dart';
import '../../data/models/register_request.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final ApiService _apiService;

  RegisterCubit(this._apiService) : super(const RegisterState.initial());

  String? detectedCity;
  String? detectedCountry;
  String? detectedPhoneCode;

  /// Detect user location
  Future<void> detectLocation() async {
    emit(const RegisterState.detectingLocation());

    try {
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(const RegisterState.locationError('يرجى السماح بالوصول إلى الموقع'));
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(const RegisterState.locationError('يرجى تفعيل صلاحية الموقع من الإعدادات'));
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final placemark = placemarks[0];
        final englishCountry = placemark.country ?? 'Egypt';

        detectedCountry = LocationData.getArabicCountry(englishCountry);
        detectedCity = LocationData.detectCityFromPlacemark(
          locality: placemark.locality,
          subAdministrativeArea: placemark.subAdministrativeArea,
          administrativeArea: placemark.administrativeArea,
          arabicCountry: detectedCountry!,
        );
        detectedPhoneCode = placemark.isoCountryCode;

        emit(RegisterState.locationDetected(
          city: detectedCity!,
          country: detectedCountry!,
          phoneCountryCode: detectedPhoneCode!,
        ));
      } else {
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
      detectedCity = 'القاهرة';
      detectedCountry = 'مصر';
      detectedPhoneCode = 'EG';

      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.locationError(apiError.message ?? 'فشل تحديد الموقع'));
    }
  }

  /// Register user
  Future<void> register(RegisterRequest request) async {
    emit(const RegisterState.loading());

    try {
      final response = await _apiService.register(request);

      // ✅ No tokens anymore - navigate to verification
      // ❌ Remove: saveTokens, saveUserId, saveUserData, socket connect

      emit(RegisterState.success(
        email: request.email, // ✅ Pass email for verification screen
        message: response.data.message,
      ));
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      emit(RegisterState.error(apiError.message ?? 'فشل التسجيل'));
    }
  }
}