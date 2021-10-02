import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// ### BoxContainer
/// Builds **Rounded Square** Neumorphic Shape Container.
class BoxContainer extends StatelessWidget {
  final Widget? child;
  final Widget? footer;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final double radius;
  final double? width;
  final double? height;

  const BoxContainer({
    this.child,
    this.footer,
    Key? key,
    this.alignment,
    this.padding,
    this.foregroundDecoration,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    this.radius = 24,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (footer != null) {
      return Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
        _buildBox(
          boxPadding: EdgeInsets.only(bottom: 32),
        ),
        Positioned.directional(
          textDirection: TextDirection.ltr,
          bottom: -40,
          child: Container(
            margin: const EdgeInsets.only(top: 24),
            child: footer!,
          ),
        ),
      ]);
    }
    return _buildBox();
  }

  /// Builds Default Box Container
  Widget _buildBox({EdgeInsets boxPadding = EdgeInsets.zero}) {
    return Container(
      key: key,
      width: width,
      height: height,
      alignment: alignment,
      padding: padding != null ? padding!.add(boxPadding) : boxPadding,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: child,
      decoration: BoxDecoration(
        gradient: Get.isDarkMode ? AppGradients.glassDark : AppGradients.gradientLight02,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [AppShadows.depth3],
      ),
    );
  }
}

/// ### CircleContainer
/// Builds **Circle** Neumorphic Shape Container.
class CircleContainer extends StatelessWidget {
  final Widget? child;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final double? width;
  final double? height;

  const CircleContainer({
    required this.child,
    this.clipBehavior = Clip.none,
    Key? key,
    this.alignment,
    this.padding,
    this.foregroundDecoration,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.width,
    this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      width: width,
      height: height,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: child,
      decoration: BoxDecoration(
        border: Get.isDarkMode ? null : Border.all(color: Get.theme.backgroundColor, width: 1),
        gradient: Get.isDarkMode ? AppGradients.glassDark : AppGradients.gradientLight02,
        shape: BoxShape.circle,
        boxShadow: [AppShadows.depth3],
      ),
    );
  }
}

/// ### PolyContainer
/// Builds **Polygon** Neumorphic Shape Container.
///
/// Paramaters:
/// `sides`
/// `rotate`
/// `radius`
/// `gradient` (Defaults to Primary Gradient)
class PolyContainer extends StatelessWidget {
  final Widget? child;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  final int sides;
  final double rotate;
  final double radius;
  final Gradient? gradient;
  final double? width;
  final double? height;

  const PolyContainer({
    required this.child,
    Key? key,
    this.alignment,
    this.padding,
    this.foregroundDecoration,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    this.sides = 6,
    this.rotate = 30,
    this.radius = 24,
    this.gradient,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPolygon(
      borderRadius: radius,
      rotate: rotate,
      sides: sides,
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient ?? AppGradients.gradientBrand01,
          boxShadow: [AppShadows.depth3],
          border: Get.isDarkMode ? null : Border.all(color: Get.theme.backgroundColor, width: 1),
        ),
        key: key,
        width: width,
        height: height,
        alignment: alignment ?? Alignment.center,
        padding: padding,
        foregroundDecoration: foregroundDecoration,
        constraints: constraints,
        margin: margin,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
        child: child,
      ),
    );
  }
}
