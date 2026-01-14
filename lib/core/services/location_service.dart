// core/services/location_service.dart

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  // Check if location services are enabled
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  // Check location permission
  Future<bool> checkLocationPermission() async {
    final status = await Permission.location.status;
    return status.isGranted;
  }

  // Request location permission
  Future<bool> requestLocationPermission() async {
    final status = await Permission.location.request();
    return status.isGranted;
  }

  // Get current location
  Future<Position?> getCurrentLocation() async {
    try {
      // Check if location service is enabled
      bool serviceEnabled = await isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw Exception('خدمة الموقع غير مفعلة');
      }

      // Check permission
      bool hasPermission = await checkLocationPermission();
      if (!hasPermission) {
        // Request permission
        hasPermission = await requestLocationPermission();
        if (!hasPermission) {
          throw Exception('لم يتم منح صلاحية الوصول للموقع');
        }
      }

      // Get location
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      );

      return position;
    } catch (e) {
      return null;
    }
  }

  // Get location with error handling
  Future<Map<String, double>?> getLocationCoordinates() async {
    try {
      final position = await getCurrentLocation();
      if (position != null) {
        return {
          'lat': position.latitude,
          'lng': position.longitude,
        };
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}