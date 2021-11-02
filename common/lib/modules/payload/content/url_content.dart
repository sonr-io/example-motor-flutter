import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class UrlItemContent extends StatelessWidget {
  /// URLLink Data
  final UrlItem item;

  /// Enable lanching website `onTap`
  final bool enableLaunch;

  /// Enable copying to clipboard `onLongPress`
  final bool enableCopy;

  final double? width;
  final double height;
  final BoxFit fit;

  const UrlItemContent({
    Key? key,
    required this.item,
    this.enableLaunch = false,
    this.enableCopy = true,
    this.width,
    this.height = 150,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(children: [
        // // Social Image
        // _URLLinkImage(
        //   data: item,
        //   fit: fit,
        // ),

        // URL Info
        // _URLLinkInfo(data: item),

        //  Link Preview
        GestureDetector(
          onTap: _launchURL,
          onLongPress: _copyURL,
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(children: [
                // URL Icon
                Padding(padding: const EdgeInsets.only(left: 14.0, right: 8), child: SiliconsSolid.link.gradient()),

                // Link Preview
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    //child: item.link.url,
                  ),
                )
              ])),
        )
      ]),
    );
  }

  /// Launch URL from URLLink
  void _copyURL() async {
    if (enableCopy && item.link.isURL) {
      Clipboard.setData(ClipboardData(text: item.link));
      AppRoute.snack(SnackArgs.alert(title: "Copied!", message: "URL copied to clipboard", icon: Icon(Icons.copy, color: Colors.white)));
    }
  }

  /// Launch URL from URLLink
  Future<void> _launchURL() async {
    if (enableLaunch && item.link.isURL) {
      //if (await canLaunch(item.link)) {
      // await launch(item.link);
      //} else {
      AppRoute.snack(SnackArgs.success("Wouldve opened the URL."));
    } else {
      AppRoute.snack(SnackArgs.error("Could not launch the URL."));
    }
  }
}
