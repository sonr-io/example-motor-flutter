// Packages
export 'package:intercom_flutter/intercom_flutter.dart';

// Imports
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### SonrServices
/// Initialize and Check Services
class AppServices {
  /// #### Application Services
  static Future<void> init() async {
    // Initialize Services
    await dotenv.load(fileName: ".env");
    await Get.putAsync(() => SonrService().init(), permanent: true);
  }

  /// #### Returns Excluded Sentry Modules
  static List<String> get excludedModules => [
        'open_file',
        'animated_widgets',
        'get',
        'path_provider',
        'camerawesome_plugin',
        'file_picker',
      ];

  // /// #### Returns APIKeys from `Env.dart`
  // static APIKeys get apiKeys => APIKeys(
  //       ipApiKey: dotenv.env['IP_KEY'],
  //       rapidApiKey: dotenv.env['RAPID_KEY'],
  //       handshakeKey: dotenv.env['HS_KEY'],
  //       handshakeSecret: dotenv.env['HS_SECRET'],
  //       textileKey: dotenv.env['HUB_KEY'],
  //       textileSecret: dotenv.env['HUB_SECRET'],
  //       pushKeyPath: DeviceService.pushKeyPath,
  //     );

  /// #### Returns Handshake API Key/Secret
  static Tuple<String, String> get handshakeKeys => Tuple(
        dotenv.env['HS_KEY'] ?? '',
        dotenv.env['HS_SECRET'] ?? '',
      );

  /// #### Returns Intercom App ID/iOS Key/Android Key
  static Triple<String, String, String> get intercomKeys => Triple(
        dotenv.env['INTERCOM_APP_ID'] ?? '',
        dotenv.env['INTERCOM_IOS_KEY'] ?? '',
        dotenv.env['INTERCOM_ANDROID_KEY'] ?? '',
      );
}
