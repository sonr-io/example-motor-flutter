import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// ### Builds Thumbnail from Future
class PayloadThumbnail extends StatelessWidget {
  final FileItem? item;
  const PayloadThumbnail({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handleOnTap(),
      child: BoxContainer(
        clipBehavior: Clip.hardEdge,
        height: Height.ratio(0.125),
        width: Height.ratio(0.125),
        child: item != null ? _buildItemChild(item!) : Container(),
      ),
    );
  }

  Widget _buildItemChild(FileItem item) {
    if (item.hasThumbnail()) {
      return Image.memory(
        Uint8List.fromList(item.thumbnail.buffer),
        fit: BoxFit.cover,
      );
    } else {
      return item.mime.type.gradient(
        size: Height.ratio(0.125),
      );
    }
  }

  void _handleOnTap() {
    if (item != null) {
      OpenFile.open(item!.path);
    } else {
      // if (TransferController.inviteRequest.payload.isTransfer) {
      //   OpenFile.open(TransferController.inviteRequest.payload.single.path);
      // }
    }
  }
}
