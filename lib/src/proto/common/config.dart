import 'dart:async';
import 'dart:io';
import 'package:app_settings/app_settings.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:path_provider/path_provider.dart';
import '../proto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

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

  /// Method Creates New Initialize Request
  /// Given Location, and Profile
  static Future<InitializeRequest> newInitializeRequest({required Location location, required Profile profile}) async {
    // Set Options
    final deviceOpts = await _getDeviceOpts();
    final connection = await _getConnection();
    return InitializeRequest(
      connection: connection,
      location: location,
      profile: profile,
      deviceOptions: deviceOpts,
      environment: BuildModeUtil.toEnvironment(),
    );
  }

  /// Method Gets Environment
  static Future<Environment> getEnvironment() async {
    return BuildModeUtil.toEnvironment();
  }

  /// Method gets device info
  static Future<InitializeRequest_DeviceOptions> _getDeviceOpts() async {
    // Get Default Directories
    final documentsPath = await getApplicationDocumentsDirectory();
    final supportPath = await createFolderInAppDocDir('Support');
    final databasePath = await createFolderInAppDocDir('Database');
    final downloadsPath = await createFolderInAppDocDir('Downloads');
    final temporaryPath = await getTemporaryDirectory();
    final deviceId = await _getDeviceId();

    // Create Mailbox
    final Directory _appDocDirFolder = Directory('${supportPath}/mailbox');
    var mailboxPath = "";
    if (await _appDocDirFolder.exists()) {
      //if folder already exists return path
      mailboxPath = _appDocDirFolder.path;
    } else {
      //if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder = await _appDocDirFolder.create(recursive: true);
      mailboxPath = _appDocDirNewFolder.path;
    }

    // Return Device Options
    return InitializeRequest_DeviceOptions(
      cacheDir: temporaryPath.path,
      documentsDir: documentsPath.path,
      downloadsDir: downloadsPath,
      databaseDir: databasePath,
      mailboxDir: mailboxPath,
      supportDir: supportPath,
      id: deviceId,
    );
  }

  /// Method Gets Connection Info
  static Future<Connection> _getConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return Connection.values[connectivityResult.index];
  }

  /// Method gets device id
  static Future<String?> _getDeviceId() async {
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
