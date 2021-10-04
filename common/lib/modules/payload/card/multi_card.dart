import 'package:sonr_app/modules/payload/content/content.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../payload.dart';

class PayloadMultiCard extends StatelessWidget {
  final List<Payload_Item> items;
  const PayloadMultiCard({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVisible = true.obs;
    final currentIndex = 0.0.obs;
    return Container(
      height: 460,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: AppRadii.cardRadius,
      ),
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              isVisible(true);
              currentIndex(value.toDouble());
              Future.delayed(1500.milliseconds, () {
                isVisible(false);
              });
            },
            itemBuilder: (context, index) {
              final item = items[index];
              if (item.mime.isUrl) {
                return UrlItemContent(item: item.url);
              } else {
                return FileItemContent(item: item.file);
              }
            },
            itemCount: items.length,
          ),
          IgnorePointer(
            child: AnimatedOpacity(
              duration: 200.milliseconds,
              opacity: isVisible.value ? 1.0 : 0.0,
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 24),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutrals1.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  padding: EdgeInsets.all(8),
                  child: DotsIndicator(
                    dotsCount: items.length,
                    position: currentIndex.value,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///  Builds Container With Image as SizedBox
class FileAlbumBox extends StatelessWidget {
  /// Transfer Metadata Protobuf
  final List<FileItem> files;
  final double width;
  final double height;
  final BoxFit fit;
  final double iconSize;

  const FileAlbumBox({Key? key, required this.files, required this.width, required this.height, required this.fit, required this.iconSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isVisible = true.obs;
    final currentIndex = 0.0.obs;
    return Obx(
      () => Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: (value) {
                isVisible(true);
                currentIndex(value.toDouble());
                Future.delayed(1500.milliseconds, () {
                  isVisible(false);
                });
              },
              itemBuilder: (context, index) {
                final item = files[index];
                if (item.mime.isImage) {
                  return FileItemImageBox(fileItem: item, width: width, height: height, fit: fit);
                } else if (item.mime.isVideo) {
                  return FileItemVideoBox(
                    fileItem: item,
                    width: width,
                    height: height,
                    autoplay: true,
                    looping: false,
                  );
                } else {
                  return FileItemIconBox(
                    fileItem: item,
                    width: width,
                    height: height,
                    iconSize: iconSize,
                  );
                }
              },
              itemCount: files.length,
            ),
            IgnorePointer(
              child: AnimatedOpacity(
                duration: 200.milliseconds,
                opacity: isVisible.value ? 1.0 : 0.0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 24),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.neutrals1.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    padding: EdgeInsets.all(8),
                    child: DotsIndicator(
                      dotsCount: files.length,
                      position: currentIndex.value,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
