import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:sonr_app/modules/peer/peer.dart';

/// #### URL Invite from InviteRequest Proftobuf
class URLAuthView extends StatelessWidget {
  final InviteEvent invite;
  URLAuthView(this.invite);

  @override
  Widget build(BuildContext context) {
    return BoxContainer(
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        // @ Header
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Build Profile Pic
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 8, right: 8),
            child: CircleContainer(
              padding: EdgeInsets.all(4),
              child: invite.from.profile.hasPicture()
                  ? Image.memory(Uint8List.fromList(invite.from.profile.picture))
                  : Icon(
                      Icons.insert_emoticon,
                      size: 60,
                      color: AppColor.Black.withOpacity(0.5),
                    ),
            ),
          ),

          // From Information
          Column(mainAxisSize: MainAxisSize.min, children: [
            ProfileFullName(profile: invite.from.profile, isHeader: true),
            Center(child: "Website Link".gradient(value: DesignGradients.PlumBath, size: 22)),
          ]),
        ]),
        Divider(),

        // @ URL Information
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    // child: URLContent(link: invite.url),
                    )),
          ],
        ),

        // @ Actions
        Divider(),
        Padding(padding: EdgeInsets.all(4)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorButton.neutral(onPressed: () => Get.back(), text: "Dismiss"),
            Padding(padding: EdgeInsets.all(8)),
            ColorButton.primary(
              onPressed: () => _launchURL(),
              text: "Open",
              icon: SimpleIcons.Discover,
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 14))
      ]),
    );
  }

  Future<void> _launchURL() async {}
}

// class URLContent extends StatelessWidget {
//   /// URLLink Data
//   final URLLink link;

//   /// Enable lanching website `onTap`
//   final bool enableLaunch;

//   /// Enable copying to clipboard `onLongPress`
//   final bool enableCopy;

//   final double? width;
//   final double height;
//   final BoxFit fit;

//   /// Fetches URLLink Data from String and Creates URLLinkView
//   static Future<URLContent> fromString(String url, {bool enableLaunch = false, bool enableCopy = true}) async {
//     URLLink data = await NodeService.getURL(url);
//     return URLContent(link: data, enableCopy: enableCopy, enableLaunch: enableLaunch);
//   }

//   const URLContent({
//     Key? key,
//     required this.link,
//     this.enableLaunch = false,
//     this.enableCopy = true,
//     this.width,
//     this.height = 150,
//     this.fit = BoxFit.contain,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       child: Column(children: [
//         // Social Image
//         _URLLinkImage(
//           data: link,
//           fit: fit,
//         ),

//         // URL Info
//         _URLLinkInfo(data: link),

//         //  Link Preview
//         GestureDetector(
//           onTap: _launchURL,
//           onLongPress: _copyURL,
//           child: Container(
//               margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
//               padding: EdgeInsets.symmetric(vertical: 6),
//               child: Row(children: [
//                 // URL Icon
//                 Padding(padding: const EdgeInsets.only(left: 14.0, right: 8), child: SimpleIcons.Link.gradient()),

//                 // Link Preview
//                 Container(
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: link.url.url,
//                   ),
//                 )
//               ])),
//         )
//       ]),
//     );
//   }

//   /// Launch URL from URLLink
//   void _copyURL() async {
//     if (enableCopy && link.url.isURL) {
//       Clipboard.setData(ClipboardData(text: link.url));
//       AppRoute.snack(SnackArgs.alert(title: "Copied!", message: "URL copied to clipboard", icon: Icon(Icons.copy, color: Colors.white)));
//     }
//   }

//   /// Launch URL from URLLink
//   Future<void> _launchURL() async {
//     if (enableLaunch && link.url.isURL) {
//       if (await canLaunch(link.url)) {
//         await launch(link.url);
//       } else {
//         AppRoute.snack(SnackArgs.error("Could not launch the URL."));
//       }
//     }
//   }
// }

/// #### Transfer Contact Item Details
class URLItemView extends StatelessWidget {
  final UrlItem item;
  const URLItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BoxContainer(
      child: Text(item.link),
    );
  }
}
