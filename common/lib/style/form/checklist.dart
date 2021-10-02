import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// Option Displayed in Checklist
class ChecklistOption {
  final String title;
  final RxBool isEnabled;
  ChecklistOption(this.title, this.isEnabled);

  /// Method Toggles Attached RxBool
  void toggle() {
    isEnabled(!isEnabled.value);
  }

  /// Returns this Widgets Size
  Size get size => this.title.size(DisplayTextStyle.Light, fontSize: 24);

  /// Returns Icon for Checklist Option based on State
  Widget icon() {
    if (isEnabled.value) {
      return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SimpleIcons.CheckboxActive.icon(color: Get.theme.focusColor, size: 24),
          SimpleIcons.Check.icon(color: Get.theme.cardColor, size: 32)
        ],
      );
    } else {
      return SimpleIcons.CheckboxInactive.icon(
        color: Get.theme.focusColor,
        size: 32,
      );
    }
  }

  /// Returns Text for Checklist Option based on State
  Widget text() {
    return AnimatedScale(
      scale: isEnabled.value ? 1.05 : 1.0,
      duration: 300.milliseconds,
      child: title.light(color: Get.theme.focusColor, fontSize: 24),
    );
  }
}

/// Form Field to Display List of Strings as Gradient Tab View
class Checklist extends StatelessWidget {
  final List<ChecklistOption> options;
  final Function(int idx) onSelectedOption;
  const Checklist({
    Key? key,
    required this.options,
    required this.onSelectedOption,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ObxValue<RxInt>(
        (currentIdx) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Get.theme.backgroundColor,
                border: Border.all(
                  color: Get.theme.canvasColor,
                  width: 1.5,
                )),
            constraints: options.boxConstraints,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List<Widget>.generate(
                  options.length,
                  (index) => GestureDetector(
                        onTap: () => options[index].toggle(),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 160, minWidth: 40),
                          child: Column(children: [
                            Padding(padding: EdgeInsets.only(top: 4)),
                            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                              options[index].icon(),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: options[index].text(),
                              ),
                            ]),
                            index + 1 != options.length
                                ? Divider(
                                    color: Get.theme.dividerColor,
                                    endIndent: 8,
                                    indent: 8,
                                  )
                                : Container(),
                          ]),
                        ),
                      )),
            )),
        0.obs);
  }
}

extension ChecklistOptionUtils on List<ChecklistOption> {
  /// Return BoxConstraints based on List of InfolistOptions
  BoxConstraints get boxConstraints {
    // Initialize
    double maxTextWidth = 0;
    double maxIconWidth = this.length * 24;
    double adjustedPaddingWidth = this.length * 8;

    // Iterate Over Text
    this.forEach((o) {
      maxTextWidth += o.size.width;
    });

    return BoxConstraints(maxWidth: maxTextWidth + maxIconWidth + adjustedPaddingWidth);
  }
}
