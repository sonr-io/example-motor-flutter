export 'item/item.dart';
export 'profile/profile.dart';
import 'package:sonr_app/style/style.dart';
import 'item/item.dart';

class PeerItem {
  static Widget card(Peer member) {
    return PeerCardView(member);
  }

  static Widget list({required Peer peer, required int index}) {
    return PeerListItem(peer: peer, index: index);
  }
}
