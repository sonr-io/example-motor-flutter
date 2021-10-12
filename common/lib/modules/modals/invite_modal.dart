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
        titleLabel: 'Local Invite',
        footerPrimaryButton: PrimaryButton(
            onPressed: () {
              SonrService.to.respond(true, event.from);
              Get.back();
            },
            label: 'Accept'),
        onDismissed: () => SonrService.to.respond(false, event.from),
        body: _InviteFileBody(event: event));
  }
}

class _InviteFileBody extends StatelessWidget {
  final InviteEvent event;

  const _InviteFileBody({Key? key, required this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Get.theme.backgroundColor,
          ),
        ),
        ListTile(
          isThreeLine: true,
          leading: Text(
            "${event.payload.items.length} Items",
            style: AppTextStyles.headingTitleBold,
          ),
          subtitle: Text(
            "${event.from.profile.fullName}",
            style: AppTextStyles.bodyCaptionBold,
          ),
          trailing: Container(
              width: 72,
              height: 106,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Jan 1, 2021",
                    style: AppTextStyles.bodyCaptionRegular,
                  ),
                  Text(
                    "${event.payload.prettySize()}",
                    style: AppTextStyles.headingSubtitleBold,
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
