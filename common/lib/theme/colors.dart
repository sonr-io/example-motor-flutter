import 'package:sonr_app/style/style.dart';

class AppColors {
  static Color get primary => Get.isDarkMode ? primaryLight : primaryDark;

  /// Black
  static const neutrals1 = Color(0xff1a1a1a);

  static const neutrals2 = Color(0xff23262f);

  static const neutrals3 = Color(0xff353945);

  static const neutrals4 = Color(0xff777e90);

  static const neutrals5 = Color(0xffb1b5c3);

  static const neutrals6 = Color(0xffe6e8ec);

  static const neutrals7 = Color(0xfff4f5f6);

  static const neutrals8 = Color(0xfffcfcfd);

  /// Primary Color Light Mode
  static const primaryLight = Color(0xff1792ff);

  /// Primary Color for Dark Mode
  static const primaryDark = Color(0xff046de8);

  /// Purple for accent elements
  static const primary2 = Color(0xff9665fd);

  /// Red Color for Error Events
  static const primary3 = Color(0xffff2866);

  /// Green Color for Success Events
  static const primary4 = Color(0xff14b69a);

  /// Blue Accent Color for url links
  static const secondary1 = Color(0xff4bc9f0);

  static const secondary2 = Color(0xffe4d7cf);

  static const secondary3 = Color(0xffffd166);

  /// Accent for Purple Color elements
  static const secondary4 = Color(0xffcdb4db);

  static const platformsIOs = Color(0xff863a83);

  static const platformsMacOs = Color(0xff81b8fb);

  static const platformsAndroid = Color(0xff5ad380);

  static const platformsWindows = Color(0xff204ed8);

  static const platformsLinux = Color(0xfff4af3f);

  AppColors._();
}
