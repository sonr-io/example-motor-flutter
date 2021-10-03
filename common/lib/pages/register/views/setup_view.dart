import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/register/register.dart';
import 'package:sonr_app/theme/theme.dart';

class SetupView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Get.theme.canvasColor,
        appBar: RegisterSetupTitleBar(
          title: RegisterPageType.Name.title,
          instruction: RegisterPageType.Name.instruction,
          isGradient: RegisterPageType.Name.isGradient,
        ),
        body: Stack(
          children: [
            PageView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                _NamePage(key: RegisterPageType.Name.key),
                _BackupCodeView(key: RegisterPageType.Backup.key),
                _ProfileSetupView(key: RegisterPageType.Contact.key),
              ],
              controller: Get.find<RegisterController>().setupPageController,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: controller.status.value != RegisterPageType.Name
                  ? RegisterBottomSheet(
                      leftButton: controller.status.value.leftButton(),
                      rightButton: controller.status.value.rightButton(),
                    )
                  : null,
            ),
          ],
        )));
  }
}

class _NamePage extends GetView<RegisterController> {
  _NamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final hint = TextUtils.hintName.item1.toLowerCase();
    return SingleChildScrollView(
      reverse: true,
      child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: Get.width,
            margin: EdgeInsets.only(left: 24),
            padding: EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("User ID Name".toUpperCase(), style: AppTextStyles.hairlineDefault),
                Obx(() => Container(
                      child: controller.sName.value.length > 0
                          ? ActionButton(
                              onPressed: () {
                                controller.sName("");
                                controller.sName.refresh();
                              },
                              iconData: SimpleIcons.Clear)
                          : Container(),
                    ))
              ],
            )),
        Container(
            decoration: BoxDecoration(gradient: AppGradients.gradientSecondary, borderRadius: BorderRadius.circular(22)),
            margin: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: ObxValue<RxDouble>(
                (leftPadding) => Stack(children: [
                      TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-z]")),
                        ],
                        style: AppTextStyles.bodyParagraphRegular,
                        autofocus: true,
                        textInputAction: TextInputAction.go,
                        autocorrect: false,
                        showCursor: false,
                        onChanged: (val) {
                          final width = controller.onSNameUpdated(val);
                          leftPadding(width);
                          leftPadding.refresh();
                        },
                        textCapitalization: TextCapitalization.none,
                        // onEditingComplete: controller.setName,
                        decoration: InputDecoration.collapsed(hintText: hint),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: leftPadding.value),
                        child: Text(
                          ".snr/",
                          style: AppTextStyles.bodyParagraphBold,
                        ),
                      ),
                    ]),
                (hint.length * 12.0).obs)),
        Padding(padding: EdgeInsets.all(8)),
        Padding(padding: EdgeInsets.all(200))
      ]),
    );
  }
}

class _BackupCodeView extends GetView<RegisterController> {
  _BackupCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.zero,
        width: Width.full,
        height: Height.full,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onLongPress: () {
                  Clipboard.setData(ClipboardData(text: controller.mnemonic.value));
                  AppRoute.snack(SnackArgs.alert(
                      title: "Copied!", message: "Backup Code copied to clipboard", icon: Icon(SimpleIcons.Copy, color: Colors.white)));
                },
                child: BoxContainer(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: ActionButton(
                          iconData: SimpleIcons.Info,
                          onPressed: () {
                            AppRoute.alert(
                                title: "About Code",
                                description:
                                    "This is your Backup Code if you ever erase your Profile from this device. Back this code in a Safe Location in order to recover your Account.");
                          },
                        ),
                      ),
                      Divider(
                        color: Get.theme.dividerColor,
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 24),
                        child: Text(controller.mnemonic.value, style: AppTextStyles.headline05),
                      ),
                    ],
                  ),
                )),
            Padding(padding: EdgeInsets.all(96)),
          ],
        ));
  }
}

class _ProfileSetupView extends GetView<RegisterController> {
  final hintName = TextUtils.hintName;
  final firstNameFocus = FocusNode();
  final lastNameFocus = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _ProfileSetupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        primary: true,
        reverse: true,
        child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.all(8)),
          // CircleContainer(
          //   alignment: Alignment.center,
          //   padding: EdgeInsets.all(4),
          //   child: Container(
          //     alignment: Alignment.center,
          //     child: SonrIcons.Avatar.greyWith(size: 100),
          //   ),
          // ),
          RegisterTextField(
            type: RegisterTextFieldType.FirstName,
            focusNode: firstNameFocus,
            hint: hintName.item1,
            onEditingComplete: () {
              firstNameFocus.unfocus();
              lastNameFocus.requestFocus();
            },
          ),
          RegisterTextField(
            type: RegisterTextFieldType.LastName,
            focusNode: lastNameFocus,
            hint: hintName.item2,
            onEditingComplete: () {
              // controller.setContact();
            },
          ),
          Padding(padding: EdgeInsets.all(200))
        ]),
      ),
    );
  }
}
