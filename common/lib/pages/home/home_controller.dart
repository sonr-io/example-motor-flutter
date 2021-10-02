export 'views/views.dart';
import 'dart:async';
import 'package:sonr_app/style/style.dart';
import 'views/views.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  // Properties
  final appbarOpacity = 1.0.obs;
  final isConnecting = true.obs;
  final view = HomeView.Dashboard.obs;

  // Propeties
  final query = "".obs;

  // Global Keys
  final keyOne = GlobalKey();
  final keyTwo = GlobalKey();
  final keyThree = GlobalKey();
  final keyFour = GlobalKey();
  final keyFive = GlobalKey();

  // References
  late ScrollController scrollController;
  late TabController tabController;

  /// #### Controller Constructer
  @override
  onInit() {
    // Handle Tab Controller
    tabController = TabController(vsync: this, length: 2);
    scrollController = ScrollController(keepScrollOffset: false);

    // Initialize
    super.onInit();
  }

  @override
  void onReady() {
    // Check Entry Arguments
    HomeArguments args = Get.arguments;
    if (args.isFirstLoad) {}
    super.onReady();
  }

  /// #### On Dispose
  @override
  void onClose() {
    super.onClose();
  }

  /// #### Change View
  void changeView(HomeView newView) {
    if (newView == HomeView.Search) {
      // Handle Keyboard/Opacity
      appbarOpacity(0);

      // Set New View with Delay
      Future.delayed(200.milliseconds, () {
        view(newView);
        view.refresh();
      });
    } else {
      // Handle Keyboard/Opacity
      appbarOpacity(1);

      // Set New View
      view(newView);
      view.refresh();
    }
  }

  /// #### Update Bottom Bar Index
  void setBottomIndex(int newIndex) {
    // Check if Bottom Index is different
    if (view.value.isNotIndex(newIndex)) {
      // Change Index
      tabController.animateTo(newIndex);
      // Set Page
      view(HomeView.values[newIndex]);
    }
  }
}
