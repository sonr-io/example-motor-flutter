import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/modules/peer/peer.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### PeerListItem for Remote View
class PeerListItem extends StatelessWidget {
  final Peer peer;
  final int index;
  final bool withInviteButton;
  PeerListItem({required this.peer, required this.index, this.withInviteButton = false});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 76,
      leading: ProfileAvatar(
        picture: Uint8List.fromList(peer.profile.picture),
        platform: peer.device.os,
      ),
      title: Text(
        peer.profile.fullName,
        style: AppTextStyles.bodyParagraphBold,
      ),
      subtitle: Text(
        _buildSName(),
        style: AppTextStyles.bodyCaptionRegular,
      ),
      trailing: withInviteButton ? _buildInviteButton(context) : null,
    );
  }

  String _buildSName() {
    if (peer.hasSName()) {
      return peer.sName + ".snr/";
    } else {
      if (peer.profile.hasSName()) {
        return peer.profile.sName + ".snr/";
      } else {
        return "test.snr/";
      }
    }
  }

  Widget _buildInviteButton(BuildContext context) {
    return Container(
      width: 75,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Get.isDarkMode ? AppBorders.buttonCircleDark : AppBorders.buttonCircleLight,
        borderRadius: BorderRadius.circular(90),
        color: Colors.transparent,
      ),
      child: Text("Invite", style: AppTextStyles.buttonSmall),
    );
  }
}
