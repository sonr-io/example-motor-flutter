
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

enum ButtonIconPosition {
  None,
  Left,
  Right,
}

enum ButtonSize {
  Default,
  Small,
}

enum ButtonType {
  Primary,
  Secondary,
  Neutral,
}

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String? label;
  final IconData? iconData;
  final ButtonIconPosition iconPosition;
  final ButtonSize size;
  final Duration duration;
  final MainAxisSize? mainAxisSize;

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
    this.iconData,
    this.iconPosition = ButtonIconPosition.Left,
    this.duration = const Duration(milliseconds: 450),
    this.size = ButtonSize.Default,
    this.mainAxisSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return ObxValue<RxBool>(
        (pressed) => GestureDetector(
            onTapCancel: () => pressed(false),
            onTapDown: (details) => pressed(true),
            onTapUp: (details) async {
              pressed(false);
              await Future.delayed(duration);
              onPressed();
            },
            child: AnimatedScale(
                scale: pressed.value ? 1.1 : 1.0,
                duration: duration,
                child: Container(
                  decoration: Get.isDarkMode ? darkModeDecoration : lightModeDecoration,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: mainAxisSize ?? MainAxisSize.min,
                    textDirection: iconPosition == ButtonIconPosition.Left ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      Icon(
                        iconData,
                        size: iconData != null ? 16 : 0,
                        color: _ButtonUtility.buildIconColor(ButtonType.Primary, Get.isDarkMode),
                      ),
                      SizedBox(width: iconData != null ? 8 : 0),
                      Text(
                        label ?? "Unknown",
                        style: _ButtonUtility.buildTextStyle(ButtonType.Primary, size, Get.isDarkMode),
                        textAlign: iconPosition == ButtonIconPosition.Left ? TextAlign.left : TextAlign.right,
                      ),
                    ],
                  ),
                ))),
        isPressed);
  }
}

class SecondaryButton extends StatelessWidget {
  final Function onPressed;
  final String? label;
  final IconData? iconData;
  final ButtonIconPosition iconPosition;
  final ButtonSize size;
  final Duration duration;

  final lightModeDecoration = BoxDecoration(
    color: AppColors.neutrals2,
    borderRadius: AppRadii.radiusButton,
    boxShadow: [AppShadows.depth2],
  );

  final darkModeDecoration = BoxDecoration(
    color: AppColors.neutrals8,
    borderRadius: AppRadii.radiusButton,
    boxShadow: [AppShadows.depth2],
  );

  SecondaryButton({
    Key? key,
    required this.onPressed,
    this.label,
    this.iconData,
    this.duration = const Duration(milliseconds: 375),
    this.iconPosition = ButtonIconPosition.Left,
    this.size = ButtonSize.Default,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return ObxValue<RxBool>(
        (pressed) => GestureDetector(
            onTapCancel: () => pressed(false),
            onTapDown: (details) => pressed(true),
            onTapUp: (details) async {
              pressed(false);
              await Future.delayed(duration);
              onPressed();
            },
            child: AnimatedScale(
                scale: pressed.value ? 1.1 : 1.0,
                duration: duration,
                child: Container(
                  decoration: Get.isDarkMode ? darkModeDecoration : lightModeDecoration,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    textDirection: iconPosition == ButtonIconPosition.Left ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      Icon(
                        iconData,
                        size: iconData != null ? 16 : 0,
                        color: _ButtonUtility.buildIconColor(ButtonType.Secondary, Get.isDarkMode),
                      ),
                      Text(
                        label ?? "Unknown",
                        style: _ButtonUtility.buildTextStyle(ButtonType.Secondary, size, Get.isDarkMode),
                        textAlign: iconPosition == ButtonIconPosition.Left ? TextAlign.left : TextAlign.right,
                      ),
                    ],
                  ),
                ))),
        isPressed);
  }
}

class NeutralButton extends StatelessWidget {
  final Function onPressed;
  final String? label;
  final IconData? icon;
  final ButtonIconPosition iconPosition;
  final ButtonSize size;
  final Duration duration;
  final bool disabled;

  final lightModeDecoration = BoxDecoration(
    borderRadius: AppRadii.radiusButton,
    border: Border.fromBorderSide(BorderSide(
      color: AppColors.neutrals6,
      width: 2,
    )),
  );

  final darkModeDecoration = BoxDecoration(
    borderRadius: AppRadii.radiusButton,
    border: Border.fromBorderSide(BorderSide(
      color: AppColors.neutrals4,
      width: 2,
    )),
  );

  NeutralButton({
    Key? key,
    required this.onPressed,
    this.duration = const Duration(milliseconds: 300),
    this.label,
    this.icon,
    this.iconPosition = ButtonIconPosition.Left,
    this.size = ButtonSize.Default,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return ObxValue<RxBool>(
        (pressed) => GestureDetector(
            onTapCancel: () => pressed(false),
            onTapDown: (details) => pressed(true),
            onTapUp: (details) async {
              pressed(false);
              await Future.delayed(duration);
              if (!disabled) {
                onPressed();
              }
            },
            child: AnimatedScale(
                scale: pressed.value ? 1.1 : 1.0,
                duration: duration,
                child: Container(
                  decoration: Get.isDarkMode ? darkModeDecoration : lightModeDecoration,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    textDirection: iconPosition == ButtonIconPosition.Left ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      Icon(
                        icon,
                        size: icon != null ? 16 : 0,
                        color: _ButtonUtility.buildIconColor(ButtonType.Neutral, Get.isDarkMode),
                      ),
                      Text(
                        label ?? "Unknown",
                        style: _ButtonUtility.buildTextStyle(ButtonType.Neutral, size, Get.isDarkMode),
                        textAlign: iconPosition == ButtonIconPosition.Left ? TextAlign.left : TextAlign.right,
                      ),
                    ],
                  ),
                ))),
        isPressed);
  }
}

