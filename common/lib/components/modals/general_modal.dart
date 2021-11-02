import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

/// #### General Modal View
class GeneralModal extends StatelessWidget {
  final String? titleLabel;
  final Widget? body;
  final Widget? footerPrimaryButton;
  final Widget? footerSecondaryButton;
  final EdgeInsets? margin;
  final void Function()? onDismissed;

  const GeneralModal({Key? key, this.titleLabel, this.footerPrimaryButton, this.footerSecondaryButton, this.body, this.onDismissed, this.margin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlurredBackground(
        onTapped: () => closeModal(),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.gradientSecondary,
            borderRadius: AppRadii.radiusCard,
            border: AppBorders.primaryBorder,
            boxShadow: [AppShadows.depth4],
          ),
          padding: EdgeInsets.symmetric(vertical: 24),
          margin: margin ?? EdgeInsets.symmetric(horizontal: 24, vertical: 172),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title Bar with Close
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titleLabel ?? "Unspecified",
                      style: AppTextStyles.headingTitleBold,
                    ),
                    CircleButton(
                      onPressed: () => closeModal(),
                      iconData: SiliconsLine.close,
                      size: CircleButtonSize.Small,
                    ),
                  ],
                ),
              ),

              // Body
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 16),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: body,
                ),
              ),

              // Footer
              Container(
                margin: EdgeInsets.symmetric(horizontal: 42),
                child: footerPrimaryButton ?? Container(),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 42),
                child: footerSecondaryButton ?? Container(),
              ),
            ],
          ),
        ));
  }

  void closeModal() {
    Future.delayed(300.milliseconds, () {
      if (onDismissed != null) {
        onDismissed!();
      }
      Get.back();
    });
  }
}
