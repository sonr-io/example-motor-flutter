import 'package:sonr_app/pages/home/home.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### Home Tab Bar Navigation
class HomeFloatingBar extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      child: Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
        BoxContainer(
          radius: 28.13,
          margin: EdgeInsets.symmetric(horizontal: 72),
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Bounce(
                    from: 12,
                    duration: 1000.milliseconds,
                    animate: controller.view.value.isDashboard,
                    key: ValueKey(controller.view.value.isDashboard),
                    child: HomeView.Dashboard.showcaseItem(),
                  )),
              Container(
                width: Get.width * 0.20,
              ),
              Obx(() => Roulette(
                    spins: 1,
                    key: ValueKey(controller.view.value.isPersonal),
                    animate: controller.view.value.isPersonal,
                    child: HomeView.Personal.showcaseItem(),
                  )),
            ],
          ),
        ),
        ShareButton(),
      ]),
    );
  }
}

class ShareButton extends StatelessWidget {
  ShareButton() : super(key: GlobalKey());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: ObxValue<RxBool>(
          (isPressed) => AnimatedScale(
              duration: Duration(milliseconds: 150),
              scale: isPressed.value ? 1.1 : 1,
              child: Container(
                width: 95,
                height: 95,
                child: GestureDetector(
                  onTapDown: (details) => isPressed(true),
                  onTapUp: (details) {
                    isPressed(false);
                    Future.delayed(150.milliseconds, () => SonrService.to.pick());
                  },
                  child: PolyContainer(
                    radius: 24,
                    rotate: 30,
                    sides: 6,
                    gradient: AppGradients.gradientPrimary,
                    child: SimpleIcons.Share.gradient(size: 34),
                  ),
                ),
              )),
          false.obs),
    );
  }
}

/// #### Bottom Bar Button Widget
class HomeBottomTabButton extends GetView<HomeController> {
  // References
  static double K_ICON_SIZE = 32;
  static Duration K_ANIMATION_DURATION = 250.milliseconds;

  // Properties
  final HomeView view;
  final void Function(int) onPressed;
  final void Function(int)? onLongPressed;
  final Rx<HomeView> currentIndex;
  HomeBottomTabButton(this.view, this.onPressed, this.currentIndex, {this.onLongPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onPressed(view.index);
        },
        onLongPress: () {
          if (onLongPressed != null) {
            onLongPressed!(view.index);
          }
        },
        child: Container(
          padding: view.paddingIcon,
          child: ObxValue<Rx<HomeView>>(
              (idx) => AnimatedScale(
                    duration: K_ANIMATION_DURATION,
                    child: Container(
                      key: ValueKey(idx.value.index == view.index),
                      child: Icon(
                        view.iconData(idx.value.index == view.index),
                        size: K_ICON_SIZE,
                        color: Get.theme.focusColor,
                      ),
                    ),
                    scale: idx.value.iconScale(idx.value.index == view.index),
                  ),
              currentIndex),
        ));
  }
}
