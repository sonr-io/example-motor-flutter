import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

import 'modals.dart';

/// #### Invite Composer for Remote Transfer
class InviteModal extends StatelessWidget {
  final InviteEvent event;
  InviteModal({required this.event});
  @override
  Widget build(BuildContext context) {
    return GeneralModal(
        titleLabel: 'Invite',
        footerPrimaryButton: PrimaryButton(
            onPressed: () {
              SonrService.to.respond(true, event.from);
              Get.back();
            },
            label: 'Accept'),
        onDismissed: () => SonrService.to.respond(false, event.from),
        body: _InviteRequestFileHeader(
          payload: event.payload,
          profile: event.from.profile,
        ));
  }
}

/// #### Header: Auth Invite File Header
class _InviteRequestFileHeader extends StatelessWidget {
  final Payload payload;
  final Profile profile;

  const _InviteRequestFileHeader({Key? key, required this.payload, required this.profile}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: CircleContainer(
                    margin: EdgeInsets.only(top: 8, left: 8),
                    padding: EdgeInsets.all(4),
                    child: Container(
                      width: 64,
                      height: 64,
                      child: profile.hasPicture()
                          ? CircleAvatar(
                              backgroundImage: MemoryImage(Uint8List.fromList(profile.picture)),
                            )
                          : SimpleIcons.User.gradient(size: 42),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4, left: 4),
                child: Tooltip(
                  message: profile.sName + ".snr/",
                  child: Text(
                    "View SName",
                    style: AppTextStyles.bodyCaptionRegular,
                  ),
                  height: 50,
                  decoration: BoxDecoration(color: Get.theme.focusColor.withOpacity(0.9), borderRadius: BorderRadius.circular(22)),
                  padding: const EdgeInsets.all(16.0),
                  preferBelow: false,
                  textStyle: AppTextStyles.bodyParagraphBold,
                  showDuration: 1800.milliseconds,
                  waitDuration: 0.milliseconds,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
