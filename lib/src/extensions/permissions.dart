import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sonr_plugin/src/proto/api/location.dart';

enum Permissions {
  /// Phone Camera Access
  Camera,

  /// Phone Media Gallery Access. `(iOS)` Photos, `(Android)` Storage
  Gallery,

  /// App Notifications Permission
  Notifications,

  // Phone Location Access
  Location,
}

extension PermissionsUtil on Permissions {
  /// Request dialog Title
  String get dialogTitle => "Needs $name";

  /// If the user granted this permission.
  Future<bool> get isGranted async {
    switch (this) {
      case Permissions.Camera:
        return await Permission.camera.isGranted;

      case Permissions.Notifications:
        return await Permission.notification.isGranted;

      case Permissions.Gallery:
        if (Platform.isIOS) {
          return await Permission.photos.isGranted;
        } else {
          return await Permission.storage.isGranted;
        }
      case Permissions.Location:
        final result = await Geolocator.checkPermission();
        return result.isGranted();
    }
  }

  /// If the user has NOT granted this permission.
  Future<bool> get isNotGranted async => !await this.isGranted;

  /// Returns Permissions Enum as Name
  String get name => this.toString().substring(this.toString().indexOf('.') + 1);

  /// Request the user for access to this `Permissions`,
  /// if access hasn't already been grant access before.
  ///
  /// Returns the new [PermissionStatus].
  Future<bool> request() async {
    if (await isNotGranted) {
      switch (this) {
        case Permissions.Camera:
          return await Permission.camera.request().isGranted;

        case Permissions.Notifications:
          return await Permission.notification.request().isGranted;

        case Permissions.Gallery:
          if (Platform.isIOS) {
            return await Permission.photos.request().isGranted;
          } else {
            return await Permission.storage.request().isGranted;
          }
        case Permissions.Location:
          final result = await Geolocator.requestPermission();
          return result.isGranted();
      }
    }
    return false;
  }

  /// OpenSettings opens to AppSpecific Settings by Permission
  Future<void> openSettings() async {
    switch (this) {
      case Permissions.Camera:
        await AppSettings.openAppSettings();
        break;
      case Permissions.Gallery:
        await AppSettings.openAppSettings();
        break;
      case Permissions.Notifications:
        await AppSettings.openNotificationSettings();
        break;
      case Permissions.Location:
        await AppSettings.openLocationSettings();
        break;
    }
  }
}
