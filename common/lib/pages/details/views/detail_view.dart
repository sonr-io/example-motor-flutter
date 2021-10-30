import 'dart:io';
import 'package:sonr_app/style/style.dart';

/// #### QuickAccessScreen from Home
class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DetailPageArgs args = Get.arguments;
    return SonrScaffold(
        appBar: DetailAppBar(
          onPressed: () => Get.back(closeOverlays: true),
          title: args.title,
        ),
        body: args.body());
  }
}

class DetailFileView extends StatelessWidget {
  final Payload file;

  const DetailFileView({Key? key, required this.file}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DetailMediaView extends StatelessWidget {
  final FileItem item;
  final File? file;

  const DetailMediaView({Key? key, required this.item, this.file}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Hero(
        tag: item.path,
        child: Material(
          color: Colors.transparent,
          child: InteractiveViewer(child: file != null ? Image.file(file!) : Image.file(File(item.path))),
        ),
      ),
    );
  }
}

class DetailUrlView extends StatelessWidget {
  final UrlItem urlLink;

  const DetailUrlView({Key? key, required this.urlLink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
