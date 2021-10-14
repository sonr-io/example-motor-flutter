import 'package:sonr_app/pages/home/controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

/// #### Invite Composer for Remote Transfer
class ComposerModal extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        height: Get.height,
        margin: EdgeInsets.only(top: 64, bottom: 135, left: 24, right: 24),
        child: BoxContainer(
            footer: PrimaryButton(
              label: "Share File",
              onPressed: () => print("TODO"),
            ),
            padding: EdgeInsets.all(8),
            // margin: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ComposerModalPicker(),
                SizedBox(height: 16),
                _ComposerModalFindPeer(),
                SizedBox(height: 16),
                _ComposerModalSchedule(),
              ],
            )));
  }
}

class _ComposerModalPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Pick File", style: AppTextStyles.headingTitleBold),
      subtitle: Text(
        "Type the SName of the User you want to Share with.",
        style: AppTextStyles.bodyParagraphRegular,
      ),
      onTap: () => SonrService.to.pick(),
    );
  }
}

class _ComposerModalFindPeer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Find User", style: AppTextStyles.headingTitleBold),
      subtitle: Text(
        "Type the SName of the User you want to Share with.",
        style: AppTextStyles.bodyParagraphRegular,
      ),
    );
  }
}

class _ComposerModalSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Schedule Transfer", style: AppTextStyles.headingTitleBold),
      subtitle: Text(
        "Type the SName of the User you want to Share with.",
        style: AppTextStyles.bodyParagraphRegular,
      ),
    );
  }
}

class ComposerController extends GetxController {
  final paths = <String>[].obs;
  final peer = Peer().obs;
  final query = "".obs;
}
