import 'dart:async';
import 'package:sonr_app/components/components.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
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
    progressController = AnimationController(vsync: this, lowerBound: 0, upperBound: 1, duration: Duration(milliseconds: 500));
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

  /// #### Return PeerStatus by Peer from Map
  PeerStatus? statusForPeer(Peer p) {
    return localPeersStatus[p];
  }

  /// #### Share to Peer
  void shareToPeer(Peer peer) async {
    // Update Peer status
    localPeersStatus[peer] = PeerStatus.PENDING;

    // Invite Peer from Service
    final resp = await SonrService.to.share(peer);
    print(resp.toString());
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
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        progressIndicatorController: progressController,
        snackStyle: SnackStyle.GROUNDED,
      );
      isProgressActive(true);
    }
    progressController.animateTo(event.progress);
  }

  void _handleComplete(CompleteEvent event) async {
    isProgressActive(false);
    progressController.reset();
    if (event.direction == Direction.OUTGOING) {
      localPeersStatus[event.to] = PeerStatus.COMPLETED;
    } else {
      Get.dialog(
        CompleteModal(
          event: event,
        ),
      );
    }
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

extension ProgressEventUtils on ProgressEvent {
  String get snackTitle {
    if (direction == Direction.INCOMING) {
      return "Receiving";
    } else {
      return "Sharing";
    }
  }

  String get snackMessage {
    if (direction == Direction.INCOMING) {
      return "${this.current} of ${this.total}";
    } else {
      return "${this.current} of ${this.total}";
    }
  }

  IconData get snackIcon {
    if (direction == Direction.INCOMING) {
      return Icons.file_download;
    } else {
      return Icons.file_upload;
    }
  }
}

extension CompleteEventUtils on CompleteEvent {
  String get snackTitle {
    if (this.direction == Direction.INCOMING) {
      return "Completed Receive!";
    } else {
      return "Completed Share!";
    }
  }

  String get snackMessage {
    if (this.direction == Direction.INCOMING) {
      return "Received ${this.payload.items.length} File(s) of ${this.payload.prettySize()} total size.";
    } else {
      return "Sent ${this.payload.items.length} File(s) of ${this.payload.prettySize()} total size.";
    }
  }

  Duration get snackDuration {
    if (this.direction == Direction.INCOMING) {
      return 3.seconds;
    } else {
      return 1.seconds;
    }
  }

  Widget get snackIcon => Icon(SimpleIcons.Check, color: AppColors.neutrals8);
}
