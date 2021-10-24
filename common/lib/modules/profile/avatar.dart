import 'dart:typed_data';
import 'package:sonr_app/style/style.dart';
import 'platform.dart';

const PROFILE_AVATAR_PLACEHOLDER = "assets/images/placeholders/avatar.png";

/// #### PeerListItem for Remote View
class ProfileAvatar extends StatelessWidget {
  final Uint8List? picture;
  final String? platform;
  ProfileAvatar({this.picture, this.platform});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: PlatformIcon(platform: platform),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: _buildAvatar(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ImageProvider<Object> _buildAvatar() {
    if (picture != null) {
      return MemoryImage(picture!);
    } else {
      return AssetImage(PROFILE_AVATAR_PLACEHOLDER);
    }
  }
}

/// #### PeerListItem for Remote View
class PeerAvatar extends StatelessWidget {
  final bool withPlatform;
  final double size;
  final Peer peer;
  PeerAvatar({required this.peer, this.withPlatform = true, this.size = 64});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: !withPlatform ? EdgeInsets.all(4) : EdgeInsets.zero,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: _buildAvatar(),
                ),
              ),
            ),
          ),
          withPlatform
              ? Align(
                  alignment: Alignment.topRight,
                  child: PlatformIcon(platform: peer.device.os),
                )
              : Container(),
        ],
      ),
    );
  }

  ImageProvider<Object> _buildAvatar() {
    if (peer.profile.hasPicture()) {
      return MemoryImage(Uint8List.fromList(peer.profile.picture));
    } else {
      return AssetImage(PROFILE_AVATAR_PLACEHOLDER);
    }
  }
}
