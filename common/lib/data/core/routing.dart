import 'dart:async';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sonr_app/pages/details/details.dart';
import 'package:sonr_app/pages/home/home.dart';
import 'package:sonr_app/pages/home/nearby/nearby_controller.dart';
import 'package:sonr_app/pages/register/onboarding.dart';
import 'package:sonr_app/pages/register/register.dart';
import 'package:sonr_app/style/style.dart';

/// #### Enum Values for App Page
enum AppPage {
  /// ### Home `Off`
  /// Dashboard, Search, Personal
  Home,

  /// ### Onboarding `Off`
  /// App Intro, Onboarding
  Onboarding,

  /// ### Register `Off`
  /// New User
  Register,

  /// ### Settings `To`
  /// Profile Settings, App Settings
  Settings,

  /// ### Error `To`
  /// Empty Items, No Connection, No Permission
  Error,

  /// ### Detail `To`
  /// TransferCard Detail View
  Detail,
}

extension AppRoute on AppPage {
  // ^ Static Accessors ^
  /// Returns Current Route Name
  static String get current => Get.currentRoute;

  /// Checks if Current Route is Given Page
  static bool isCurrent(AppPage page) => Get.currentRoute == page.name;

  /// Checks if Current Route is NOT Given Page
  static bool isNotCurrent(AppPage page) => Get.currentRoute != page.name;

  /// Checks Whether Dialog is Currently Open
  static bool get isPopupOpen => Get.isDialogOpen ?? false;

  /// Checks Whether Dialog is Currently Closed
  static bool get isPopupClosed => !isPopupOpen;

  /// Checks Whether BottomSheet is Currently Open
  static bool get isSheetOpen => Get.isBottomSheetOpen ?? false;

  /// Checks Whether BottomSheet is Currently Closed
  static bool get isSheetClosed => !isSheetOpen;

  /// Checks Whether Snackbar is Currently Open
  static bool get isSnackOpen => Get.isSnackbarOpen ?? true;

  /// Checks Whether Snackbar is Currently Closed
  static bool get isSnackClosed => !isSnackOpen;

  // ^ AppPage Properties ^
  /// Returns Animation Curve
  Curve get curve => Curves.easeIn;

  /// Returns Middleware for Page
  List<GetMiddleware> get middlewares => this == AppPage.Home ? [GetMiddleware()] : [];

  /// Returns Transition Animation
  Transition get transition => this.isDialog ? Transition.downToUp : Transition.fadeIn;

  /// Returns Binding for Page by Type
  Bindings get binding {
    switch (this) {
      case AppPage.Register:
        return RegisterBinding();
      default:
        return HomeBinding();
    }
  }

  /// If this Page is Full Screen Dialog
  bool get isDialog => this == AppPage.Detail || this == AppPage.Error || this == AppPage.Settings;

  /// Returns Page Name
  String get name {
    final name = this.toString().split('.').last;
    return "/" + name.toLowerCase();
  }

  /// Returns Onboarding Items for This Page
  List<GlobalKey<State<StatefulWidget>>> get onboardingItems {
    if (this == AppPage.Home) {
      return [
        Get.find<HomeController>().keyOne,
        Get.find<HomeController>().keyTwo,
        Get.find<HomeController>().keyThree,
        Get.find<HomeController>().keyFour,
        Get.find<HomeController>().keyFive,
      ];
    } else {
      return [];
    }
  }

  /// Returns Function to Build Page
  Widget Function() get page {
    switch (this) {
      case AppPage.Register:
        return () => RegisterPage();
      case AppPage.Detail:
        return () => DetailPage();
      case AppPage.Error:
        return () => ErrorPage();
      case AppPage.Onboarding:
        return () => OnboardingPage();
      default:
        return () {
          return ShowCaseWidget(
              builder: Builder(
            builder: (_) => HomePage(),
          ));
        };
    }
  }

