import 'dart:typed_data';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:intl/intl.dart';
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
            mainAxisSize: MainAxisSize.max,
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
        _InviteFilePreview(payload: event.payload),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: ListTile(
            title: Text(
              "${event.payload.items.length} Items",
              style: AppTextStyles.headingTitleBold,
            ),
            subtitle: PeerRowItem(peer: event.from),
            trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: AppRadii.radiusCardInfo,
                  color: _buildInfoColor(),
                ),
                width: 72,
                padding: EdgeInsets.all(4),
                height: 106,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildDateTimeText(),
                    _buildSizeText(),
                  ],
                )),
          ),
        ),
      ],
    );
  }

  Color _buildInfoColor() {
    return Get.isDarkMode ? AppColors.neutrals8.withOpacity(0.95) : AppColors.neutrals1.withOpacity(0.95);
  }

  // Build DateTime Text
  Widget _buildDateTimeText() {
    final date = DateTime.fromMillisecondsSinceEpoch(event.received.toInt() * 1000);
    final formatter = DateFormat('MMM dd, yyyy');
    return Text(
      formatter.format(date),
      maxLines: 1,
      overflow: TextOverflow.fade,
      textAlign: TextAlign.center,
      style: AppTextStyles.bodyCaptionRegular.copyWith(
        color: Get.isDarkMode ? AppColors.neutrals3 : AppColors.neutrals7,
      ),
    );
  }

  // Build Size Text
  Widget _buildSizeText() {
    return Text(
      "${event.payload.prettySize()}",
      textAlign: TextAlign.center,
      maxLines: 1,
      style: AppTextStyles.headingSubtitleBold.copyWith(
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals8,
      ),
    );
  }
}

class _InviteFilePreview extends StatelessWidget {
  final Payload payload;

  const _InviteFilePreview({Key? key, required this.payload}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 200,
      child: Builder(builder: (context) {
        if (payload.items.length == 1) {
          return _buildSinglePayload(payload.items.first);
        } else if (payload.items.length < 4) {
          return _buildFewPayload(context);
        } else {
          return _buildMultiplePayload();
        }
      }),
    );
  }

  Widget _buildSinglePayload(Payload_Item item) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: MemoryImage(Uint8List.fromList(
            item.file.thumbnail.buffer,
          )),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFewPayload(BuildContext context) {
    final isVisible = true.obs;
    final currentIndex = 0.0.obs;
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (value) {
            isVisible(true);
            currentIndex(value.toDouble());
            Future.delayed(1500.milliseconds, () {
              isVisible(false);
            });
          },
          itemBuilder: (context, index) {
            return _buildSinglePayload(payload.items[index]);
          },
          itemCount: payload.items.length,
        ),
        Obx(
          () => IgnorePointer(
            child: AnimatedOpacity(
              duration: 200.milliseconds,
              opacity: isVisible.value ? 1.0 : 0.0,
              child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 24),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.neutrals1.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    padding: EdgeInsets.all(8),
                    child: DotsIndicator(
                      dotsCount: payload.items.length,
                      position: currentIndex.value,
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMultiplePayload() {
    return GridView.builder(
        itemCount: payload.items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return _buildSinglePayload(payload.items[index]);
        });
  }
}