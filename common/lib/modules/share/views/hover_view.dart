import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

const K_HOVER_BUTTON_SIZE = 42.0;

class ShareHoverView extends StatelessWidget {
  final Peer peer;

  ShareHoverView({required this.peer});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Get.theme.backgroundColor,
            border: Border.all(
              color: Get.theme.canvasColor,
              width: 1.5,
            )),
        constraints: BoxConstraints(maxWidth: 200, maxHeight: 314),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
        duration: 1500.milliseconds,
        child: Column(
          children: [
            _ShareHoverPeerInfo(peer: peer),
            Divider(),
            Padding(padding: EdgeInsets.only(top: 8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // _ShareHoverCameraButtonItem(peer: peer),
                Padding(padding: EdgeInsets.only(left: 24)),
                _ShareHoverMediaButtonItem(peer: peer),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ShareHoverFileButtonItem(peer: peer),
                Padding(padding: EdgeInsets.only(left: 24)),
              ],
            ),
          ],
        ));
  }
}

class _ShareHoverPeerInfo extends StatelessWidget {
  final Peer peer;

  const _ShareHoverPeerInfo({Key? key, required this.peer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PlatformIcon(peer.device.os).icon(color: Get.theme.focusColor.withOpacity(0.75), size: 26),
        Padding(padding: EdgeInsets.only(left: 8)),
        Text(peer.profile.firstName, style: AppTextStyles.bodyParagraphBold),
      ],
    );
  }
}

// /// #### Camera Share Button
// class _ShareHoverCameraButtonItem extends StatelessWidget {
//   final Peer peer;
//   const _ShareHoverCameraButtonItem({required this.peer});
//   @override
//   Widget build(BuildContext context) {
//     return FadeInDownBig(
//         delay: 225.milliseconds,
//         duration: [265.milliseconds, 225.milliseconds, 285.milliseconds, 245.milliseconds, 300.milliseconds].random(),
//         child: ComplexButton(
//           label: 'Camera',
//           size: K_HOVER_BUTTON_SIZE,
//           onPressed: () => AppRoute.camera(onMediaSelected: (path) => SonrService.to.supply([path], peer: peer)),
//           type: ComplexIcons.Camera,
//           fontSize: 18,
//         ));
//   }
// }

/// #### Camera Share Button
class _ShareHoverMediaButtonItem extends StatelessWidget {
  final Peer peer;
  const _ShareHoverMediaButtonItem({required this.peer});
  @override
  Widget build(BuildContext context) {
    return FadeInDownBig(
        delay: 225.milliseconds,
        duration: [265.milliseconds, 225.milliseconds, 285.milliseconds, 245.milliseconds, 300.milliseconds].random(),
        child: ComplexButton(
          label: 'Media',
          size: K_HOVER_BUTTON_SIZE,
          onPressed: () => SonrService.to.pick(),
          type: ComplexIcons.MediaSelect,
          fontSize: 18,
        ));
  }
}

/// #### File Share Button
class _ShareHoverFileButtonItem extends StatelessWidget {
  final Peer peer;
  const _ShareHoverFileButtonItem({required this.peer});
  @override
  Widget build(BuildContext context) {
    return FadeInDownBig(
        delay: 225.milliseconds,
        duration: [265.milliseconds, 225.milliseconds, 285.milliseconds, 245.milliseconds, 300.milliseconds].random(),
        child: ComplexButton(
          label: 'File',
          size: K_HOVER_BUTTON_SIZE,
          onPressed: () => SonrService.to.pick(),
          type: ComplexIcons.Document,
          fontSize: 18,
        ));
  }
}
