export 'controller.dart';
import 'package:sonr_app/pages/home/button.dart';
import 'package:sonr_app/theme/theme.dart';

import 'controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/home/controller.dart';
import 'nearby/nearby_row.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // Return View
    return SonrScaffold(
      resizeToAvoidBottomInset: false,
      floatingAction: HomeFloatingBar(),
      appBar: AppBar(
        toolbarHeight: 92,
        elevation: 0,
        backgroundColor: AppColors.neutrals1,
        title: Container(
          padding: const EdgeInsets.all(8.0),
          child: Get.isDarkMode
              ? SvgPicture.asset(
                  "assets/images/logos/home-sonr-dark.svg",
                  height: 32,
                )
              : SvgPicture.asset(
                  "assets/images/logos/home-sonr-light.svg",
                  height: 32,
                  cacheColorFilter: true,
                ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Get.isDarkMode ? SimpleIcons.Menu.white : SimpleIcons.Menu.white,
              onPressed: () {},
            ),
          )
        ],
        bottom: NearbyRow(),
      ),
      body: Container(
          child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.tabController,
        children: [
          // DashboardView(key: ValueKey<HomeView>(HomeView.Dashboard)),
          Container(),
        ],
      )),
    );
  }
}

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
