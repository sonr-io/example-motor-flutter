import 'package:sonr_app/components/components.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

import 'controller.dart';

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
              icon: Get.isDarkMode ? SimpleIcons.Menu.white : SimpleIcons.Menu.white,
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
                  onTap: () => controller.shareToPeer(controller.localPeers[index]),
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
