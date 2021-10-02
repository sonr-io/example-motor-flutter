export 'views/card_view.dart';
export 'views/item_view.dart';
export 'views/linker_view.dart';
export 'data/profile_utils.dart';

import 'package:sonr_plugin/sonr_plugin.dart';

import 'views/linker_view.dart';
import 'views/card_view.dart';
import 'views/item_view.dart';

import 'package:sonr_app/style/style.dart';

class PeerItem {
  static Widget card(Peer member) {
    return PeerCardView(member);
  }

  static Widget list({required Peer member, required int index}) {
    return PeerListItem(member: member, index: index);
  }

  static Widget linker(Peer peer, {required Function onPressed}) {
    return PeerLinkerItem(peer: peer, onPressed: onPressed);
  }
}
