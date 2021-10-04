import 'package:flutter/material.dart';

class AppGradients {
  /// Utilized for primary buttons in Dark Mode
  static const gradientPrimaryDark = LinearGradient(
    begin: Alignment(1, 1),
    end: Alignment(-1, -1),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xfffd4df6),
    Color(0xfffda14d),
    ],
  );

  /// Utilized for Onboarding Registration Text
  static const gradientPrimaryLight = LinearGradient(
    begin: Alignment(1, 1),
    end: Alignment(-1, -1),
    stops: [
      0,
      0.4270833432674408,
      1,
    ],
    colors: [
    Color(0xff4d74fd),
    Color(0xff4daef8),
    Color(0xff4dfdf2),
    ],
  );

  static const gradientCommon01 = LinearGradient(
    begin: Alignment(0.7631596451624887, 0.9999942389266039),
    end: Alignment(-0.9342047725293696, -1),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff8c79f1),
    Color(0xffffbde9),
    ],
  );

  /// Premium Black
  static const gradientCommon02 = LinearGradient(
    begin: Alignment(-0.5327268186773333, 0.001904854887373686),
    end: Alignment(1, -0.3065386377749165),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff434343),
    Color(0xff000000),
    ],
  );

  /// Premium White
  static const gradientCommon03 = LinearGradient(
    begin: Alignment(-0.9997349919381213, 0.000014311215508877595),
    end: Alignment(0.9999684593265732, 0.000014311215508877595),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xfffafafa),
    Color(0xffffffff),
    ],
  );

  /// Sun Rising
  static const gradientCommon04 = LinearGradient(
    begin: Alignment(-1, 0),
    end: Alignment(1, 0),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xfffa709a),
    Color(0xfffee140),
    ],
  );

  /// Light Mode Blur Gradient Circle 1
  static const gradientLight01 = LinearGradient(
    begin: Alignment(0.9999999999999998, -1),
    end: Alignment(-0.9999999701976785, 0.9999999701976781),
    stops: [
      0.5049771070480347,
      1,
    ],
    colors: [
    Color(0xffe2e3ff),
    Color(0xffeadeff),
    ],
  );

  /// Light/Dark Mode Blur Circle Gradient two
  static const gradientLight02 = LinearGradient(
    begin: Alignment(0.9999999999999998, -1),
    end: Alignment(-0.9999999701976785, 0.9999999701976781),
    stops: [
      0.5049771070480347,
      1,
    ],
    colors: [
    Color(0xfff0d8ff),
    Color(0xffdefdff),
    ],
  );

  /// Utilize for Gradient Elements with Light Mode
  static const gradientLight03 = LinearGradient(
    begin: Alignment(0.9999999999999998, -1),
    end: Alignment(-0.9999999701976785, 0.9999999701976781),
    stops: [
      0.44618603587150574,
      1,
    ],
    colors: [
    Color(0xffe5eff5),
    Color(0xffffecde),
    ],
  );

  /// Dark Mode Circle Gradient 1
  static const gradientDark01 = LinearGradient(
    begin: Alignment(0.9999998483458212, -1),
    end: Alignment(-1, 1),
    stops: [
      0.3241589665412903,
      0.7881540060043335,
    ],
    colors: [
    Color(0xff1c1c3b),
    Color(0xff272752),
    ],
  );

  static const gradientDark02 = LinearGradient(
    begin: Alignment(0.9999999999999998, -1),
    end: Alignment(-0.9999999701976785, 0.9999999701976781),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff232042),
    Color(0xff282442),
    ],
  );

  static const glassLight = LinearGradient(
    begin: Alignment(1, -0.9841269220791821),
    end: Alignment(-0.9999999397573842, 0.9999999408684115),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xfffcfcfd),
    Color(0x99fcfcfd),
    ],
  );

  static const glassDark = LinearGradient(
    begin: Alignment(0.999999880790714, -1),
    end: Alignment(-1, 0.999999851183621),
    stops: [
      0,
      1,
    ],
    colors: [
    Color(0xff141416),
    Color(0xb2141416),
    ],
  );

  AppGradients._();
}