  // ^ AppPage Methods ^
  /// Function Builds `GetPage` instance from `AppPage` Properties
  GetPage config() => GetPage(
        binding: this.binding,
        curve: this.curve,
        middlewares: this.middlewares,
        name: this.name,
        page: this.page,
        transition: this.transition,
      );

  /// Pop the current named [page] in the stack and push a new one in its place
  Future<void> off({
    dynamic args,
    void Function()? init,
    Duration? delay,
    bool condition = true,
    bool closeCurrent = false,
  }) async {
    // Init Function
    if (init != null) {
      init();
    }

    // Check for Close Current
    if (closeCurrent) {
      close();
    }

    // Check for Condition
    if (condition) {
      // Shift Screen
      if (delay != null) {
        Future.delayed(delay, () => Get.offNamed(this.name, arguments: args));
      } else {
        Get.offNamed(this.name, arguments: args);
      }
    }
  }

  /// Flat Mode Outgoing
  Future<void> outgoing() async {
    if (isPopupClosed) {
      Get.dialog(
        this.page(),
        barrierColor: Colors.transparent,
        useSafeArea: false,
      );
    }
  }

  /// Pushes a new named [page] to the stack.
  Future<void> to({
    dynamic args,
    void Function()? init,
    Duration? delay,
    bool condition = true,
    bool closeCurrent = false,
  }) async {
    // Init Function
    if (init != null) {
      init();
    }

    // Check for Close Current
    if (closeCurrent) {
      close();
    }

    // Check for Condition
    if (condition) {
      // Check Delay
      if (delay != null) {
        Future.delayed(delay, () => Get.to(this.page(), transition: this.transition, arguments: args));
      } else {
        Get.to(this.page(), transition: this.transition, arguments: args);
      }
    }
  }

  /// Pushes a Alert View Modal
  static Future<bool> alert({
    required String title,
    required String description,
    String buttonText = "Okay",
    bool closeOnResponse = true,
    bool ignoreSafeArea = false,
    void Function()? onDismissed,
    bool dismissible = true,
  }) async {
    // Create Future Completer
    var completer = Completer<bool>();
    Get.dialog(
      BlurredBackground(
          child: AlertOverlay(
        title,
        description,
        buttonText,
        () {
          completer.complete(true);
          Future.delayed(300.milliseconds, () => Get.back());
        },
      )),
      transitionDuration: 0.seconds,
      barrierDismissible: dismissible,
      barrierColor: Colors.transparent,
      useSafeArea: !ignoreSafeArea,
    );
    return completer.future;
  }

  /// Pushes a Popup Modal
  static Future<void> popup(
    Widget child, {
    bool ignoreSafeArea = false,
    bool dismissible = true,
    dynamic args,
    void Function()? init,
    void Function()? onDismissed,
    Duration? delay,
  }) async {
    if (isPopupClosed) {
      // Init Function
      if (init != null) {
        init();
      }

      // Push Dialog
      Get.dialog(
        BlurredBackground(
            child: child,
            onTapped: () {
              Future.delayed(300.milliseconds, () {
                if (onDismissed != null) {
                  onDismissed();
                }
                Get.back();
              });
            }),
        barrierDismissible: dismissible,
        barrierColor: Colors.transparent,
        useSafeArea: !ignoreSafeArea,
      );
    }
  }

  /// Pushes Postioned Modal relative to Parent Key
  static Future<void> positioned(
    Widget child, {
    required GlobalKey parentKey,
    bool ignoreSafeArea = false,
    bool dismissible = true,
    dynamic args,
    void Function()? init,
    void Function()? onDismissed,
    Duration? delay,
    Offset? offset,
  }) async {
    // Hide Keyboard Before Route

    // Init Function
    if (init != null) {
      init();
    }

    final RxBool hasDismissed = false.obs;
    Get.dialog(
      BlurredBackground(
          onTapped: () {
            hasDismissed(true);
            Future.delayed(300.milliseconds, () => Get.back());
          },
          child: PositionedOverlay(
            parentKey: parentKey,
            hasDismissed: hasDismissed,
            child: child,
            offset: offset,
          )),
      transitionDuration: 0.seconds,
      barrierColor: Colors.transparent,
      useSafeArea: !ignoreSafeArea,
    );
  }

