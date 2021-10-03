import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

class PeerBubbleView extends StatelessWidget {
  final Peer peer;
  final GlobalKey peerKey = GlobalKey();
  PeerBubbleView(this.peer) : super();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRoute.positioned(
          ShareHoverView(peer: peer),
          // init: () => ShareController.initPopup(),
          parentKey: peerKey,
          offset: Offset(-Get.width / 2, 20),
        );
      },
      child: Container(
        key: peerKey,
        width: 36,
        height: 36,
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: _buildDecoration(),
        child: Center(child: _buildPeerInitials()),
      ),
    );
  }

  Decoration _buildDecoration() {
    if (peer.profile.picture.length > 0) {
      return BoxDecoration(
        image: DecorationImage(image: MemoryImage(Uint8List.fromList(peer.profile.picture))),
        shape: BoxShape.circle,
      );
    } else {
      return BoxDecoration(
        color: Get.theme.canvasColor,
        shape: BoxShape.circle,
      );
    }
  }

  Widget _buildPeerInitials() {
    return Text(
      peer.profile.initials,
      style: AppTextStyles.body3Bold,
    );
  }
}
