import 'dart:async';
import 'package:sonr_app/style/style.dart';
import 'home.dart';

enum HomeView { Dashboard, Personal, Explorer, Search }

/// #### Home View Enum Extension
extension HomeViewUtils on HomeView {
  /// #### Method Checks for Dashboard View
  bool get isDashboard => this == HomeView.Dashboard;

  /// #### Method Checks for Explorer View
  bool get isExplorer => this == HomeView.Explorer;

  /// #### Method Checks for Personal View
  bool get isPersonal => this == HomeView.Personal;

  /// #### Method Checks for Search View
  bool get isSearch => this == HomeView.Search;

  /// #### Method Checks if View is For Mobile Screen
  bool get isMobileView => this.isDashboard || this.isPersonal || this.isSearch;

  /// #### Method Checks if View is For Desktop Screen
  bool get isDesktopView => !this.isMobileView;

  /// #### Method Returns this Views Name
  String get name => this.toString().substring(this.toString().indexOf('.') + 1);

  /// #### Get Title From View Type
  String get title => this.isDashboard ? "Welcome" : this.name;

  /// #### Get AppBar Padding from View Type
  EdgeInsets get paddingAppbar => this.isDashboard ? EdgeInsets.only(top: 68) : EdgeInsets.zero;

  /// #### Get Icon Padding from View Type
  EdgeInsets get paddingIcon => this.isMobileView
      ? EdgeInsets.only(
          top: 8.0,
          bottom: 8,
          left: this.isDashboard ? 16 : 8,
          right: this.isPersonal ? 16 : 8,
        )
      : EdgeInsets.zero;

  /// ### isIndex(`int`) → `bool`
  /// - Method Checks if Given Index is Views Index
  bool isIndex(int i) => this.index == i;

  /// ### isNotIndex(`int`) → `bool`
  /// - Method Checks if Given Index is NOT Views Index
  bool isNotIndex(int i) => this.index != i;

  /// ### iconData(`bool`) → `IconData`
  /// - Method Builds and Returns IconData for View Type
  IconData iconData(bool isSelected) {
    switch (this) {
      case HomeView.Dashboard:
        return isSelected ? SimpleIcons.HomeActive : SimpleIcons.HomeInactive;
      case HomeView.Personal:
        return isSelected ? SimpleIcons.PersonalActive : SimpleIcons.PersonalInactive;
      default:
        return Icons.deck;
    }
  }

  /// ### showcaseItem(`Widget`) → `Widget`
  /// - Method Builds ShowcaseItem by View Type
  Widget showcaseItem() {
    if (this.isDashboard) {
      return this.tabButton();
    } else if (this.isPersonal) {
      return this.tabButton();
    } else {
      return this.tabButton();
    }
  }

  /// ### tabButton(`Widget`) → `Widget`
  /// - Method Builds ShowcaseItem by View Type
  Widget tabButton() {
    return HomeBottomTabButton(
      this,
      Get.find<HomeController>().setBottomIndex,
      Get.find<HomeController>().view,
    );
  }

  /// ### scale(`bool`) → `double`
  /// - Method Builds Icon Scale for View Type
  double iconScale(bool isSelected) => isSelected ? 1.0 : 0.9;

  // # Return State for Int
  static HomeView fromIndex(int i) => HomeView.values[i];
}

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
    tabController = TabController(vsync: this, length: 1);
    scrollController = ScrollController(keepScrollOffset: false);

    // Initialize
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  /// #### On Dispose
  @override
  void onClose() {
    super.onClose();
  }

  Future<void> connect() async {
    final loc = await LocationUtil.current(requestIfNoPermission: true);
    print("Find Location: \n" + "\t${loc.toString()}");
    await SonrService.to.start(location: loc);
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
