import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/modules/peer/peer.dart';
import 'package:sonr_app/theme/theme.dart';
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
                data: DynamicSolidButtonData("Invite", AppColors.neutrals8, AppColors.primary2).obs,
                onPressed: () => SonrService.to.share(member),
              )
            ],
          ),
          Divider(
            indent: 8,
            endIndent: 8,
            color: Get.theme.dividerColor,
          ),
        ]));
  }

  Widget _buildTitle() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: "${member.device.hostName} \n", style: AppTextStyles.bodyParagraphBold),
      WidgetSpan(child: PlatformIcon(member.device.os).icon(size: 18, color: Get.theme.focusColor.withOpacity(0.75))),
      TextSpan(text: " ${member.device.os}", style: AppTextStyles.bodyCaptionRegular)
    ]));
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
          child: PlatformIcon(member.device.os).icon(color: Get.theme.focusColor.withOpacity(0.75), size: 26),
          start: 14,
          bottom: 4,
        )
      ],
    );
  }
}
