export 'controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonr_app/modules/payload/payload.dart';
import 'package:sonr_app/theme/theme.dart';

import 'controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
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
              icon: Get.isDarkMode ? SiliconsLine.menu.white : SiliconsLine.menu.white,
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
          Container(
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
                    ))),
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
                    child: HomeBottomTabButton(
                      HomeView.Dashboard,
                      (int i) {},
                      Get.find<HomeController>().view,
                    ),
                  )),
              Container(
                width: Get.width * 0.20,
              ),
              Obx(() => Roulette(
                    spins: 1,
                    key: ValueKey(controller.view.value.isPersonal),
                    animate: controller.view.value.isPersonal,
                    child: HomeBottomTabButton(
                      HomeView.Personal,
                      (int i) {},
                      Get.find<HomeController>().view,
                    ),
                  )),
            ],
          ),
        ),
        Padding(
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
                        Future.delayed(
                            150.milliseconds,
                            () => Get.dialog(
                                  ComposerModal(),
                                  barrierDismissible: true,
                                  barrierColor: Colors.transparent,
                                  useSafeArea: false,
                                ));
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
                              SiliconsSolid.send,
                              size: 34,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  )),
              false.obs),
        ),
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

class NearbyRow extends GetView<HomeController> implements PreferredSizeWidget {
  NearbyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 327,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nearby', style: AppTextStyles.headline04),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 16),
                  onPressed: () {
                    Get.to(NearbyList());
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Container(
              height: 64,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.localPeers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 210,
                      child: PeerListItem(
                        peer: controller.localPeers[index],
                        onTap: () => Get.to(NearbyList()),
                        onLongPress: () async {
                          final result = await SonrService.to.pick(
                            shareAfterPick: true,
                            type: FileType.media,
                            peer: controller.localPeers[index],
                          );
                          print(result.toString());
                        },
                      ),
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(Get.width, 327);
}

enum LobbyFilter { All, Phones, Desktops }

extension LobbyFilterUtils on LobbyFilter {
  static LobbyFilter fromEnabled(bool phones, bool desktops) {
    if (phones && !desktops) {
      return LobbyFilter.Phones;
    } else if (desktops && !phones) {
      return LobbyFilter.Desktops;
    } else {
      return LobbyFilter.All;
    }
  }
}

class NearbyList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SonrScaffold(
      appBar: AppBar(
        toolbarHeight: 92,
        elevation: 0,
        backgroundColor: AppColors.neutrals1,
        leading: AppBarButton(
          iconData: Icons.arrow_back,
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Nearby",
          style: AppTextStyles.headline05,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Get.isDarkMode ? SiliconsLine.menu.white : SiliconsLine.menu.white,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Obx(() => controller.localPeers.length > 0
          ? ListView.builder(
              itemCount: controller.localPeers.length,
              itemBuilder: (context, index) {
                return PeerListItem(
                  peer: controller.localPeers[index],
                  withInviteButton: true,
                  onTap: () async {
                    final result = await SonrService.to.pick(
                      shareAfterPick: true,
                      type: FileType.media,
                      peer: controller.localPeers[index],
                    );
                    print(result.toString());
                  },
                );
              })
          : _buildEmpty()),
    );
  }

  Widget _buildEmpty() {
    return Center(
      child: Container(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 24)),
          Image.asset(
            'assets/images/illustrations/EmptyLobby.png',
            height: Height.ratio(0.35),
            fit: BoxFit.fitHeight,
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text("Nobody Here..", style: AppTextStyles.headline05),
        ]),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
