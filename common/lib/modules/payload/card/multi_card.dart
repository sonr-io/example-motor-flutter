import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class PayloadMultiCard extends StatelessWidget {
  final List<Payload_Item> items;
  const PayloadMultiCard({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: AppRadii.cardRadius,
      ),
    );
  }
}
