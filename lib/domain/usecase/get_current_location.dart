import 'package:flutter_weather/core/usecase/usecase.dart';
import 'package:flutter_weather/domain/usecase/usecase_params.dart';
import 'package:geolocator/geolocator.dart';

class GetCurrentLocation implements UseCase<Position?, Params> {
  GetCurrentLocation();

  @override
  Future<Position?> call(Params params) async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        return Future.value(null);
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          return Future.value(null);
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        return Future.value(null);
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      return await Geolocator.getCurrentPosition();
    } catch (exp) {}
    return Future.value(null);
  }
}
