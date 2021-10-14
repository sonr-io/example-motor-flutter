export 'controller.dart';
import 'package:sonr_app/modules/payload/payload.dart';
import 'package:sonr_app/theme/theme.dart';

import 'controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/home/controller.dart';
import 'nearby.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.fetchData();
    // Return View
    return SonrScaffold(
      resizeToAvoidBottomInset: false,
      floatingAction: HomeFloatingBar(),
      appBar: AppBar(
        centerTitle: false,
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
              onPressed: () {
                controller.edit();
              },
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
          HomeHistoryView(),
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

/// #### Home Tab Bar Navigation - Share Button
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
                    Future.delayed(150.milliseconds, () => SonrService.to.pick(supplyAfterPick: true));
                  },
                  child: PolyContainer(
                      radius: 24,
                      rotate: 30,
                      sides: 6,
                      gradient: AppGradients.gradientPrimary,
                      child: ShaderMask(
                        blendMode: BlendMode.modulate,
                        shaderCallback: (bounds) => AppGradients.gradientTeritary.createShader(bounds),
                        child: Icon(
                          SimpleIcons.Share,
                          size: 34,
                          color: Colors.white,
                        ),
                      )),
                ),
              )),
          false.obs),
    );
  }
}

// #### Home History View is the body of Home Page
class HomeHistoryView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Obx(() => controller.history.length > 0
            ? ListView.builder(
                itemCount: controller.history.length,
                itemBuilder: (context, index) => PayloadMultiCard(
                  items: controller.history[index].items,
                ),
              )
            : Container(
                width: Get.width,
                height: Get.height,
                alignment: Alignment.center,
                child: Text("No History yet.", style: AppTextStyles.bodyCaptionRegular),
              )));
  }
}
