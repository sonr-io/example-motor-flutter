import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

/// #### Invite Composer for Remote Transfer
class ComposerModal extends GetView<ComposerController> {
  @override
  Widget build(BuildContext context) {
    return GeneralModal(
      titleLabel: "Share File",
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ComposerModalPicker(),
          SizedBox(height: 16),
          _ComposerModalFindPeer(),
          SizedBox(height: 16),
          // _ComposerModalSchedule(),
          PrimaryButton(
            mainAxisSize: MainAxisSize.max,
            onPressed: () {
              Get.back();
            },
            label: "Confirm",
            iconData: SimpleIcons.CheckAll,
          )
        ],
      ),
    );
  }
}

class _ComposerModalPicker extends GetView<ComposerController> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Pick File", style: AppTextStyles.headingTitleBold),
      subtitle: Text(
        "Select files to Share.",
        style: AppTextStyles.bodyParagraphRegular,
      ),
      onTap: () => SonrService.to.pick(),
      leading: _ComposerModalIcon(Icons.upload),
    );
  }
}

class _ComposerModalFindPeer extends GetView<ComposerController> {
  @override
  Widget build(BuildContext context) {
    final sNameHint = TextUtils.hintSName;
    return ListTile(
      title: Text("Find User", style: AppTextStyles.headingTitleBold),
      subtitle: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp("[a-z]")),
        ],
        style: AppTextStyles.bodyParagraphRegular,
        autofocus: false,
        textInputAction: TextInputAction.search,
        autocorrect: false,
        showCursor: false,
        onChanged: (val) => controller.queryPeer(val),
        textCapitalization: TextCapitalization.none,
        onSubmitted: (val) => controller.queryPeer(val),
        decoration: InputDecoration.collapsed(hintText: sNameHint),
      ),
      leading: _ComposerModalIcon(Icons.search),
    );
  }
}

// ignore: unused_element
class _ComposerModalSchedule extends GetView<ComposerController> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Schedule", style: AppTextStyles.headingTitleBold),
      subtitle: Text(
        "Type the SName of the User you want to Share with.",
        style: AppTextStyles.bodyParagraphRegular,
      ),
      onTap: () => SonrService.to.pick(),
      leading: _ComposerModalIcon(Icons.calendar_today),
    );
  }
}

class _ComposerModalIcon extends StatelessWidget {
  final IconData icon;
  const _ComposerModalIcon(this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Get.isDarkMode ? AppColors.neutrals3 : AppColors.neutrals6,
      ),
      child: Icon(icon, color: AppColors.neutrals4),
    );
  }
}

class ComposerController extends GetxController {
  final paths = <String>[].obs;
  final peer = Peer().obs;
  final query = "".obs;
  final scheduleDateTime = DateTime.now().obs;

  /// Method to update the SName of the Peer
  Future<void> queryPeer(String sName) async {
    query(sName);
    final resp = await SonrService.to.search(query.value);
    if (resp.success) {
      peer(resp.peer);
      peer.refresh();
    }
    print(resp.toString());
  }
}
