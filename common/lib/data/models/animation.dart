import 'package:sonr_app/style/style.dart';
import 'package:lottie/lottie.dart';

enum AnimatedStatusType { Initial, Loading, Error, Success }

extension AnimatedStatusTypeUtils on AnimatedStatusType {
  bool get isInitial => this == AnimatedStatusType.Initial;
  bool get isLoading => this == AnimatedStatusType.Loading;
  bool get isError => this == AnimatedStatusType.Error;
  bool get isSuccess => this == AnimatedStatusType.Success;
}

/// Animated Bounce In Direction
enum BounceDirection { Left, Right, Up, Down }

extension BounceDirectionUtils on BounceDirection {
  /// Checks if Direction is `Left`
  bool get isLeft => this == BounceDirection.Left;

  /// Checks if Direction is `Right`
  bool get isRight => this == BounceDirection.Right;

  /// Checks if Direction is `Up`
  bool get isTop => this == BounceDirection.Up;

  /// Checks if Direction is `Down`
  bool get isDown => this == BounceDirection.Down;

  /// Returns In Animation for Widget based On Direction
  Widget inAnimation({required Widget child}) {
    // Initialize Parameters
    final duration = 300.milliseconds;
    final animate = true;
    final delay = 200.milliseconds;

    // Return Widget
    switch (this) {
      case BounceDirection.Left:
        return BounceInLeft(child: child, delay: delay, duration: duration, animate: animate);
      case BounceDirection.Right:
        return BounceInRight(child: child, delay: delay, duration: duration, animate: animate);
      case BounceDirection.Up:
        return BounceInUp(child: child, delay: delay, duration: duration, animate: animate);
      case BounceDirection.Down:
        return BounceInDown(child: child, delay: delay, duration: duration, animate: animate);
    }
  }

  /// Returns Out Animation for Widget based On Direction
  Widget outAnimation({required Widget child}) {
    // Initialize Parameters
    final duration = 200.milliseconds;
    final animate = true;

    // Return Widget
    switch (this) {
      case BounceDirection.Left:
        return FadeOutRight(child: child, animate: animate, duration: duration);
      case BounceDirection.Right:
        return FadeOutLeft(child: child, animate: animate, duration: duration);
      case BounceDirection.Up:
        return FadeOutDown(child: child, animate: animate, duration: duration);
      case BounceDirection.Down:
        return FadeOutUp(child: child, animate: animate, duration: duration);
    }
  }

  /// ### Initializer from Offest
  /// Returns Bounce Direction based on Offset
  static BounceDirection fromOffset({double? top, double? left, double? right, double? bottom}) {
    // Check Top
    if (top != null) {
      // Compare with Right
      if (right != null) {
        if (right > top) {
          return BounceDirection.Left;
        }
      }

      // Compare with Left
      if (left != null) {
        if (left > top) {
          return BounceDirection.Right;
        }
      }
      return BounceDirection.Down;
    }

    // Check Bottom
    else {
      // Compare with Right
      if (right != null) {
        if (right > bottom!) {
          return BounceDirection.Left;
        }
      }

      // Compare with Left
      if (left != null) {
        if (left > bottom!) {
          return BounceDirection.Right;
        }
      }
      return BounceDirection.Up;
    }
  }
}

/// Animated Fade Big Direction
enum BigDirection { Up, Down }

extension BigDirectionUtils on BigDirection {
  /// Checks if Direction is `Up`
  bool get isTop => this == BigDirection.Up;

  /// Checks if Direction is `Down`
  bool get isDown => this == BigDirection.Down;

  /// Returns In Animation for Widget based On Direction
  Widget inAnimation({required Widget child}) {
    // Initialize Parameters
    final duration = 350.milliseconds;
    final delay = 200.milliseconds;

    // Return Widget
    switch (this) {
      case BigDirection.Up:
        return FadeInUpBig(
          animate: true,
          from: 200,
          delay: delay,
          duration: duration,
          child: child,
        );
      case BigDirection.Down:
        return FadeInDownBig(
          animate: true,
          from: 200,
          delay: delay,
          duration: duration,
          child: child,
        );
    }
  }

  /// Returns Out Animation for Widget based On Direction
  Widget outAnimation({required Widget child}) {
    // Initialize Parameters
    final duration = 200.milliseconds;
    final animate = true;

    // Return Widget
    switch (this) {
      case BigDirection.Up:
        return FadeOutDown(
          child: child,
          animate: animate,
          duration: duration,
        );
      case BigDirection.Down:
        return FadeOutUp(
          child: child,
          animate: animate,
          duration: duration,
        );
    }
  }
}


