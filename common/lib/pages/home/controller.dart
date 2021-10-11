import 'dart:async';
import 'package:sonr_app/modules/modals/modals.dart';
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
  final localPeers = <Peer>[].obs;

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
  late StreamSubscription<InviteEvent> _inviteSubscription;
  late StreamSubscription<ProgressEvent> _progressSubscription;
  late StreamSubscription<RefreshEvent> _refreshSubscription;
  late StreamSubscription<CompleteEvent> _completeSubscription;
  late Profile profile;

  /// #### Controller Constructer
  @override
  onInit() {
    // Create Profile
    final hint = TextUtils.hintName;
    profile = Profile(
      firstName: hint.item1,
      lastName: hint.item2,
      sName: hint.item1[0] + hint.item2,
    );

    // Connect to Network
    connect();

    // Handle Tab Controller
    tabController = TabController(vsync: this, length: 1);
    scrollController = ScrollController(keepScrollOffset: false);

    // Initialize
    super.onInit();
  }

  @override
  void onClose() {
    _completeSubscription.cancel();
    _inviteSubscription.cancel();
    _progressSubscription.cancel();
    _refreshSubscription.cancel();
    super.onClose();
  }

  Future<void> connect() async {
    final loc = await LocationUtil.current(requestIfNoPermission: true);
    await SonrService.to.start(location: loc, profile: profile);
    _completeSubscription = SonrService.to.onComplete(_handleComplete);
    _inviteSubscription = SonrService.to.onInvite(_handleInvite);
    _refreshSubscription = SonrService.to.onRefresh(_handleRefresh);
    _progressSubscription = SonrService.to.onProgress(_handleProgress);
  }

  Future<void> edit() async {
    await SonrService.to.edit(profile);
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

  void _handleInvite(InviteEvent event) {
    Get.dialog(
      InviteModal(event: event),
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      useSafeArea: false,
    );
  }

  void _handleProgress(ProgressEvent event) {
    print("Current Progress: ${(event.progress * 100).roundToDouble()}%");
  }

  void _handleComplete(CompleteEvent event) {
    Get.snackbar("Completed Transfer!", event.toString(), duration: 1.seconds);
    Future.delayed(1.seconds, () {
      OpenFile.open(event.payload.items[0].file.path);
    });
  }

  void _handleRefresh(RefreshEvent event) {
    if (event.peers.length != localPeers.length) {
      localPeers(event.peers);
      localPeers.refresh();
    }
  }
}
