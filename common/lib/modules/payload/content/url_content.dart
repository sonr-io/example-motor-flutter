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
