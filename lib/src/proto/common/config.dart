import 'dart:async';
import 'dart:io';
import 'package:app_settings/app_settings.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:path_provider/path_provider.dart';
import '../../src.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:network_info_plus/network_info_plus.dart';

class Config {
  /// Method creates a Folder in the Documents Directory and returns the path
  static Future<String> createFolderInAppDocDir(String folderName) async {
    //Get this App Document Directory
    final Directory _appDocDir = await getApplicationDocumentsDirectory();
    //App Document Directory + folder name
    final Directory _appDocDirFolder = Directory('${_appDocDir.path}/$folderName/');

    if (await _appDocDirFolder.exists()) {
      //if folder already exists return path
      return _appDocDirFolder.path;
    } else {
      //if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder = await _appDocDirFolder.create(recursive: true);
      return _appDocDirNewFolder.path;
    }
  }

  /// Method Gets Environment
  static Future<Environment> getEnvironment() async {
    return BuildModeUtil.toEnvironment();
  }

  /// Method gets device info
  static Future<InitializeRequest_DeviceOptions> getDeviceOpts() async {
    // Get Default Directories
    final documentsPath = await getApplicationDocumentsDirectory();
    final supportPath = await createFolderInAppDocDir('Support');
    final databasePath = await createFolderInAppDocDir('Database');
    final textilePath = await createFolderInAppDocDir('Textile');
    final downloadsPath = await createFolderInAppDocDir('Downloads');
    final temporaryPath = await getTemporaryDirectory();
    final deviceId = await getDeviceId();

    // Return Device Options
    return InitializeRequest_DeviceOptions(
      cacheDir: temporaryPath.path,
      documentsDir: documentsPath.path,
      downloadsDir: downloadsPath,
      databaseDir: databasePath,
      supportDir: supportPath,
      textileDir: textilePath,
      id: deviceId,
    );
  }

  /// Method Gets Connection Info
  static Future<Connection> getConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return Connection.values[connectivityResult.index];
  }

  /// Method gets device id
  static Future<String?> getDeviceId() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    // UUID for Android
    if (Platform.isAndroid) {
      var build = await deviceInfoPlugin.androidInfo;
      return build.androidId;
    }
    // UUID for iOS
    else if (Platform.isIOS) {
      var data = await deviceInfoPlugin.iosInfo;
      return data.identifierForVendor;
    } else {
      return '';
    }
  }

  /// Method gets Network Info
  static Future<InitializeRequest_HostOptions> getHostOptions() async {
    NetworkInfo();
    //var wifiName = await info.getWifiName();
    //var wifiIP = await info.getWifiIP(); // 192.168.1.43
    // if (wifiIP != null) {
    //   return InitializeRequest_HostOptions(listenAddrs: [
    //     InitializeRequest_IPAddress(
    //       name: wifiName,
    //       address: wifiIP,
    //       family: InitializeRequest_IPAddress_Family.IPV4,
    //     )
    //   ]);
    // }
    // var wifiIPv6 = await info.getWifiIPv6(); // 2001:0db8:85a3:0000:0000:8a2e:0370:7334
    // if (wifiIPv6 != null) {
    //   return InitializeRequest_HostOptions(listenAddrs: [
    //     InitializeRequest_IPAddress(
    //       name: wifiName,
    //       address: wifiIP,
    //       family: InitializeRequest_IPAddress_Family.IPV4,
    //     )
    //   ]);
    // }
    return InitializeRequest_HostOptions();
  }
}

/// Build Mode Enum
enum BuildMode { Release, Debug }

extension BuildModeUtil on BuildMode {
  /// Returns Current BuildMode from Foundation
  static BuildMode mode() {
    if (kReleaseMode) {
      return BuildMode.Release;
    } else {
      return BuildMode.Debug;
    }
  }

  /// Checks if Build Mode is Debug
  bool get isDebug => this == BuildMode.Debug && !kReleaseMode;

  /// Checks if Build Mode is Release
  bool get isRelease => this == BuildMode.Release && kReleaseMode;

  /// Converts BuildMode from Foundation into InitializeRequest_LogLevel
  static Environment toEnvironment() {
    if (kReleaseMode) {
      return Environment.PRODUCTION;
    } else {
      return Environment.DEVELOPMENT;
    }
  }
}

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

extension ConnectionUtil on Connection {
  /// Returns Connection Enum as Name
  String get name => this.toString().substring(this.toString().indexOf('.') + 1);

  /// Returns True if Connection is Offline
  bool get isOffline => this == Connection.OFFLINE;

  /// Returns True if Connection is Online
  bool get isOnline => this != Connection.OFFLINE;
}
