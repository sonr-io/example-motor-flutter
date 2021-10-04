import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class PlatformIcon extends StatelessWidget {
  final String? platform;

  const PlatformIcon({Key? key, this.platform}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPolygon(
      sides: 6,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Icon(platformIconData),
        color: AppColors.secondary3,
      ),
    );
  }

  IconData get platformIconData {
    switch (this.platform) {
      case "android":
        return SimpleIcons.Android;
      case "ios":
        return SimpleIcons.IPhone;
      case "darwin":
        return SimpleIcons.IMac;
      case "linux":
        return SimpleIcons.LinuxDesktop;
      case "windows":
        return SimpleIcons.Windows;
      default:
        return SimpleIcons.Unknown;
    }
  }

  Color get platformColor {
    switch (this.platform) {
      case "android":
        return AppColors.platformsAndroid;
      case "ios":
        return AppColors.platformsIOs;
      case "darwin":
        return AppColors.platformsMacOs;
      case "linux":
        return AppColors.platformsLinux;
      case "windows":
        return AppColors.platformsWindows;
      default:
        return AppColors.secondary1;
    }
  }
}
