// Imports
import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/colors.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### TransferView: Builds Invite View based on InviteRequest Payload Type
class InviteRequestSheet extends StatelessWidget {
  final InviteEvent invite;

  const InviteRequestSheet({Key? key, required this.invite}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BoxContainer(
        padding: EdgeInsets.only(left: 8, right: 8),
        height: 475,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 24),
        child: Column(
          children: [
            _InviteRequestFileHeader(
              payload: invite.payload,
              profile: invite.from.profile,
            ),
            Text(invite.payload.size.toString()),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ColorButton.primary(
                onPressed: () {
                  SonrService.to.respond(true, invite.from);
                },
                text: "Accept",
                icon: SimpleIcons.Check,
                margin: EdgeInsets.symmetric(horizontal: 54),
              ),
            ),
          ],
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
                  child: "View SName".light(fontSize: 16, color: AppColors.primary1),
                  height: 50,
                  decoration: BoxDecoration(color: Get.theme.focusColor.withOpacity(0.9), borderRadius: BorderRadius.circular(22)),
                  padding: const EdgeInsets.all(16.0),
                  preferBelow: false,
                  textStyle: DisplayTextStyle.Light.style(color: Get.theme.cardColor, fontSize: 24),
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
