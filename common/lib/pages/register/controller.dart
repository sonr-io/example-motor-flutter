import 'dart:io';
import 'package:share_plus/share_plus.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

import 'models/type.dart';

class RegisterController extends GetxController {
  // Properties
  final mnemonic = "".obs;
  final sName = "".obs;
  final firstName = "".obs;
  final lastName = "".obs;
  final bio = "".obs;
  final status = Rx<RegisterPageType>(RegisterPageType.Name);

  // Error Status
  final firstNameStatus = Rx<TextInputValidStatus>(TextInputValidStatus.None);
  final lastNameStatus = Rx<TextInputValidStatus>(TextInputValidStatus.None);
  final emailStatus = Rx<TextInputValidStatus>(TextInputValidStatus.None);

  // References
  late ValueNotifier<double> panelNotifier;
  late PageController introPageController;
  late PageController setupPageController;
  late PageController permissionsPageController;
  final ScrollController contactScrollController = ScrollController();

  Profile get profile => Profile(
        firstName: firstName.value,
        lastName: lastName.value,
        bio: bio.value,
        sName: sName.value,
      );

  // * Constructer * //
  @override
  onInit() {
    // Initialize Intro View
    panelNotifier = ValueNotifier<double>(0);
    introPageController = PageController(
      initialPage: 0,
      viewportFraction: 0.9,
    )..addListener(_onPanelScroll);

    // Initialize Setup View
    setupPageController = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );

    // Initialize Permissions View
    permissionsPageController = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );
    super.onInit();
  }

  double onSNameUpdated(String text) {
    sName(text);
    final fullWidth = text.textWidth(AppTextStyles.bodyParagraphRegular, 16);
    return fullWidth / 2;
  }

  void exportCode() async {
    if (mnemonic.value != "") {
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/sonr_backup_code.txt';
      final File file = File(path);
      await file.writeAsString(mnemonic.value);
      Share.shareFiles([path], text: 'Sonr Backup Code');
    }
  }

  /// #### Next Page
  void nextPage(RegisterPageType type) {
    status(type);
    status.refresh();

    // Setup Page
    if (type.isSetup) {
      // Validate Not Last
      if (!type.isFirst) {
        setupPageController.animateToPage(
          type.indexGroup,
          duration: 400.milliseconds,
          curve: Curves.easeIn,
        );
      }
    }

    // Permissions Page
    if (type.isPermissions) {
      // Validate Not Last
      if (!type.isFirst) {
        permissionsPageController.animateToPage(
          type.indexGroup,
          duration: 400.milliseconds,
          curve: Curves.easeIn,
        );
      }
    }
  }

  void registerProfile() {
    // TODO
  }

  // @ Helper: Handle Scroll
  void _onPanelScroll() {
    if (introPageController.page!.toInt() == introPageController.page) {}
    panelNotifier.value = introPageController.page!.toDouble();
  }
}
