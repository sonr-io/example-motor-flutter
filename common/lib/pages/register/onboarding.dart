import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:sonr_app/style/style.dart';
import 'package:flutter/widgets.dart';
import 'package:sonr_app/style/components/text.dart';
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
    final color = AppColors.neutrals1;
    switch (this) {
      case OnboardPageType.Welcome:
        return 'Welcome'.heading(color: color, fontSize: 36);
      case OnboardPageType.Universal:
        return 'Universal'.heading(color: color, fontSize: 36);
      case OnboardPageType.Secure:
        return 'Security First'.heading(color: color, fontSize: 36);
      case OnboardPageType.Start:
        return 'Get Started'.heading(color: color, fontSize: 36);
    }
  }

  /// Returns this Panels Description as Rich Text
  Widget description() {
    final color = Get.theme.hintColor;
    final size = 20.0;
    switch (this) {
      case OnboardPageType.Welcome:
        return [
          'Sonr has '.lightSpan(fontSize: size, color: color),
          'NO '.subheadingSpan(fontSize: size, color: color),
          'File Size Limits. Works like Airdrop Nearby and like Email when nobody is around.'.lightSpan(
            fontSize: size,
            color: color,
          )
        ].rich();
      case OnboardPageType.Universal:
        return 'Runs Natively on iOS, Android, MacOS, Windows and Linux.'.light(fontSize: size, color: color);
      case OnboardPageType.Secure:
        return 'Completely Encrypted Communication. All data is verified and signed.'.light(fontSize: size, color: color);
      case OnboardPageType.Start:
        return 'Lets Continue by selecting your Sonr Name.'.light(fontSize: size, color: color);
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
