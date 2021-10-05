import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:get/get.dart';
import 'package:sonr_app/style/style.dart';
import 'theme/theme.dart';

/// #### Application Services
Future<void> initServices() async {
  bool hasEnv = false;

  // Initialize Services
  try {
    await dotenv.load(fileName: ".env");
    hasEnv = true;
  } catch (e) {
    print(".env File not Found");
    hasEnv = false;
  }

  // Initialize Sonr
  await Get.putAsync(() => SonrService().init(enviornmentVariables: hasEnv ? dotenv.env : null), permanent: true);
}

/// #### Main Method
Future<void> main() async {
  // Init Services
  WidgetsFlutterBinding.ensureInitialized();

  // Services
  await initServices();

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

    // All Valid
    if (await Permissions.Location.isGranted) {
      AppPage.Home.off(args: HomeArguments.FirstLoad);
    }

    // No Location
    else {
      AppPage.Onboarding.off();
    }

    // } else {
    //   AppPage.Error.to(args: ErrorPageArgs.noNetwork());
    // }
  }
}