  /// Pushes a Question View Modal
  static Future<bool> question({
    required String title,
    required String description,
    String acceptTitle = "Yes!",
    String declineTitle = "No",
    bool closeOnResponse = true,
    bool ignoreSafeArea = false,
    bool dismissible = true,
  }) async {
    // Hide Keyboard Before Route

    // Create Future Completer
    var completer = Completer<bool>();

    // Push Dialog
    Get.dialog(
      BlurredBackground(
          child: QuestionOverlay(
            title,
            description,
            (result) {
              completer.complete(result);
              Get.back();
            },
            acceptTitle,
            declineTitle,
          ),
          onTapped: () {
            Future.delayed(300.milliseconds, () {
              completer.complete(false);
              Get.back();
            });
          }),
      transitionDuration: 0.seconds,
      barrierDismissible: dismissible,
      barrierColor: Colors.transparent,
      useSafeArea: !ignoreSafeArea,
    );
    return completer.future;
  }

  /// Pushes a BottomSheet View
  static Future<void> sheet(
    Widget child, {
    Key? key,
    bool forced = false,
    bool ignoreSafeArea = false,
    double elevation = 8,
    bool dismissible = true,
    bool persistent = false,
    Function(DismissDirection)? onDismissed,
    dynamic args,
    void Function()? init,
    Duration? delay,
  }) async {
    // Hide Keyboard Before Route

    // Check if Forced Open
    if (forced) {
      close();
    }

    // Init Method
    if (init != null) {
      init();
    }

    // Open Sheet
    if (isSheetClosed) {
      Get.bottomSheet(
          dismissible
              ? BlurredBackground(
                  onTapped: () {
                    Future.delayed(300.milliseconds, () {
                      onDismissed!(DismissDirection.down);
                      Get.back();
                    });
                  },
                  child: Dismissible(
                    key: key!,
                    child: child,
                    direction: DismissDirection.down,
                    onDismissed: onDismissed!,
                  ),
                )
              : BlurredBackground(child: child),
          isDismissible: dismissible,
          persistent: persistent,
          barrierColor: Colors.transparent,
          ignoreSafeArea: ignoreSafeArea,
          elevation: 0);
    }
  }

  /// Display snackbar on bottom of current page
  static Future<void> snack(SnackArgs args) async {
    if (isSnackClosed) {
      // Hide Keyboard Before Route

      // Push Snackbar
      Get.snackbar(
        args.title!,
        args.message,
        snackStyle: args.snackStyle,
        backgroundGradient: args.backgroundGradient,
        progressIndicatorBackgroundColor: args.progressIndicatorBackgroundColor,
        progressIndicatorController: args.progressIndicatorController,
        progressIndicatorValueColor: args.progressIndicatorValueColor,
        mainButton: args.mainButton,
        duration: args.duration,
        snackPosition: args.position,
        reverseAnimationCurve: Curves.elasticOut,
        backgroundColor: args.backgroundColor,
        icon: args.icon,
        colorText: args.textColor,
        borderRadius: 22,
        isDismissible: args.isDismissible,
        onTap: args.onTap,
        dismissDirection: args.dismissDirection,
      );
    }
  }

  /// Closes Current Page
  static void close({bool removeAll = false}) {
    Get.back(closeOverlays: removeAll);
  }
}

/// #### Home Controller Bindings
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<NearbyController>(NearbyController());
  }
}

/// #### Register Page Bindings
class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<RegisterController>(RegisterController());
  }
}

/// #### Transfer Screen Bindings
class TransferBinding implements Bindings {
  @override
  void dependencies() {}
}
