import 'package:sonr_app/data/models/animation.dart';
import 'package:sonr_app/modules/payload/views/content/file_content.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:sonr_app/modules/peer/peer.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

/// #### Completed Transfer Popup View
class CompletedPopup extends StatelessWidget {
  final Payload transfer;
  CompletedPopup({Key? key, required this.transfer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      // Lotte Animation
      IgnorePointer(child: LottieFile.Celebrate.lottie(width: Get.width, height: Get.height, repeat: false, fit: BoxFit.fitHeight)),

      // Scaffold Box
      _PostTransferItem(transfer: transfer),
      Container(
        margin: EdgeInsets.only(top: 356),
        child: ColorButton.primary(
          onPressed: () {},
          text: "Export",
          icon: SimpleIcons.ShareOutside,
        ),
      ),
    ]);
  }
}

/// #### TransferCard as List item View
class _PostTransferItem extends StatelessWidget {
  final Payload transfer;

  const _PostTransferItem({Key? key, required this.transfer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0, top: 16.0),
      child: BoxContainer(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 12),
        height: 400,
        child: Column(
          children: [
            // Owner Info
            ProfileOwnerRow(profile: transfer.owner),

            // File Content
            Container(
                padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                child: FileContent(
                  files: transfer.items.filter((element) => element.mime.type != MIME_Type.URL).toList().map((e) => e.file).toList(),
                ),
                height: 237),
            Padding(padding: EdgeInsets.only(top: 8)),
            // Info of Transfer
            Container(
              padding: EdgeInsets.only(left: 8, right: 8, top: 8),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //FilePayloadText(payload: transfer, file: transfer.items[0]),
                  //DateText.fromMilliseconds(transfer.createdAt.toInt() * 1000)
                  //,
                  Text("Text Test display Date here")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
