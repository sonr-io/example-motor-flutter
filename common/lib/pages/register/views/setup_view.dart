import 'package:sonr_app/style/form/textfield.dart';
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
          title: controller.status.value.title,
          instruction: controller.status.value.instruction,
          isGradient: controller.status.value.isGradient,
        ),
        body: Stack(
          children: [
            PageView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                _NamePage(key: RegisterPageType.Name.key),
                // _BackupCodeView(key: RegisterPageType.Backup.key),
                _EditProfilePage(key: RegisterPageType.Profile.key),
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
    final hintName = TextUtils.hintName;
    final sNameHint = hintName.item1.toLowerCase().substring(0, 1) + hintName.item2.substring(0, 1).toUpperCase() + hintName.item2.substring(1);
    final fullWidth = sNameHint.textWidth(AppTextStyles.bodyParagraphRegular, 16);
    final leftPaddingInitial = fullWidth / 2;
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
                          ? CircleButton(
                              size: CircleButtonSize.Small,
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
                        onSubmitted: (val) {
                          controller.nextPage(RegisterPageType.Profile);
                        },
                        decoration: InputDecoration.collapsed(hintText: sNameHint),
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
                (leftPaddingInitial).obs)),
        Padding(padding: EdgeInsets.all(8)),
        Padding(padding: EdgeInsets.all(200))
      ]),
    );
  }
}

// ignore: unused_element
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
                        child: CircleButton(
                          size: CircleButtonSize.Small,
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

class _EditProfilePage extends GetView<RegisterController> {
  _EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hintName = TextUtils.hintName;
    final firstNameHint = hintName.item1;
    final lastNameHint = hintName.item2;
    return Container(
      padding: EdgeInsets.only(left: 16, top: 8, right: 16),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 108,
                    height: 108,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [BoxShadow(spreadRadius: 2, blurRadius: 10, color: Colors.black.withOpacity(0.1), offset: Offset(0, 10))],
                        shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/placeholders/avatar.png"))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            buildTextField(
              "First Name",
              firstNameHint,
              textInputAction: TextInputAction.next,
              onChanged: (val) => controller.firstName(val),
            ),
            buildTextField(
              "Last Name",
              lastNameHint,
              textInputAction: TextInputAction.next,
              onChanged: (val) => controller.lastName(val),
            ),
            buildTextField("Bio", "I like trains.",
                textInputAction: TextInputAction.done,
                onChanged: (val) => controller.bio(val),
                onSubmitted: (val) => controller.nextPage(RegisterPageType.Location)),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
    String labelText,
    String placeholder, {
    void Function(String)? onChanged,
    void Function(String)? onSubmitted,
    required TextInputAction textInputAction,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        textInputAction: textInputAction,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        style: AppTextStyles.bodyParagraphRegular,
        decoration: InputDecoration(
            fillColor: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals8,
            focusColor: AppColors.primary,
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primary, width: 2)),
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText.toUpperCase(),
            labelStyle: AppTextStyles.hairlineDefault,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary),
            ),
            hintStyle: AppTextStyles.bodyParagraphRegular.copyWith(
              color: AppColors.neutrals4,
            )),
      ),
    );
  }
}
