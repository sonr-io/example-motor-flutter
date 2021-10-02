import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### PeerListItem for Remote View
class PeerLinkerItem extends StatelessWidget {
  final Peer peer;
  final Function onPressed;
  PeerLinkerItem({required this.peer, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 4.0, left: 8.0),
                  child: RichText(
                      text: TextSpan(children: [
                    "${peer.device.hostName} \n".subheadingSpan(fontSize: 24),
                    WidgetSpan(child: PlatformIcon(peer.device.os).icon(size: 18, color: Get.theme.focusColor.withOpacity(0.75))),
                    " ${peer.device.os}".paragraphSpan(fontSize: 18),
                  ]))),
              Spacer(),
              ColorButton.neutral(
                text: 'Link',
                onPressed: () => this.onPressed(),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 8)),
          Divider(
            indent: 8,
            endIndent: 8,
            color: Get.theme.dividerColor,
          ),
        ]));
  }
}
