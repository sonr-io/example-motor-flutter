import 'dart:io';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

// ** ─── Snackbar Arguments ────────────────────────────────────────────────────────
/// Class to Provide Snackbar Properties to AppRoute
class SnackArgs {
  // Properties
  final Color? backgroundColor;
  final Color textColor;
  final String? title;
  final String message;
  final Widget icon;
  final Duration? duration;
  final bool shouldIconPulse;
  final SnackPosition position;
  final Gradient? backgroundGradient;
  final SnackStyle? snackStyle;
  final TextButton? mainButton;
  final AnimationController? progressIndicatorController;
  final Color? progressIndicatorBackgroundColor;
  final Animation<Color>? progressIndicatorValueColor;
  final void Function(GetBar<Object>)? onTap;
  final bool? isDismissible;
  final SnackDismissDirection? dismissDirection;

  SnackArgs(
      {required this.title,
      required this.message,
      required this.icon,
      this.backgroundColor,
      this.textColor = AppColors.neutrals8,
      this.backgroundGradient,
      this.snackStyle,
      this.mainButton,
      required this.duration,
      required this.shouldIconPulse,
      required this.position,
      this.progressIndicatorController,
      this.dismissDirection,
      this.progressIndicatorBackgroundColor,
      this.onTap,
      this.isDismissible,
      this.progressIndicatorValueColor});

  /// #### Custom Alert
  factory SnackArgs.alert({
    required String title,
    required String message,
    required Icon icon,
    Color color = Colors.orange,
    SnackPosition position = SnackPosition.BOTTOM,
  }) {
    return SnackArgs(
        title: title, message: message, icon: icon, backgroundColor: color, duration: 2600.milliseconds, shouldIconPulse: false, position: position);
  }

  /// #### Cancelled Operation
  factory SnackArgs.cancelled(String message, {SnackPosition position = SnackPosition.BOTTOM}) {
    return SnackArgs(
        title: "Cancelled.",
        message: message,
        icon: SiliconsLine.stop.white,
        backgroundColor: Colors.yellow,
        duration: 2600.milliseconds,
        shouldIconPulse: false,
        position: position);
  }

  /// #### Error on Operation
  factory SnackArgs.error(String message) {
    Sound.Warning.play();
    return SnackArgs(
      title: "Error",
      message: message,
      icon: SiliconsLine.warning.white,
      backgroundColor: Colors.red,
      duration: 2600.milliseconds,
      shouldIconPulse: false,
      position: SnackPosition.BOTTOM,
    );
  }

  /// #### Invalid Operation
  factory SnackArgs.invalid(String message, {SnackPosition position = SnackPosition.BOTTOM}) {
    return SnackArgs(
      title: "Uh Oh!",
      message: message,
      icon: SiliconsLine.warning.white,
      backgroundColor: Colors.orange[900],
      duration: 2600.milliseconds,
      shouldIconPulse: false,
      position: position,
    );
  }

  /// #### Missing Data
  factory SnackArgs.missing(String message, {bool isLast = false, SnackPosition position = SnackPosition.BOTTOM}) {
    // Get Missing Title
    return SnackArgs(
      title: isLast ? "Almost There!" : ['Wait!', 'Hold Up!', "Uh Oh!"].random(),
      message: message,
      icon: SiliconsLine.warning.white,
      backgroundColor: AppColors.primary3,
      duration: 2600.milliseconds,
      shouldIconPulse: false,
      position: position,
    );
  }

  /// #### Succesful Operation
  factory SnackArgs.success(
    String message, {
    SnackPosition position = SnackPosition.BOTTOM,
    void Function(GetBar<Object>)? onTap,
  }) {
    return SnackArgs(
      title: "Success!",
      onTap: onTap,
      message: message,
      icon: SiliconsLine.check_all.white,
      backgroundColor: Colors.green,
      duration: 2600.milliseconds,
      shouldIconPulse: true,
      position: position,
    );
  }
}

// ** ─── Page-Based Arguments ────────────────────────────────────────────────────────
/// Class to Provide Arguments for HomePage
class HomeArguments {
  final bool isFirstLoad;
  final bool isNewUser;
  final Profile? profile;
  HomeArguments({this.isFirstLoad = false, this.isNewUser = false, this.profile});

  static HomeArguments get FirstLoad => HomeArguments(isFirstLoad: true);
  static HomeArguments NewUser(Profile profile) => HomeArguments(
        isNewUser: true,
        isFirstLoad: true,
        profile: profile,
      );
}

// ** ─── Details Arguments ────────────────────────────────────────────────────────

enum DetailPageType {
  File,
  Media,
  Url,
}

class DetailPageArgs {
  final DetailPageType type;
  final Payload? payload;
  final FileItem? fileItem;
  final UrlItem? urlItem;

  DetailPageArgs(
    this.type, {
    this.payload,
    this.fileItem,
    this.urlItem,
  });

