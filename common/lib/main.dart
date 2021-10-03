import 'dart:async';

import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:get/get.dart';
import 'package:sonr_app/style/style.dart';

import 'data/services/services.dart';
import 'theme/theme.dart';

/// #### Main Method
Future<void> main() async {
  // Init Services
  WidgetsFlutterBinding.ensureInitialized();

  // Services
  await AppServices.init();

  // Check Platform
  runApp(SplashPage());
}

/// #### Root App Widget
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () => _checkInitialPage(),
      themeMode: ThemeMode.dark,
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      getPages: [
        AppPage.Home.config(),
        AppPage.Register.config(),
        AppPage.Onboarding.config(),
      ],
      navigatorKey: Get.key,
      navigatorObservers: [
        GetObserver(),
      ],
      home: _buildScaffold(),
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            // @ Rive Animation
            RiveContainer(
              type: RiveBoard.Splash,
              width: Get.width,
              height: Get.height,
              placeholder: SizedBox(child: CircleLoader()),
            ),

            // @ Fade Animation of Text
            Positioned(
              bottom: 100,
              child: FadeInUp(
                  delay: 2222.milliseconds,
                  child: Text(
                    "Sonr",
                    style: AppTextStyles.hero,
                  )),
            ),
          ],
        ));
  }

  Future<void> _checkInitialPage() async {
    await Future.delayed(3500.milliseconds);

    // # Check for User
    if (SonrService.to.connection.value.isOnline) {
      if (Get.isPlatformDarkMode) {
        AppPage.Onboarding.off();
      }
      // # Handle Returning
      else {
        // All Valid
        if (await Permissions.Location.isGranted) {
          AppPage.Home.off(args: HomeArguments.FirstLoad);
        }

        // No Location
        else {
          Permissions.Location.request().then((value) {
            if (value) {
              AppPage.Home.off(args: HomeArguments.FirstLoad);
            }
          });
        }
      }
    } else {
      AppPage.Error.to(args: ErrorPageArgs.noNetwork());
    }
  }
}
