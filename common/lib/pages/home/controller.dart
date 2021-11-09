import 'dart:async';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

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

  /// #### Get AppBar Padding from View Type
  EdgeInsets get paddingAppbar => this.isDashboard ? EdgeInsets.only(top: 68) : EdgeInsets.zero;

  /// #### Get Icon Padding from View Type
  EdgeInsets get paddingIcon => EdgeInsets.only(
        top: 8.0,
        bottom: 8,
        left: this.isDashboard ? 16 : 8,
        right: this.isPersonal ? 16 : 8,
      );

  /// ### iconData(`bool`) → `IconData`
  /// - Method Builds and Returns IconData for View Type
  IconData iconData(bool isSelected) {
    switch (this) {
      case HomeView.Dashboard:
        return isSelected ? SiliconsLine.home : SiliconsLine.home;
      case HomeView.Personal:
        return isSelected ? SiliconsLine.person : SiliconsLine.person;
      default:
        return Icons.deck;
    }
  }

  /// ### scale(`bool`) → `double`
  /// - Method Builds Icon Scale for View Type
  double iconScale(bool isSelected) => isSelected ? 1.0 : 0.9;

  // # Return State for Int
  static HomeView fromIndex(int i) => HomeView.values[i];
}

enum PeerStatus {
  NONE,
  PENDING,
  IN_PROGRESS,
  COMPLETED,
}

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  // Properties
  final appbarOpacity = 1.0.obs;
  final isConnecting = true.obs;
  final view = HomeView.Dashboard.obs;
  final localPeers = <Peer>[].obs;
  final localPeersStatus = <Peer, PeerStatus>{}.obs;
  final history = <Payload>[].obs;
  final recents = <Profile>[].obs;
  final isProgressActive = false.obs;

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
  late AnimationController progressController;
  late StreamSubscription<InviteEvent> _inviteSubscription;
  late StreamSubscription<ProgressEvent> _progressSubscription;
  late StreamSubscription<RefreshEvent> _refreshSubscription;
  late StreamSubscription<CompleteEvent> _completeSubscription;

  /// #### Controller Constructer
  @override
  onInit() {
    _completeSubscription = SonrService.to.onComplete(_handleComplete);
    _inviteSubscription = SonrService.to.onInvite(_handleInvite);
    _refreshSubscription = SonrService.to.onRefresh(_handleRefresh);
    _progressSubscription = SonrService.to.onProgress(_handleProgress);

    // Connect to Network
    fetchData();

    // Handle Tab Controller
    tabController = TabController(vsync: this, length: 1);
    scrollController = ScrollController(keepScrollOffset: false);
    progressController = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 1,
      duration: Duration(milliseconds: 50),
      animationBehavior: AnimationBehavior.preserve,
    );
    // Initialize
    super.onInit();
  }

  @override
  void onClose() {
    _completeSubscription.cancel();
    _inviteSubscription.cancel();
    _refreshSubscription.cancel();
    _progressSubscription.cancel();
    super.onClose();
  }

  Future<void> fetchData() async {
    final resp = await SonrService.to.fetch(key: FetchRequest_Key.ALL);
    history(resp.history.payloads);
    recents(resp.recents.profiles);
    history.refresh();
    recents.refresh();
    print(resp.toString());
  }

  Future<void> edit() async {
    // await SonrService.to.edit(profile);
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

  /// #### Return PeerStatus by Peer from Map
  PeerStatus? statusForPeer(Peer p) {
    return localPeersStatus[p];
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
    if (!isProgressActive.value) {
      Get.snackbar(
        event.snackTitle,
        event.snackMessage,
        icon: Icon(event.snackIcon),
        showProgressIndicator: true,
        snackPosition: SnackPosition.BOTTOM,
        progressIndicatorController: progressController,
        duration: null,
      );
      isProgressActive(true);
    }
    progressController.animateTo(event.progress);
  }

  void _handleComplete(CompleteEvent event) async {
    isProgressActive(false);
    if (event.direction == Direction.OUTGOING) {
      localPeersStatus[event.to] = PeerStatus.COMPLETED;
    } else {
      Get.dialog(
        CompleteModal(
          event: event,
        ),
      );
    }
    print(event.results.toString());
  }

  void _handleRefresh(RefreshEvent event) {
    localPeers.clear();
    // Refresh Local Peers
    localPeers(event.peers);
    localPeers.refresh();

    // Update Peer-Status Map
    localPeersStatus.forEach((key, value) {
      if (!event.peers.contains(key)) {
        localPeersStatus[key] = PeerStatus.NONE;
      }
    });

    // Update Peer-Status Map
    localPeersStatus.refresh();
  }
}
