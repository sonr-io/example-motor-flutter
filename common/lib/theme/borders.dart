import 'package:flutter/material.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

class AppBorders {
  static Border get primaryBorder => Get.isDarkMode ? buttonCircleDark : buttonCircleLight;

  /// Light Text Field Border
  static const textFieldIdleLight = Border.fromBorderSide(BorderSide(
    color: Color(0xff353945),
    width: 2,
  ));

  /// TextFielld Dark Border
  static const textFieldIdleDark = Border.fromBorderSide(BorderSide(
    color: Color(0xffe6e8ec),
    width: 2,
  ));

  /// Successful TextField Border for Light Mode
  static const textFieldSuccessLight = Border.fromBorderSide(BorderSide(
    color: Color(0xff1792ff),
    width: 2,
  ));

  /// Succesful Textfield Dark Mode
  static const textFieldSuccessDark = Border.fromBorderSide(BorderSide(
    color: Color(0xff046de8),
    width: 2,
  ));

  static const buttonCircleDark = Border.fromBorderSide(BorderSide(
    color: Color(0xff23262f),
    width: 2,
  ));

  /// Light Mode Action Button Border
  static const buttonCircleLight = Border.fromBorderSide(BorderSide(
    color: Color(0xfff4f5f6),
    width: 2,
  ));

  AppBorders._();
}