/// Rive Board Options
enum RiveBoard { Splash, Documents, Bubble }

/// #### Extension For RiveBoard
extension RiveBoardUtils on RiveBoard {
  /// Returns Path for Lottie File
  String get path {
    switch (this) {
      case RiveBoard.Splash:
        return 'assets/animations/rive/splash.riv';
      case RiveBoard.Documents:
        return 'assets/animations/rive/documents.riv';
      case RiveBoard.Bubble:
        return 'assets/animations/rive/bubble.riv';
    }
  }

  /// Loads Byte Data for Rive Board
  Future<ByteData> load() async {
    return await rootBundle.load(this.path);
  }
}

/// Lottie File Options
enum LottieFile { LoaderSpring, LoaderCircle, Celebrate, Sending, Complete, Decline, Pending, NONE }

/// #### Extension For Lottie File
extension LottieFileUtils on LottieFile {
  /// Returns Path for Lottie File
  String get path {
    // Set Base Path
    final basePath = 'assets/animations/lottie/';

    // Check Type
    switch (this) {
      case LottieFile.LoaderSpring:
        return basePath + 'loader-spring.json';
      case LottieFile.LoaderCircle:
        return basePath + 'loader-circle.json';
      case LottieFile.Pending:
        if (Get.isDarkMode) {
          return basePath + 'pending-light.json';
        } else {
          return basePath + 'pending-dark.json';
        }
      case LottieFile.Sending:
        if (Get.isDarkMode) {
          return basePath + 'transfer-light.json';
        } else {
          return basePath + 'transfer-dark.json';
        }
      case LottieFile.Complete:
        return basePath + 'send-complete.json';
      case LottieFile.Decline:
        return basePath + 'send-decline.json';
      case LottieFile.Celebrate:
        return basePath + 'celebrate.json';
      case LottieFile.NONE:
        return '';
    }
  }

  /// Creates a widget that displays an [LottieComposition] obtained from this Files [AssetBundle].
  LottieBuilder lottie(
      {Animation<double>? controller,
      bool? animate,
      FrameRate? frameRate,
      bool? repeat,
      bool? reverse,
      LottieDelegates? delegates,
      LottieOptions? options,
      void Function(LottieComposition)? onLoaded,
      ImageProvider<Object>? Function(LottieImageAsset)? imageProviderFactory,
      Key? key,
      AssetBundle? bundle,
      Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
      double? width,
      double? height,
      BoxFit? fit,
      Alignment? alignment,
      String? package,
      bool? addRepaintBoundary}) {
    assert(this != LottieFile.NONE);
    return Lottie.asset(
      this.path,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      width: width,
      height: height,
      fit: fit,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
    );
  }
}

/// Animated Slide Switch
enum SwitchType { Fade, SlideUp, SlideDown, SlideLeft, SlideRight }

/// #### Extension For SwitchType
extension SwitchTypeUtils on SwitchType {
  /// Returns This Type X-Value
  double get x {
    switch (this) {
      case SwitchType.Fade:
        return 0;
      case SwitchType.SlideUp:
        return 0;
      case SwitchType.SlideDown:
        return 0;
      case SwitchType.SlideLeft:
        return -1;
      case SwitchType.SlideRight:
        return 1;
    }
  }

  /// Returns This Type Y-Value
  double get y {
    switch (this) {
      case SwitchType.Fade:
        return 0;
      case SwitchType.SlideUp:
        return 1;
      case SwitchType.SlideDown:
        return -1;
      case SwitchType.SlideLeft:
        return 0;
      case SwitchType.SlideRight:
        return 0;
    }
  }

  /// Returns This Type Animation Builder
  Widget Function(Widget, Animation<double>) get transition {
    if (this == SwitchType.Fade) {
      return AnimatedSwitcher.defaultTransitionBuilder;
    } else {
      return _buildTransition(this.x, this.y);
    }
  }

  /// Builds Transition for this Switch
  Widget Function(Widget, Animation<double>) _buildTransition(double x, double y) {
    return (Widget child, Animation<double> animation) {
      final offsetAnimation = TweenSequence([
        TweenSequenceItem(tween: Tween<Offset>(begin: Offset(x, y), end: Offset(0.0, 0.0)), weight: 1),
        TweenSequenceItem(tween: ConstantTween(Offset(0.0, 0.0)), weight: 2),
      ]).animate(animation);
      return ClipRect(
        child: SlideTransition(
          position: offsetAnimation,
          child: child,
        ),
      );
    };
  }
}
