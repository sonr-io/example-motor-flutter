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
        primaryColor: AppColors.primaryLight,
        backgroundColor: AppColors.neutrals8,
        dividerColor: AppColors.neutrals4,
        scaffoldBackgroundColor: AppColors.neutrals7,
        splashColor: Colors.transparent,
        errorColor: AppColors.primary3,
        focusColor: AppColors.neutrals1,
        hintColor: AppColors.neutrals2,
        cardColor: AppColors.neutrals7,
        canvasColor: AppColors.neutrals7,
        shadowColor: AppColors.neutrals6,
      );

  /// Returns Dark Theme for App
  static ThemeData get DarkTheme => ThemeData(
        brightness: Brightness.dark,
        dividerColor: AppColors.neutrals3,
        primaryColor: AppColors.primaryDark,
        backgroundColor: AppColors.neutrals1,
        scaffoldBackgroundColor: AppColors.neutrals1,
        splashColor: Colors.transparent,
        errorColor: AppColors.primary3,
        focusColor: AppColors.neutrals7,
        hintColor: AppColors.neutrals5,
        cardColor: AppColors.neutrals2,
        canvasColor: AppColors.neutrals2,
        shadowColor: AppColors.neutrals2,
      );
}
