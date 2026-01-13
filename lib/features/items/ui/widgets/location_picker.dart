import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class LocationPickerDialog extends StatefulWidget {
  final double? initialLatitude;
  final double? initialLongitude;
  final double initialRadius;

  const LocationPickerDialog({
    super.key,
    this.initialLatitude,
    this.initialLongitude,
    this.initialRadius = 5.0,
  });

  @override
  State<LocationPickerDialog> createState() => _LocationPickerDialogState();
}

class _LocationPickerDialogState extends State<LocationPickerDialog> {
  final MapController _mapController = MapController();
  LatLng? _selectedLocation;
  double _radius = 5.0; // km
  bool _isLoadingCurrentLocation = false;

  @override
  void initState() {
    super.initState();
    if (widget.initialLatitude != null && widget.initialLongitude != null) {
      _selectedLocation = LatLng(widget.initialLatitude!, widget.initialLongitude!);
    }
    _radius = widget.initialRadius;
  }

  Future<void> _getCurrentLocation() async {
    setState(() => _isLoadingCurrentLocation = true);

    try {
      // Check permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('تم رفض إذن الموقع')),
            );
          }
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('يرجى تفعيل إذن الموقع من الإعدادات')),
          );
        }
        return;
      }

      // Get current position
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        _selectedLocation = LatLng(position.latitude, position.longitude);
      });

      // Animate map to current location
      _mapController.move(_selectedLocation!, 13);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('فشل الحصول على الموقع: $e')),
        );
      }
    } finally {
      setState(() => _isLoadingCurrentLocation = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اختر الموقع',
                  style: TextStyles.font20BlackBold,
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            verticalSpace(16),

            // Map
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    initialCenter: _selectedLocation ?? const LatLng(30.0444, 31.2357), // Cairo default
                    initialZoom: 13,
                    onTap: (tapPosition, point) {
                      setState(() {
                        _selectedLocation = point;
                      });
                    },
                  ),
                  children: [
                    TileLayer(
                      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.mohtaaj.app',
                    ),
                    if (_selectedLocation != null) ...[
                      CircleLayer(
                        circles: [
                          CircleMarker(
                            point: _selectedLocation!,
                            radius: _radius * 1000, // Convert km to meters
                            useRadiusInMeter: true,
                            color: ColorsManager.mainColor.withValues(alpha: 0.2),
                            borderColor: ColorsManager.mainColor,
                            borderStrokeWidth: 2,
                          ),
                        ],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: _selectedLocation!,
                            width: 50.w,
                            height: 50.w,
                            alignment: Alignment.topCenter, // Center the pin on the selected point
                            child: Image.asset(
                              'assets/app_icon.png',
                              width: 50.w,
                              height: 50.w,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),

            verticalSpace(16),

            // Current Location Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: _isLoadingCurrentLocation ? null : _getCurrentLocation,
                icon: _isLoadingCurrentLocation
                    ? SizedBox(
                        width: 16.w,
                        height: 16.w,
                        child: const CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.my_location),
                label: Text(
                  _isLoadingCurrentLocation
                      ? 'جارٍ تحديد الموقع...'
                      : 'استخدم موقعي الحالي',
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: ColorsManager.mainColor,
                  side: BorderSide(color: ColorsManager.mainColor),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),

            verticalSpace(16),

            // Radius Slider
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'نطاق البحث: ${_radius.toStringAsFixed(1)} كم',
                  style: TextStyles.font14BlackMedium,
                ),
                verticalSpace(8),
                Slider(
                  value: _radius,
                  min: 1.0,
                  max: 200.0,
                  divisions: 199,
                  label: '${_radius.toStringAsFixed(1)} كم',
                  activeColor: ColorsManager.mainColor,
                  onChanged: (value) {
                    setState(() {
                      _radius = value;
                    });
                  },
                ),
              ],
            ),

            verticalSpace(16),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: ColorsManager.textSecondary,
                      side: BorderSide(color: ColorsManager.borderColor),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      'إلغاء',
                      style: TextStyles.font14BlackMedium,
                    ),
                  ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _selectedLocation == null
                        ? null
                        : () {
                            Navigator.pop(context, {
                              'latitude': _selectedLocation!.latitude,
                              'longitude': _selectedLocation!.longitude,
                              'radius': _radius,
                            });
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.mainColor,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      'تأكيد',
                      style: TextStyles.font14WhiteMedium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
