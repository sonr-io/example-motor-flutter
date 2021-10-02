import 'dart:async';

import 'package:sonr_app/pages/home/home.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

class IntelHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => GestureDetector(
          onTap: () async {
            //if (controller.hasFailed.value) {
            //await Logger.openIntercom();
            // }
          },
          child: SonrService.to.status.value != Status.ACTIVE
              ? Center(
                  child: SpringLoader(),
                )
              : _buildTitle(
                  "Dummy Title",
                ),
        ),
      ),
    );
  }

  /// Builds Title Widget from Controller Text
  Widget _buildTitle(String title) => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          WidgetSpan(
              alignment: PlaceholderAlignment.aboveBaseline,
              baseline: TextBaseline.alphabetic,
              child: SimpleIcons.Location.icon(
                size: 22,
                color: Get.theme.focusColor,
              )),
          TextSpan(text: " " + title, style: AppTextStyles.headline04)
        ]),
      );
}

class IntelFooter extends StatefulWidget {
  IntelFooter({Key? key}) : super(key: key);
  @override
  _IntelFooterState createState() => _IntelFooterState();
}

class _IntelFooterState extends State<IntelFooter> {
  // Properties
  late StreamSubscription<List<Peer>> _lobbyStream;
  final badgeVisible = false.obs;

  // References
  List<Peer> _currentLobby = <Peer>[];
  int _lastLobbyCount = 0;

  @override
  void initState() {
    // Listen to Streams
    _lobbyStream = SonrService.to.localPeers.listen(_handleLobbyStream);
    super.initState();
  }

  void dispose() {
    _lobbyStream.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedSlider.fade(
          duration: 200.milliseconds,
          child: _buildChild(
            badgeVisible.value,
            SonrService.to.status.value == Status.ACTIVE,
          ),
        ));
  }

  Widget _buildChild(bool isBadgeVisible, bool isConnecting) {
    if (!isConnecting) {
      return isBadgeVisible
          ? Row(
              key: ValueKey(true),
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              textBaseline: TextBaseline.ideographic,
              children: [
                _buildText(_currentLobby.length != _lastLobbyCount, _lastLobbyCount, _currentLobby.length),
                _buildIcon(_currentLobby.length != _lastLobbyCount, _lastLobbyCount, _currentLobby.length),
              ],
            )
          : _NearbyPeersRow(
              key: ValueKey(false),
            );
    } else {
      return Container();
    }
  }

  // @ Handle Size Update
  void _handleLobbyStream(List<Peer> onData) {
    if (onData.length != _lastLobbyCount) {
      // Swap Text
      HapticFeedback.mediumImpact();
      badgeVisible(true);

      // Revert Text
      Future.delayed(1200.milliseconds, () {
        badgeVisible(false);
      });
    }

    // Update References
    _lastLobbyCount = _currentLobby.length;
    _currentLobby = onData;
  }

  /// - Method Builds Icon based on Difference Count
  Widget _buildIcon(bool countChanged, int prevCount, int count) {
    if (countChanged) {
      if (prevCount < count) {
        return Center(
          child: FadeInUp(
            animate: true,
            duration: 300.milliseconds,
            child: SimpleIcons.Up.icon(
              color: AppColors.primary1,
              size: 14,
            ),
          ),
        );
      } else {
        return Center(
          child: FadeInDown(
            animate: true,
            from: 40,
            duration: 300.milliseconds,
            child: SimpleIcons.Down.icon(
              color: AppColors.primary3,
              size: 14,
            ),
          ),
        );
      }
    } else {
      return Container();
    }
  }

  /// - Method Builds Text based on Difference Count
  Widget _buildText(bool countChanged, int prevCount, int count) {
    final difference = (count - prevCount).abs();
    if (countChanged) {
      return FadeIn(
        animate: true,
        child: Text(difference.toString(), style: AppTextStyles.bodySmallBold),
      );
    }
    return Container();
  }
}

class _NearbyPeersRow extends StatelessWidget {
  const _NearbyPeersRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() {
        final moreKey = GlobalKey();
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              // Align(
              //   alignment: Alignment.center,
              //   child: Row(
              //     children: state.mapNearby(),
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     mainAxisSize: MainAxisSize.min,
              //   ),
              // ),
              Container(
                alignment: Alignment.center,
                key: moreKey,
                width: 36,
                height: 36,
                child: Text(SonrService.to.localPeers.length.toString() + "+", style: AppTextStyles.bodySmallBold),
                decoration: BoxDecoration(
                  color: AppColors.secondary1,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class HomeAppBar extends GetView<HomeController> implements PreferredSizeWidget {
  // References
  static Duration K_ANIMATION_DURATION = 200.milliseconds;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(() => AnimatedOpacity(
          duration: 200.milliseconds,
          opacity: controller.appbarOpacity.value,
          child: AnimatedSlider.fade(
            duration: 2.seconds,
            child: PageAppBar(
              centerTitle: controller.view.value.isDashboard,
              key: ValueKey(false),
              subtitle: Padding(
                padding: controller.view.value.paddingAppbar,
                child: _buildSubtitle(
                  SonrService.to.status.value == Status.ACTIVE,
                ),
              ),
              action: HomeActionButton(dashboardKey: controller.keyTwo),
              // leading: controller.view.value.isDashboard
              //     ? Padding(
              //         padding: const EdgeInsets.only(top: 32.0, left: 8),
              //         child: Container(
              //             child: Obx(
              //           () => ShowcaseItem.fromType(
              //             type: ShowcaseType.Help,
              //             child: ActionButton(
              //               banner: Logger.intercomUnreadCount.value > 0 ? ActionBanner.count(Logger.intercomUnreadCount.value) : null,
              //               key: ValueKey<HomeView>(HomeView.Dashboard),
              //               iconData: SimpleIcons.Help,
              //               onPressed: () async => await Logger.openIntercom(),
              //             ),
              //           ),
              //         )),
              //       )
              //     : null,
              title: controller.view.value.isDashboard
                  ? IntelHeader()
                  : Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Text(controller.view.value.title, style: AppTextStyles.componentHairlineLarge),
                    ),
              footer: controller.view.value.isDashboard ? IntelFooter() : null,
            ),
          ),
        ));
  }

  // # Helper: Builds Subtitle
  Widget _buildSubtitle(bool isOnline) {
    if (isOnline) {
      return Text("Offline", style: AppTextStyles.componentHairlineSmall);
    }
    return Text(
      "Hi ${SonrService.to.profile.value.firstName.capitalizeFirst}",
      style: AppTextStyles.componentHairlineLarge,
    );
  }

  @override
  Size get preferredSize {
    if (controller.view.value != HomeView.Personal) {
      return Size(Get.width, 186);
    } else {
      return Size(Get.width, kToolbarHeight + 64);
    }
  }
}
