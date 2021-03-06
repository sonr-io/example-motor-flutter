import 'dart:async';
import 'package:sonr_app/style/style.dart';
import 'theme/theme.dart';

/// #### Main Method
Future<void> main() async {
  // Init Services
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(
    () => SonrService().init(vars: Map.fromEntries(EnvVars.values.map((e) => e.mapEntry))),
    permanent: true,
  );

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
                    style: AppTextStyles.headline02,
                  )),
            ),
          ],
        ));
  }

  Future<void> _checkInitialPage() async {
    // Create Profile
    final hint = TextUtils.hintFullName;
    final profile = Profile(
      firstName: hint.item1,
      lastName: hint.item2,
      sName: hint.item1[0] + hint.item2,
    );

    await SonrService.to.start(
        location: Location(
          latitude: 0,
          longitude: 0,
        ),
        profile: profile);

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
