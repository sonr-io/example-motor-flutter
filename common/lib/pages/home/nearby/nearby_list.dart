import 'package:sonr_app/modules/list-items/peer_list-item.dart';
import 'package:sonr_app/style/style.dart';

import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

import '../controller.dart';

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
              onPressed: () {

              },
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
                  index: index,
                  withInviteButton: true,
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
