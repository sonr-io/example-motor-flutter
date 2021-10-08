

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
}
