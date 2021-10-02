import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

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
      return "${peer.profile.firstName.capitalizeFirst}".subheading(color: Get.theme.focusColor);
    } else {
      return "${peer.profile.firstName.capitalizeFirst}".subheading(color: Get.theme.focusColor);
    }
  }

  Widget _buildModel() {
    return "${peer.device.model}".paragraph(color: Get.theme.hintColor);
  }
}
