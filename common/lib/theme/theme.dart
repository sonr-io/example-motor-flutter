export 'borders.dart';
export 'colors.dart';
export 'dimensions.dart';
export 'gradients.dart';
export 'radii.dart';
export 'shadows.dart';
export 'text_styles.dart';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';


/// Class Handles Theme Data and General Dark Mode Features
class AppTheme {
  /// Method sets [DarkMode] for Device and Updates [ThemeData]
  static void setDarkMode({required bool isDark}) {
    // Dark Mode
    if (isDark) {
      // Set Status Bar
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarBrightness: Brightness.dark, statusBarIconBrightness: Brightness.light));
    }

    // Light Mode
    else {
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light, statusBarIconBrightness: Brightness.dark));
    }

    // Set Theme Mode
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    Get.changeTheme(isDark ? AppTheme.DarkTheme : AppTheme.LightTheme);
  }

  /// Returns Light Theme for App
  static ThemeData get LightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary1,
        backgroundColor: AppColors.neutrals8,
        dividerColor: AppColors.neutrals4,
        scaffoldBackgroundColor: AppColors.neutrals7,
        fontFamily: 'Montserrat',
        splashColor: Colors.transparent,
        errorColor: AppColors.primary3,
        focusColor: AppColors.neutrals1,
        hintColor: AppColors.neutrals2,
        cardColor: AppColors.neutrals6,
        canvasColor: AppColors.neutrals6,
        shadowColor: AppColors.neutrals3,
      );

  /// Returns Dark Theme for App
  static ThemeData get DarkTheme => ThemeData(
        brightness: Brightness.dark,
        dividerColor: AppColors.neutrals3,
        fontFamily: 'Montserrat',
        primaryColor: AppColors.primary1,
        backgroundColor: Color(0xff15162D),
        scaffoldBackgroundColor: AppColors.neutrals1,
        splashColor: Colors.transparent,
        errorColor: AppColors.primary3,
        focusColor: AppColors.neutrals7,
        hintColor: AppColors.neutrals5,
        cardColor: AppColors.neutrals1,
        canvasColor: AppColors.neutrals1,
        shadowColor: AppColors.neutrals2,
      );
}