  factory DetailPageArgs.payload(Payload file) => DetailPageArgs(
        DetailPageType.File,
        payload: file,
      );

  factory DetailPageArgs.media(FileItem item, File? file) => DetailPageArgs(
        DetailPageType.Media,
        fileItem: item,
      );

  factory DetailPageArgs.url(UrlItem link) => DetailPageArgs(
        DetailPageType.Url,
        urlItem: link,
      );

  /// Return Body for Arguments
  Widget body() {
    switch (this.type) {
      case DetailPageType.File:
        return DetailFileView(file: this.payload!);
      case DetailPageType.Media:
        return DetailMediaView(item: this.fileItem!);
      case DetailPageType.Url:
        return DetailUrlView(urlLink: this.urlItem!);
    }
  }

  /// Return Title for this Page
  String get title => this.type.toString().substring(this.type.toString().indexOf('.'));
}

enum ErrorPageType { EmptyContacts, EmptyFiles, EmptyLinks, EmptyMedia, PermLocation, PermMedia, PermNotifications, NoNetwork }

extension ErrorPageTypeUtils on ErrorPageType {
  bool get isEmpty => this.toString().contains("Empty");
  bool get isPermission => this.toString().contains("Perm");
  bool get isNetwork => this.toString().contains('Network');
}

class ErrorPageArgs {
  final ErrorPageType type;
  ErrorPageArgs(this.type);

  factory ErrorPageArgs.emptyContacts() => ErrorPageArgs(ErrorPageType.EmptyContacts);
  factory ErrorPageArgs.emptyFiles() => ErrorPageArgs(ErrorPageType.EmptyFiles);
  factory ErrorPageArgs.emptyLinks() => ErrorPageArgs(ErrorPageType.EmptyLinks);
  factory ErrorPageArgs.emptyMedia() => ErrorPageArgs(ErrorPageType.EmptyMedia);
  factory ErrorPageArgs.permLocation() => ErrorPageArgs(ErrorPageType.PermLocation);
  factory ErrorPageArgs.permMedia() => ErrorPageArgs(ErrorPageType.PermMedia);
  factory ErrorPageArgs.permNotifications() => ErrorPageArgs(ErrorPageType.PermNotifications);
  factory ErrorPageArgs.noNetwork() => ErrorPageArgs(ErrorPageType.NoNetwork);

  Color get backgroundColor {
    switch (type) {
      case ErrorPageType.EmptyContacts:
        return Colors.white;
      case ErrorPageType.EmptyFiles:
        return Colors.white;
      case ErrorPageType.EmptyLinks:
        return Color.fromRGBO(159, 177, 192, 1.0);
      case ErrorPageType.EmptyMedia:
        return Color.fromRGBO(240, 244, 244, 1.0);
      default:
        return Get.theme.backgroundColor;
    }
  }

  /// Returns Image Asset Path for Error
  String get imagePath {
    // Initialize Base Path
    final basePath = "assets/images/illustrations/";
    // Get Path
    switch (type) {
      case ErrorPageType.EmptyContacts:
        return basePath + "NoContacts.png";
      case ErrorPageType.EmptyFiles:
        return basePath + "NoFiles.png";
      case ErrorPageType.EmptyLinks:
        return basePath + "NoLinks.png";
      case ErrorPageType.EmptyMedia:
        return basePath + "NoMedia.png";
      case ErrorPageType.PermLocation:
        return basePath + "LocationPerm.png";
      case ErrorPageType.PermMedia:
        return basePath + "MediaPerm.png";
      case ErrorPageType.PermNotifications:
        return basePath + "NotificationsPerm.png";
      case ErrorPageType.NoNetwork:
        return basePath + "ErrorNetwork.png";
      default:
        return "";
    }
  }

  String get buttonText {
    if (type.isEmpty) {
      return "Return Home";
    } else if (type.isPermission) {
      return "Grant";
    } else {
      return "Retry";
    }
  }

  Color get textColor {
    switch (this.type) {
      case ErrorPageType.EmptyLinks:
        return AppColors.neutrals8;
      case ErrorPageType.NoNetwork:
        return AppColors.neutrals8;
      default:
        return AppColors.neutrals1;
    }
  }

  Future<void> action() async {
    if (type == ErrorPageType.PermLocation) {
      await Permissions.Location.request();
    } else if (type == ErrorPageType.PermMedia) {
      await Permissions.Gallery.request();
    } else if (type == ErrorPageType.PermNotifications) {
      await Permissions.Notifications.request();
    } else if (type == ErrorPageType.NoNetwork) {
        AppRoute.close();
    } else {
      AppRoute.close();
    }
  }
}

// ** ─── Activity Arguments ────────────────────────────────────────────────────────
/// Class to Provide Arguments for ActivityPage
class ActivityPageArgs {
  final bool isNewSession;
  ActivityPageArgs({required this.isNewSession});
}
