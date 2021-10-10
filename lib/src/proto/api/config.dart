import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import '../../src.dart';
import 'package:device_info_plus/device_info_plus.dart';

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
    final homePath = await getApplicationDocumentsDirectory();
    final temporaryPath = await getTemporaryDirectory();
    final deviceId = await getDeviceId();
    final folders = <String, String>{"HOME": homePath.path, "TEMPORARY": temporaryPath.path};
    // Return Device Options
    return InitializeRequest_DeviceOptions(
      folders: folders,
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

extension ConnectionUtil on Connection {
  /// Returns Connection Enum as Name
  String get name => this.toString().substring(this.toString().indexOf('.') + 1);

  /// Returns True if Connection is Offline
  bool get isOffline => this == Connection.OFFLINE;

  /// Returns True if Connection is Online
  bool get isOnline => this != Connection.OFFLINE;
}
