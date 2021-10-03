import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:sonr_app/style/style.dart';
import 'package:flutter/widgets.dart';
import 'package:sonr_app/theme/theme.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
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
    final basePath = "assets/images/illustrations/";
    switch (this) {
      case OnboardPageType.Welcome:
        return basePath + "Welcome.png";
      case OnboardPageType.Universal:
        return basePath + "Universal.png";
      case OnboardPageType.Secure:
        return basePath + "Secure.png";
      case OnboardPageType.Start:
        return basePath + "Start.png";
    }
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
        return Text("Sonr has NO file size limits. Works like Airdrop Nearby and Email when it needs to.", style: AppTextStyles.bodyCaptionRegular);
      case OnboardPageType.Universal:
        return Text('Runs Natively on iOS, Android, MacOS, Windows and Linux.', style: AppTextStyles.bodyCaptionRegular);
      case OnboardPageType.Secure:
        return Text('Completely Encrypted Communication. All data is verified and signed.', style: AppTextStyles.bodyCaptionRegular);
      case OnboardPageType.Start:
        return Text('Lets Continue by selecting your Sonr Name.', style: AppTextStyles.bodyCaptionRegular);
    }
  }

  /// Model for this InfoPanel
  PageModel model() {
    return PageModel(
        widget: Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 45.0, top: 45.0),
          child: Image.asset(
            this.imagePath,
            color: pageImageColor,
          ),
        ),
        Container(
          width: double.infinity,
          child: this.title(),
        ),
        Container(
          width: double.infinity,
          child: this.description(),
        ),
      ],
    ));
  }
}
