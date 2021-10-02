import 'package:sonr_app/style/style.dart';
import 'package:flutter/foundation.dart';

class CommentGenerator {
  /// Prints SVG Icons to Console
  /// - Copy and Paste into Enum to make it visible project wide.
  /// - Set the Project Directory Variable
  static void logSVGIcons() {
    // Update Me
    final projectDir = '/Users/prad/Sonr/app/';

    // Iterate and Print
    for (var s in ComplexIcons.values) {
      debugPrint('/// ### SVGIcons - `${s.value}`');
      debugPrint('/// !["Image of ${s.value}"](${s.fullPath(projectDir)})');
      debugPrint('/// !["Image of ${s.value} as Dots"](${s.fullPath(projectDir, withDots: true)})');
      debugPrint('${s.value},');
      debugPrint('\n');
    }
  }
}

/// ## AnalyticsUserEvent
/// Enum Containing Possible User Analytics Events
enum UserEvent {
  /// User Created SName
  NewSName,

  /// User Linked Device to Account
  LinkedDevice,

  /// User Migrated SName to Latest Spec
  MigratedSName,

  /// User Shared/Copied SName to Share Externally
  SharedSName,

  /// User Updated Contact Card / Profile
  UpdatedProfile,

  /// User Updated App Settings
  UpdatedSettings,
}

/// ## AnalyticsUserEventUtil
/// Enum Extension for `AnalyticsUserEvent`
extension UserEventUtil on UserEvent {
  /// Returns Name of this Event
  String get name {
    // Get Value String
    final value = this.toString().substring(this.toString().indexOf('.') + 1);

    // Create RegExp
    final K_PASCAL_REGEX = RegExp(r"(?:[A-Z]+|^)[a-z]*");

    // Find Words
    final pascalWords = K_PASCAL_REGEX.allMatches(value).map((m) => m[0]).toList();

    // Initialize Name
    String name = "";

    // Iterate Words and Return Name
    pascalWords.forEach((w) {
      if (w != null) {
        name += w;
      }
    });
    return name;
  }
}
