import 'package:sonr_app/modules/list-items/peer_list-item.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import '../controller.dart';
import 'nearby_list.dart';

class NearbyRow extends GetView<HomeController> implements PreferredSizeWidget {
  NearbyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.13,
      padding: EdgeInsets.only(top: 16),
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
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
              width: Get.width,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.localPeers.length,
                  itemBuilder: (context, index) {
                    return PeerListItem(
                      peer: controller.localPeers[index],
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(Get.width, Get.height * 0.15);
}
