import 'package:geolocator/geolocator.dart';
import '../proto.dart';

class LocationUtil {
  /// Checks if Location Services are enabled on the device.
  static Future<bool> isServiceEnabled() async => await Geolocator.isLocationServiceEnabled();

  /// Method determines current position and converts to [Location]
  /// When [requestIfNoPermission] is true, it will request permission if it is not granted.
  static Future<Location> current({bool requestIfNoPermission = true}) async {
    try {
      // Fetch position
      final pos = await _determinePosition(requestIfNoPermission);

      // Create location
      return Location(
        latitude: pos.latitude,
        longitude: pos.longitude,
      );
    } catch (e) {
      print(e);
    }

    // Return Zero'd Location
    return Location(
      latitude: 0,
      longitude: 0,
    );
  }

  /// Method finds the last known location stored in the device
  /// and converts to [Location]
  static Future<Location> lastKnown() async {
    final position = await Geolocator.getLastKnownPosition();

    // Return Zero'd Location
    if (position == null) {
      return Location(
        latitude: 0,
        longitude: 0,
      );
    }

    // Create location
    return Location(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  static Future<Position> _determinePosition(bool requestIfNoPermission) async {
    LocationPermission permission;

    // Test if location services are enabled.
    if (!await isServiceEnabled()) {
      return Future.error('Location services are disabled.');
    }

    // Test if location permissions are granted.
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      if (requestIfNoPermission) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
    }

    // Check if permissions permanently denied.
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}

extension LocationPermissionUtil on LocationPermission {
  /// Checks if the permission is whileInUse or always.
  bool isGranted() => this == LocationPermission.whileInUse || this == LocationPermission.always;

  /// Checks if the permission is denied.
  bool isDenied() => this == LocationPermission.denied;

  /// Checks if the permission is denied forever.
  bool isDeniedForever() => this == LocationPermission.deniedForever;
}
