import 'package:sonr_app/modules/profile/profile.dart';
import 'package:sonr_app/pages/home/controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### PeerListItem for Remote View
class PeerListItem extends StatelessWidget {
  final Peer peer;
  final bool withInviteButton;
  final void Function()? onTap;
  final void Function()? onLongPress;
  PeerListItem({required this.peer, this.withInviteButton = false, this.onTap, this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minLeadingWidth: 64,
      onLongPress: onLongPress,
      leading: PeerAvatar(peer: peer),
      title: Text(
        peer.profile.fullName,
        style: AppTextStyles.bodyParagraphBold,
      ),
      subtitle: Text(
        _buildSName(),
        style: AppTextStyles.bodyCaptionRegular,
      ),
      trailing: withInviteButton
          ? Obx(() => NeutralButton(
                onPressed: () => SonrService.to.share(peer),
                label: _buildButtonLabel(Get.find<HomeController>().statusForPeer(peer)),
              ))
          : null,
    );
  }

  String _buildButtonLabel(PeerStatus? status) {
    switch (status) {
      case PeerStatus.NONE:
        return "Invite";
      case PeerStatus.PENDING:
        return "Pending";
      case PeerStatus.IN_PROGRESS:
        return "In Progress";
      case PeerStatus.COMPLETED:
        return "Complete";
      default:
        return "Invite";
    }
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
}
