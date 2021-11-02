import 'package:intl/intl.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class CardFooterOverlayExport extends StatelessWidget {
  final Payload_Item item;

  const CardFooterOverlayExport({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: AppRadii.radiusCardInfo,
        boxShadow: [AppShadows.depth3],
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals8,
      ),
      child: Column(
        children: [
          ListTile(
            trailing: CircleButton(onPressed: () {}, iconData: SiliconsLine.arrow_forward),
            title: Text("Album", style: AppTextStyles.headingTitleBold),
            subtitle: Container(
              height: 44,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.mime.subtype,
                    style: AppTextStyles.bodyCaptionRegular,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("64 Mb", style: AppTextStyles.headingSubtitleBold),
            subtitle: _buildSubtitle(Get.isDarkMode, DateTime.now()),
          ),
        ],
      ),
    );
  }

  Widget _buildSubtitle(bool isDarkMode, DateTime received) {
    final now = DateTime.now();
    DateFormat format;
    if (now.year == received.year) {
      format = DateFormat.MMMd().add_jm();
    } else {
      format = DateFormat.yMMMd().add_jm();
    }
    return Text(
      format.format(received),
      style: AppTextStyles.bodyCaptionRegular.copyWith(color: AppColors.neutrals4),
    );
  }
}
