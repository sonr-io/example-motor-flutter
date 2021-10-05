import 'package:sonr_app/pages/home/controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

enum ComposeStatus {
  Initial,
  Checking,
  NonExisting,
  Existing,
}

extension ComposeStatusUtil on ComposeStatus {
  /// Convert this Enum to Animated Status Type
  AnimatedStatusType toAnimatedStatus() {
    switch (this) {
      case ComposeStatus.Initial:
        return AnimatedStatusType.Initial;
      case ComposeStatus.Checking:
        return AnimatedStatusType.Loading;
      case ComposeStatus.NonExisting:
        return AnimatedStatusType.Error;
      case ComposeStatus.Existing:
        return AnimatedStatusType.Success;
    }
  }
}

/// #### Invite Composer for Remote Transfer
class InviteComposer extends GetView<HomeController> {
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
            padding: EdgeInsets.all(16),
            // margin: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Remote Invite", style: AppTextStyles.headingTitleBold),
                Text(
                  "Type the SName of the User you want to Share with.",
                  style: AppTextStyles.bodyParagraphRegular,
                ),
                Container(
                  padding: EdgeInsets.only(top: 16, left: 8, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleContainer(
                          padding: EdgeInsets.all(4),
                          child: SimpleIcons.ATSign.icon(
                            color: Get.theme.focusColor,
                            size: 24,
                          )),
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 200,
                              padding: EdgeInsets.only(right: 24),
                              // child: SNameTextField(
                              //   onEditingComplete: (value) {
                              //     print("TODO");
                              //   },
                              //   onChanged: (value) {
                              //     print("TODO");
                              //   },
                              // ),
                            ),
                          ),
                          // AnimatedStatus()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}

// class AnimatedStatus extends GetView<TransferController> {
//   const AnimatedStatus();

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => controller.shouldUpdate.value
//         ? FadeInLeftBig(
//             from: 30,
//             animate: controller.shouldUpdate.value,
//             child: Container(
//               child: _buildStatusIcon(controller.composeStatus.value),
//             ))
//         : FadeOutRight(
//             from: 30,
//             animate: !controller.shouldUpdate.value,
//             child: Container(
//               child: _buildStatusIcon(controller.composeStatus.value),
//             )));
//   }

//   Widget _buildStatusIcon(ComposeStatus status) {
//     switch (status) {
//       case ComposeStatus.Initial:
//         return Container();
//       case ComposeStatus.Checking:
//         return CircleLoader();
//       case ComposeStatus.NonExisting:
//         return SimpleIcons.Close.icon(color: AppColors.primary3, size: 36);
//       case ComposeStatus.Existing:
//         return SimpleIcons.Check.icon(color: AppColors.primary3, size: 36);
//     }
//   }
// }
