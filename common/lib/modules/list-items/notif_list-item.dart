import 'package:intl/intl.dart';
import 'package:sonr_app/modules/profile/profile.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

class NotificationListItem extends StatelessWidget {
  final Profile profile;
  final String platform;
  final Payload payload;
  final DateTime received;

  const NotificationListItem({Key? key, required this.profile, required this.payload, required this.received, this.platform = "ios"})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfileAvatar(
        picture: profile.picture.toUint8List(),
        platform: platform,
      ),
      title: _buildTitle(Get.isDarkMode),
      subtitle: _buildSubtitle(Get.isDarkMode),
      minLeadingWidth: 48,
      minVerticalPadding: 8,
    );
  }

  Widget _buildTitle(bool isDarkMode) {
    final highlightColor = isDarkMode ? AppColors.neutrals3 : AppColors.neutrals6;
    final defaultColor = AppColors.neutrals4;
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "${payload.items.length} Files ",
        style: AppTextStyles.bodyParagraphBold.copyWith(color: highlightColor),
      ),
      TextSpan(
        text: "sent by ",
        style: AppTextStyles.bodyParagraphBold.copyWith(color: defaultColor),
      ),
      TextSpan(
        text: "${profile.sName}",
        style: AppTextStyles.bodyParagraphBold.copyWith(color: highlightColor),
      ),
      TextSpan(
        text: "with total size ${payload.prettySize()}",
        style: AppTextStyles.bodyParagraphBold.copyWith(color: defaultColor),
      ),
    ]));
  }

  Widget _buildSubtitle(bool isDarkMode) {
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
