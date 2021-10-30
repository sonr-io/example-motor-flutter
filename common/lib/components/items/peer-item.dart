import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_app/modules/profile/profile.dart';
import 'package:sonr_app/pages/home/controller.dart';

const double K_CARD_WIDTH = 160;
const double K_CARD_HEIGHT = 190;

/// #### Root Peer Card View
class PeerCardView extends StatelessWidget {
  final Peer peer;
  final GlobalKey peerKey = GlobalKey();
  PeerCardView(this.peer);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SonrService.to.share(peer);
      },
      child: BoxContainer(
          constraints: BoxConstraints.tight(Size(K_CARD_WIDTH, K_CARD_HEIGHT)),
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.all(24),
          child: ObxValue<RxBool>(
              (isFlipped) => Stack(
                    children: [
                      // Content
                      Container(
                        padding: EdgeInsets.all(8),
                        child: _PeerMainCard(
                          isFlipped: isFlipped,
                          peer: peer,
                          key: ValueKey<bool>(false),
                        ),
                      )
                    ],
                  ),
              false.obs)),
    );
  }
}

/// #### Main Peer Card View
class _PeerMainCard extends StatelessWidget {
  final RxBool isFlipped;
  final Peer peer;
  const _PeerMainCard({Key? key, required this.isFlipped, required this.peer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          // Align Platform
          Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  isFlipped(!isFlipped.value);
                  isFlipped.refresh();
                  HapticFeedback.heavyImpact();
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SimpleIcons.MoreVertical.icon(color: Get.theme.hintColor, size: 24),
                ),
              )),

          Spacer(),

          // Device Icon and Full Name
          _buildName(),

          // Username
          _buildModel(),
          Padding(padding: EdgeInsets.all(4))
        ]));
  }

  Widget _buildName() {
    if (peer.profile.firstName.toLowerCase().contains('anonymous')) {
      return Text("${peer.profile.firstName.capitalizeFirst}", style: AppTextStyles.bodyParagraphBold);
    } else {
      return Text("${peer.profile.firstName.capitalizeFirst}", style: AppTextStyles.bodyParagraphBold);
    }
  }

  Widget _buildModel() {
    return Text("${peer.device.model}", style: AppTextStyles.bodyCaptionRegular);
  }
}

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
      title: _buildName(),
      subtitle: Text(peer.profile.prettySName(), style: AppTextStyles.bodyCaptionRegular),
      trailing: withInviteButton
          ? Obx(() => NeutralButton(
                onPressed: () => SonrService.to.share(peer),
                label: _buildButtonLabel(Get.find<HomeController>().statusForPeer(peer)),
              ))
          : null,
    );
  }

  Widget _buildName() {
    if (peer.profile.firstName.toLowerCase().contains('anonymous')) {
      return Text(
        "👻  ${peer.profile.lastName}",
        style: AppTextStyles.bodyParagraphBold,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      );
    } else {
      return Text(
        "${peer.profile.fullName}",
        style: AppTextStyles.bodyParagraphBold,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      );
    }
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
}

class PeerRowItem extends StatelessWidget {
  final Peer peer;
  final void Function()? onTap;
  final void Function()? onLongPress;
  const PeerRowItem({Key? key, required this.peer, this.onTap, this.onLongPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PeerAvatar(
            peer: peer,
            withPlatform: false,
            size: 24,
          ),
          Text(
            "${peer.profile.prettySName()}",
            style: AppTextStyles.bodyCaptionBold,
          ),
        ],
      ),
    );
  }
}
