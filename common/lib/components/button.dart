import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String? label;
  final IconData? icon;

  final lightModeDecoration = BoxDecoration(
    color: AppColors.primaryLight,
    borderRadius: AppRadii.radiusButton,
    boxShadow: [AppShadows.depth1],
  );

  final darkModeDecoration = BoxDecoration(
    gradient: AppGradients.gradientPrimaryDark,
    borderRadius: AppRadii.radiusButton,
    boxShadow: [AppShadows.depth1],
  );

  PrimaryButton({
    Key? key,
    required this.onPressed,
    this.label,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return Material(
      type: MaterialType.transparency,
      child: Container(
          child: ObxValue<RxBool>(
              (pressed) => GestureDetector(
                  onTapCancel: () => pressed(false),
                  child: AnimatedScale(
                      scale: pressed.value ? 1.1 : 1.0,
                      duration: 300.milliseconds,
                      child: AnimatedContainer(
                          decoration: Get.isDarkMode ? darkModeDecoration : lightModeDecoration,
                          duration: 450.milliseconds,
                          curve: Curves.ease,
                          width: 198,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(icon ?? SimpleIcons.Unknown, color: Get.theme.focusColor),
                                Text(
                                  label ?? "",
                                  style: AppTextStyles.buttonDefault,
                                ),
                              ],
                            ),
                          )))),
              isPressed)),
    );
  }
}

class DarkButton extends StatelessWidget {
  final Function onPressed;
  final String? label;
  final IconData? icon;

  DarkButton({
    Key? key,
    required this.onPressed,
    this.label,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return Material(
      type: MaterialType.transparency,
      child: Container(
          child: ObxValue<RxBool>(
              (pressed) => GestureDetector(
                  onTapCancel: () => pressed(false),
                  child: AnimatedScale(
                      scale: pressed.value ? 1.1 : 1.0,
                      duration: 300.milliseconds,
                      child: AnimatedContainer(
                          decoration: BoxDecoration(borderRadius: AppRadii.radiusButton, color: AppColors.neutrals2, boxShadow: [AppShadows.depth1]),
                          duration: 450.milliseconds,
                          curve: Curves.ease,
                          width: 198,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(icon ?? SimpleIcons.Unknown, color: Get.theme.focusColor),
                                Text(
                                  label ?? "",
                                  style: AppTextStyles.buttonDefault,
                                ),
                              ],
                            ),
                          )))),
              isPressed)),
    );
  }
}
