import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/modules/peer/peer.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### PeerListItem for Remote View
class PeerListItem extends StatelessWidget {
  final Peer member;
  final int index;
  PeerListItem({required this.member, required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: _buildAvatar(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: _buildTitle(),
              ),
              Spacer(),
              DynamicSolidButton(
                data: DynamicSolidButtonData("Invite", AppColor.White, AppColor.Purple).obs,
                onPressed: () => SonrService.to.share(member),
              )
            ],
          ),
          Divider(
            indent: 8,
            endIndent: 8,
            color: AppTheme.DividerColor,
          ),
        ]));
  }

  Widget _buildTitle() {
    return [
      "${member.profile.firstName + member.profile.lastName} \n".subheadingSpan(fontSize: 20),
      " ${member.sName}.snr/".paragraphSpan(fontSize: 16),
    ].rich();
  }

  Widget _buildAvatar() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Align(
          alignment: Alignment.center,
          child: ProfileAvatar.fromPeer(
            member,
            size: 64,
            backgroundColor: Color(0xff8E8E93).withOpacity(0.3),
          ),
        ),
        Positioned.directional(
          textDirection: TextDirection.rtl,
          child: PlatformIcon(member.device.os).icon(color: AppTheme.ItemColor.withOpacity(0.75), size: 26),
          start: 14,
          bottom: 4,
        )
      ],
    );
  }
}
