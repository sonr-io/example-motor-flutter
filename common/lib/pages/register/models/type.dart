import 'package:sonr_app/pages/register/controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

enum RegisterPageType {
  Name,
  Backup,
  Profile,
  Location,
  Gallery,
  Notifications,
}

extension RegisterPageTypeUtils on RegisterPageType {
  /// Returns ValueKey for Type
  Key? get key => ValueKey<RegisterPageType>(this);

  /// Checks to Use Setup View
  bool get isSetup => this == RegisterPageType.Name || this == RegisterPageType.Backup || this == RegisterPageType.Profile;

  /// Checks to User Permissions View
  bool get isPermissions => this == RegisterPageType.Location || this == RegisterPageType.Gallery || this == RegisterPageType.Notifications;

  /// Checks if Page is First in Grouped List
  bool get isFirst {
    if (this.isPermissions) {
      return RegisterPageTypeUtils.permissionsPageTypes.indexOf(this) == 0;
    } else if (this.isSetup) {
      return RegisterPageTypeUtils.setupPageTypes.indexOf(this) == 0;
    }
    return false;
  }

  /// Checks if Page is First in Grouped List
  bool get isLast {
    if (this.isPermissions) {
      return RegisterPageTypeUtils.permissionsPageTypes.indexOf(this) + 1 == 3;
    } else if (this.isSetup) {
      return RegisterPageTypeUtils.setupPageTypes.indexOf(this) + 1 == 3;
    }
    return false;
  }

  /// Return Index of this Page
  int get index => RegisterPageType.values.indexOf(this);

  /// Return Index Within Group
  int get indexGroup {
    if (this.isPermissions) {
      return RegisterPageTypeUtils.permissionsPageTypes.indexOf(this);
    } else if (this.isSetup) {
      return RegisterPageTypeUtils.setupPageTypes.indexOf(this);
    }
    return -1;
  }

  /// Returns Setup Pages
  static List<RegisterPageType> get setupPageTypes => [
        RegisterPageType.Name,
        RegisterPageType.Backup,
        RegisterPageType.Profile,
      ];

  /// Returns Permissions Pages
  static List<RegisterPageType> get permissionsPageTypes => [
        RegisterPageType.Location,
        RegisterPageType.Gallery,
        RegisterPageType.Notifications,
      ];

  /// Returns Left Button for Setup Page
  Widget leftButton() {
    if (this == RegisterPageType.Backup) {
      return SecondaryButton(onPressed: Get.find<RegisterController>().exportCode, label: "Save");
    } else if (this == RegisterPageType.Profile) {
      return NeutralButton(onPressed: () => Get.find<RegisterController>().nextPage(RegisterPageType.Location), label: "Later");
    } else {
      return Container();
    }
  }

  /// Returns Right Button for Setup Page
  Widget rightButton() {
    if (this == RegisterPageType.Backup) {
      return NeutralButton(onPressed: () => Get.find<RegisterController>().nextPage(RegisterPageType.Profile), label: "Next");
    } else if (this == RegisterPageType.Profile) {
      return PrimaryButton(onPressed: () => Get.find<RegisterController>().nextPage(RegisterPageType.Location), label: "Confirm");
    } else {
      return Container();
    }
  }

  /// Returns Permissions Button Text
  String permissionsButtonText() {
    final value = this.toString().substring(this.toString().indexOf(".") + 1);
    return isPermissions ? "Grant $value" : "";
  }

  /// Returns Button Text Color for Permissions
  Color permissionsButtonColor() {
    if (this.indexGroup == 0) {
      return AppColors.neutrals1;
    }
    return AppColors.neutrals8;
  }

  /// Returns Image Path for Permissions
  String permissionsImagePath() {
    if (isPermissions) {
      if (this == RegisterPageType.Location) {
        return "assets/images/illustrations/LocationPerm.png";
      } else if (this == RegisterPageType.Gallery) {
        return "assets/images/illustrations/MediaPerm.png";
      } else {
        return "assets/images/illustrations/NotificationsPerm.png";
      }
    } else {
      return "";
    }
  }

  /// Returns Checks for Title Bar Gradient Text
  bool get isGradient => this == RegisterPageType.Name;

  /// Returns Setup Title
  String get title {
    switch (this) {
      case RegisterPageType.Name:
        return "SName";
      case RegisterPageType.Backup:
        return "Backup Code";
      case RegisterPageType.Profile:
        return "Profile";
      default:
        return "";
    }
  }

  /// Returns Setup Instruction
  String get instruction {
    switch (this) {
      case RegisterPageType.Name:
        return "Choose Your";
      case RegisterPageType.Backup:
        return "Secure Your";
      case RegisterPageType.Profile:
        return "Edit Your";
      default:
        return "";
    }
  }
}
