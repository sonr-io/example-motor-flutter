import 'package:onboarding/onboarding.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Onboarding(
        pagesContentPadding: EdgeInsets.only(top: 45),
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonBorderRadius: AppRadii.radiusButton,
          proceedpButtonText: Text("Register", style: AppTextStyles.buttonDefault),
          proceedButtonColor: AppColors.primary,
          proceedButtonRoute: (context) {
            return AppPage.Register.off();
          },
        ),
        pages: OnboardPageType.values.map((e) => e.model()).toList(),
        isSkippable: true,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_nonuniform,
            ),
          ),
        ),
      ),
    );
  }
}

enum OnboardPageType {
  Welcome,
  Universal,
  Secure,
  Start,
}

extension OnboardPageTypeUtil on OnboardPageType {
  /// Return Image Path for Type
  String get imagePath {
    final index = this.index + 1;
    return Get.isDarkMode ? "assets/images/onboarding/$index-dark.png" : "assets/images/onboarding/$index-light.png";
  }

  /// Returns this Panels Title as Heading Widget
  Widget title() {
    switch (this) {
      case OnboardPageType.Welcome:
        return Text('Welcome', style: AppTextStyles.headline03);
      case OnboardPageType.Universal:
        return Text('Universal', style: AppTextStyles.headline03);
      case OnboardPageType.Secure:
        return Text('Security First', style: AppTextStyles.headline03);
      case OnboardPageType.Start:
        return Text('Get Started', style: AppTextStyles.headline03);
    }
  }

  /// Returns this Panels Description as Rich Text
  Widget description() {
    switch (this) {
      case OnboardPageType.Welcome:
        return Text("Sonr has NO file size limits. Works like Airdrop Nearby and Email when it needs to.", style: AppTextStyles.bodyParagraphRegular);
      case OnboardPageType.Universal:
        return Text('Runs Natively on iOS, Android, MacOS, Windows and Linux.', style: AppTextStyles.bodyParagraphRegular);
      case OnboardPageType.Secure:
        return Text('Completely Encrypted Communication. All data is verified and signed.', style: AppTextStyles.bodyParagraphRegular);
      case OnboardPageType.Start:
        return Text('Lets Continue by selecting your Sonr Name.', style: AppTextStyles.bodyParagraphRegular);
    }
  }

  /// Model for this InfoPanel
  PageModel model() {
    return PageModel(
        widget: Column(
      children: [
        Expanded(
          child: Container(
            margin: this.index == 0 ? EdgeInsets.all(0) : EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(
              this.imagePath,
              fit: this.index == 0 ? BoxFit.cover : BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 45),
          width: double.infinity,
          child: this.title(),
          padding: EdgeInsets.only(bottom: 8),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 45),
          width: double.infinity,
          child: this.description(),
        ),
        Container(
          height: 72,
        )
      ],
    ));
  }
}
