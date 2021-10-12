import 'package:sonr_app/modules/profile/profile.dart';
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
          ? NeutralButton(
              onPressed: () => SonrService.to.share(peer),
              label: "Invite",
            )
          : null,
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
}
