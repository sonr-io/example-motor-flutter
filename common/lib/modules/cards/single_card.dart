import 'content/content.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class PayloadSingleCard extends StatelessWidget {
  final Payload_Item item;
  const PayloadSingleCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: AppRadii.radiusCard,
      ),
      child: Stack(
        children: [
          item.mime.isUrl ? UrlItemContent(item: item.url) : FileItemContent(item: item.file),
        ],
      ),
    );
  }
}
