import 'dart:io';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/register/register.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

class PermissionsView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List<Widget>.generate(RegisterPageTypeUtils.permissionsPageTypes.length, (index) {
          final item = RegisterPageTypeUtils.permissionsPageTypes[index];
          return PermPanel(
            buttonText: item.permissionsButtonText(),
            onPressed: () async {
              // Location Perms
              if (item == RegisterPageType.Location) {
                final result = await Permissions.Location.request();
                if (result || await Permissions.Location.isGranted) {
                  controller.nextPage(RegisterPageType.Gallery);
                }
              }

              // Gallery Perms
              else if (item == RegisterPageType.Gallery) {
                final result = await Permissions.Gallery.request();
                if (result || await Permissions.Gallery.isGranted) {
                  if (Platform.isIOS) {
                    controller.nextPage(RegisterPageType.Notifications);
                  } else {
                    AppPage.Home.off(args: HomeArguments.FirstLoad);
                  }
                }
              } else if (item == RegisterPageType.Notifications) {
                final result = await Permissions.Notifications.request();
                if (result || await Permissions.Notifications.isGranted || Platform.isAndroid) {
                  AppPage.Home.off(args: HomeArguments.FirstLoad);
                }
              }
            },
            imagePath: item.permissionsImagePath(),
            buttonTextColor: item.permissionsButtonColor(),
          );
        }),
        controller: Get.find<RegisterController>().permissionsPageController,
      ),
    );
  }
}

class PermPanel extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final String imagePath;
  final Color buttonTextColor;
  const PermPanel({Key? key, required this.buttonText, required this.onPressed, required this.imagePath, required this.buttonTextColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocations.fixedCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: NeutralButton(
          onPressed: () => onPressed(),
          label: buttonText,
        ),
      ),
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
