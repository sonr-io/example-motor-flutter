import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

enum PostItemType { Media, Files, Contacts, Links }

extension PostItemTypeUtils on PostItemType {
  /// Returns `name()` as H3 Text
  Widget title() {
    return Text(name(), style: AppTextStyles.headline05);
  }

  /// Returns `name()` for Button Label
  Widget label() {
    if (Get.isDarkMode) {
      return Text(this.name(), style: AppTextStyles.bodyNormalBold);
    } else {
      return Text(this.name(), style: AppTextStyles.bodyNormalBold);
    }
  }

  /// Returns Enum Value as String
  String name() {
    return this.toString().substring(this.toString().indexOf('.') + 1);
  }

  /// Returns Icon Widget for Type
  Widget icon() {
    return this.iconData().gradient(value: this.gradient(), size: 52);
  }

  Widget image() {
    return Image.asset(
      this.imagePath(),
      fit: BoxFit.fitHeight,
      width: 75,
      height: 75,
    );
  }

  /// Returns Gradient Icon for Type
  Gradient gradient() {
    if (Get.isDarkMode) {
      return AppGradients.gradientCommon06;
    } else {
      return AppGradients.gradientCommon05;
    }
  }

  /// Returns IconData for Type
  IconData iconData() {
    switch (this) {
      case PostItemType.Media:
        return SimpleIcons.Album;
      case PostItemType.Files:
        return SimpleIcons.Folder;
      case PostItemType.Contacts:
        return SimpleIcons.ContactCard;
      case PostItemType.Links:
        return SimpleIcons.Clip;
    }
  }

  /// Returns Image Path for type
  String imagePath() {
    switch (this) {
      case PostItemType.Media:
        return "assets/images/icons/Gallery.png";
      case PostItemType.Files:
        return "assets/images/icons/Files.png";
      case PostItemType.Contacts:
        return "assets/images/icons/Contacts.png";
      case PostItemType.Links:
        return "assets/images/icons/Links.png";
    }
  }

  /// Return Empty Image Index by Type
  String get emptyLabel => "No ${this.toString().substring(this.toString().indexOf('.') + 1)} yet";
}
