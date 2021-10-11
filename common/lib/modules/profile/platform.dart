import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class PlatformIcon extends StatelessWidget {
  final String? platform;

  const PlatformIcon({Key? key, this.platform}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      child: Icon(platformIconData, size: 12),
      decoration: BoxDecoration(
        color: platformColor,
        shape: BoxShape.circle,
      ),
    );
  }

  IconData get platformIconData {
    switch (this.platform) {
      case "android":
        return SimpleIcons.Android;
      case "ios":
        return SimpleIcons.Apple;
      case "darwin":
        return SimpleIcons.Apple;
      case "linux":
        return SimpleIcons.LinuxDesktop;
      case "windows":
        return SimpleIcons.Windows;
      default:
        return SimpleIcons.Check;
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
