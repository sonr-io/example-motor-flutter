import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

/// #### General Modal View
class GeneralModal extends StatelessWidget {
  final String? titleLabel;
  final Widget? body;
  final Widget? footerPrimaryButton;
  final Widget? footerSecondaryButton;
  final void Function()? onDismissed;

  const GeneralModal({Key? key, this.titleLabel, this.footerPrimaryButton, this.footerSecondaryButton, this.body, this.onDismissed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlurredBackground(
        onTapped: () => closeModal(),
        child: Container(
          decoration: BoxDecoration(
            color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals8,
            borderRadius: AppRadii.radiusCard,
            boxShadow: [AppShadows.depth4],
          ),
          padding: EdgeInsets.symmetric(vertical: 24),
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
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
                      iconData: SimpleIcons.Close,
                      size: CircleButtonSize.Small,
                    ),
                  ],
                ),
              ),

              // Body
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 32),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: body,
                ),
              ),

              // Footer
              footerPrimaryButton ?? Container(),
              footerSecondaryButton ?? Container(),
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
