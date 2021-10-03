import 'package:flutter/material.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

class AppShadows {
  /// Returns Primary Shadow by Theme Mode
  static BoxShadow get primaryDepth => Get.isDarkMode ? depth3 : depth2;

  static const depth1 = BoxShadow(
    color: Color(0x330f0f0f),
    offset: Offset(0, 8),
    blurRadius: 16,
    spreadRadius: -8,
  );

  static const depth2 = BoxShadow(
    color: Color(0x330f0f0f),
    offset: Offset(0, 24),
    blurRadius: 24,
    spreadRadius: -16,
  );

  static const depth3 = BoxShadow(
    color: Color(0x1f0f0f0f),
    offset: Offset(0, 40),
    blurRadius: 32,
    spreadRadius: -24,
  );

  static const depth4 = BoxShadow(
    color: Color(0x1a0f0f0f),
    offset: Offset(0, 64),
    blurRadius: 64,
    spreadRadius: -48,
  );

  AppShadows._();
}