enum CircleButtonSize {
  Large,
  Default,
  Small,
}

extension _CircleButtonSizeUtil on CircleButtonSize {
  double get allPadding {
    switch (this) {
      case CircleButtonSize.Large:
        return 28;
      case CircleButtonSize.Default:
        return 16;
      case CircleButtonSize.Small:
        return 8;
    }
  }

  double get iconSize {
    switch (this) {
      case CircleButtonSize.Large:
        return 24;
      case CircleButtonSize.Default:
        return 16;
      case CircleButtonSize.Small:
        return 24;
    }
  }

  List<BoxShadow> buildBoxShadow(bool isDarkMode) {
    if (this == CircleButtonSize.Small) {
      return [];
    } else {
      return isDarkMode ? [AppShadows.depth2] : [AppShadows.depth1];
    }
  }

  Color buildCircleColor(bool isDarkMode) {
    switch (this) {
      case CircleButtonSize.Large:
        return AppColors.neutrals8;
      case CircleButtonSize.Default:
        return isDarkMode ? AppColors.neutrals2 : AppColors.neutrals8;
      case CircleButtonSize.Small:
        return isDarkMode ? AppColors.neutrals3 : AppColors.neutrals6;
    }
  }

  Color buildIconColor(bool isDarkMode) {
    if (this == CircleButtonSize.Small) {
      return isDarkMode ? AppColors.neutrals8 : AppColors.neutrals2;
    } else {
      return isDarkMode ? AppColors.primaryLight : AppColors.neutrals4;
    }
  }
}

class CircleButton extends StatelessWidget {
  final IconData? iconData;
  final CircleButtonSize size;
  final Function onPressed;
  final Duration duration;

  const CircleButton({
    Key? key,
    this.iconData,
    this.size = CircleButtonSize.Default,
    required this.onPressed,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return ObxValue<RxBool>(
        (pressed) => GestureDetector(
            onTapCancel: () => pressed(false),
            onTapDown: (details) => pressed(true),
            onTapUp: (details) async {
              pressed(false);
              await Future.delayed(duration);
              onPressed();
            },
            child: AnimatedScale(
                scale: pressed.value ? 1.1 : 1.0,
                duration: duration,
                child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: size.buildCircleColor(Get.isDarkMode),
                      boxShadow: size.buildBoxShadow(Get.isDarkMode),
                    ),
                    padding: EdgeInsets.all(size.allPadding),
                    child: Center(
                      child: Icon(
                        iconData ?? SiliconsSolid.play_circled,
                        size: size.iconSize,
                        color: size.buildIconColor(Get.isDarkMode),
                      ),
                    )))),
        isPressed);
  }
}

class _ButtonUtility {
  static Color buildIconColor(ButtonType type, bool isDarkMode) {
    switch (type) {
      case ButtonType.Primary:
        return AppColors.neutrals8;
      case ButtonType.Secondary:
        return isDarkMode ? AppColors.neutrals1 : AppColors.neutrals8;
      case ButtonType.Neutral:
        return isDarkMode ? AppColors.neutrals4 : AppColors.neutrals2;
    }
  }

  static TextStyle buildTextStyle(ButtonType type, ButtonSize size, bool isDarkMode) {
    final sizedTextStyle = size == ButtonSize.Default ? AppTextStyles.buttonDefault : AppTextStyles.buttonSmall;
    switch (type) {
      case ButtonType.Primary:
        return sizedTextStyle.copyWith(color: AppColors.neutrals8);

      case ButtonType.Secondary:
        return isDarkMode ? sizedTextStyle.copyWith(color: AppColors.neutrals2) : sizedTextStyle.copyWith(color: AppColors.neutrals8);

      case ButtonType.Neutral:
        return isDarkMode ? sizedTextStyle.copyWith(color: AppColors.neutrals8) : sizedTextStyle.copyWith(color: AppColors.neutrals2);
    }
  }
}

class AppBarButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  final Duration duration;

  const AppBarButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxBool isPressed = false.obs;
    return Container(
      margin: EdgeInsets.all(8),
      child: ObxValue<RxBool>(
          (pressed) => GestureDetector(
              onTapCancel: () => pressed(false),
              onTapDown: (details) => pressed(true),
              onTapUp: (details) async {
                pressed(false);
                await Future.delayed(duration);
                onPressed();
              },
              child: SizedBox(
                child: AnimatedScale(
                    scale: pressed.value ? 1.1 : 1.0,
                    duration: duration,
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Get.isDarkMode ? AppColors.neutrals3 : AppColors.neutrals6,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Icon(
                            iconData,
                            size: 16,
                            color: Get.isDarkMode ? AppColors.neutrals8 : AppColors.neutrals2,
                          ),
                        ))),
              )),
          isPressed),
    );
  }
}
