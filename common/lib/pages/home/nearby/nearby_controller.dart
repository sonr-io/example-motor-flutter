import 'dart:async';
import 'package:sonr_app/style/style.dart';

class NearbyController extends GetxController {
  final localPeers = RxList<Peer>();
  late StreamSubscription<RefreshEvent> _subscription;
  @override
  void onInit() {
    _subscription = SonrService.to.onRefresh(handleRefresh);
    super.onInit();
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }

  void handleRefresh(RefreshEvent event) {
    localPeers(event.peers);
    localPeers.refresh();
  }
}
