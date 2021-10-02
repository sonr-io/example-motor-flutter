import 'package:introduction_screen/introduction_screen.dart';
import 'package:sonr_app/style/style.dart';

enum PermsPageType {
  Location,
  Gallery,
  Notifications,
}

extension PermsPageTypeUtils on PermsPageType {
  /// Return Image Path for Type
  String get imagePath {
    final basePath = "assets/images/illustrations/";
    switch (this) {
      case PermsPageType.Location:
        return basePath + "LocationPerm.png";
      case PermsPageType.Gallery:
        return basePath + "MediaPerm.png";
      case PermsPageType.Notifications:
        return basePath + "Secure.png";
    }
  }

  /// Returns This Panels Page View Model
  PageViewModel pageViewModel() {
    return PageViewModel(
        decoration: PageDecoration(
          fullScreen: true,
        ),
        titleWidget: Container(),
        bodyWidget: Container(),
        image: Container(
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fitHeight,
              ),
            )));
  }
}
