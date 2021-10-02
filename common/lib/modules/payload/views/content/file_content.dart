import 'dart:io';
import 'dart:typed_data';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:video_player/video_player.dart';

/// #### Post Content for File
class FileContent extends StatelessWidget {
  final List<FileItem> files;
  final double iconSize;
  final double width;
  final double height;
  final BoxFit fit;
  const FileContent({Key? key, required this.files, this.iconSize = 60, this.width = 150, this.height = 150, this.fit = BoxFit.contain})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FileAlbumBox(
      files: files,
      width: Get.width,
      height: 100,
      fit: BoxFit.fitHeight,
      iconSize: iconSize,
    );
    //   if (file.isMultiple) {
    //     if (file.isAllMedia) {}
    //   } else {
    //     final item = file.single;
    //     // Image
    //     if (item.mime.isImage) {
    //       return FileItemImageBox(
    //         fileItem: file.single,
    //         width: Get.width,
    //         fit: fit,
    //         height: height,
    //       );
    //     }

    //     // Video
    //     else if (item.mime.isVideo) {
    //       return FileItemVideoBox(
    //         fileItem: file.single,
    //         width: Get.width,
    //       );
    //     }
    //   }

    //   // # Other File
    //   return FileItemIconBox(
    //     iconSize: Height.ratio(0.125),
    //     fileItem: file.single,
    //     height: height,
    //     width: width,
    //   );
    // }
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

/// Builds Icon View from Metadata
class FileItemIconBox extends StatelessWidget {
  /// Transfer Metadata Protobuf
  final FileItem fileItem;
  final double iconSize;
  final double width;
  final double height;
  const FileItemIconBox({Key? key, required this.fileItem, required this.iconSize, required this.width, required this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      width: width,
      height: height,
      child: CircleContainer(
        child: fileItem.mime.type.gradient(size: iconSize),
      ),
    );
  }
}

///  Builds Container With Image as SizedBox
class FileItemImageBox extends StatefulWidget {
  /// Transfer Metadata Protobuf
  final FileItem fileItem;
  final double width;
  final double height;
  final BoxFit fit;

  const FileItemImageBox({Key? key, required this.fileItem, required this.width, required this.height, required this.fit}) : super(key: key);

  @override
  _FileItemImageBoxState createState() => _FileItemImageBoxState();
}

class _FileItemImageBoxState extends State<FileItemImageBox> {
  late File sourceFile;
  bool fileLoaded = false;
  bool isFile = true;

  @override
  void initState() {
    super.initState();

    // Check if File Exists
    File(widget.fileItem.path).exists().then((value) {
      isFile = value;
      if (value) {
        setState(() {
          sourceFile = File(widget.fileItem.path);
          fileLoaded = true;
        });
      } else {
        setState(() {
          fileLoaded = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return fileLoaded
        ? GestureDetector(
            onTap: () => OpenFile.open(widget.fileItem.path),
            child: SizedBox(
              width: widget.width,
              height: widget.height,
              child: _buildImageChild(),
            ),
          )
        : Container(
            width: widget.width,
            height: widget.height,
            child: CircleLoader(),
          );
  }

  Widget _buildImageChild() {
    if (isFile) {
      return Image.file(sourceFile, fit: BoxFit.cover);
    } else {
      if (widget.fileItem.thumbnail.hasBuffer()) {
        return Image.memory(
          Uint8List.fromList(widget.fileItem.thumbnail.buffer),
          fit: BoxFit.fitHeight,
        );
      } else {
        return SimpleIcons.Unknown.icon(color: Get.theme.focusColor);
      }
    }
  }
}

/// Builds Metadata Video Player
class FileItemVideoBox extends StatefulWidget {
  /// Transfer Metadata Protobuf
  final FileItem fileItem;
  final double? width;
  final double? height;
  final bool autoplay;
  final bool allowScreenSleep;
  final bool looping;
  final MediaOrientation orientation;
  const FileItemVideoBox({
    Key? key,
    required this.fileItem,
    this.width,
    this.height,
    this.autoplay = true,
    this.looping = true,
    this.allowScreenSleep = false,
    this.orientation = MediaOrientation.Portrait,
  }) : super(key: key);

  @override
  _FileItemVideoBoxState createState() => _FileItemVideoBoxState();
}

class _FileItemVideoBoxState extends State<FileItemVideoBox> {
  late VideoPlayerController _controller;
  late File sourceFile;

  @override
  void initState() {
    super.initState();
    sourceFile = File(widget.fileItem.path);
    _controller = VideoPlayerController.file(sourceFile)
      ..initialize().then((_) {
        setState(() {
          _controller.setVolume(0);
          if (widget.autoplay) {
            _controller.play();
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => OpenFile.open(widget.fileItem.path),
      child: Container(
        width: widget.width ?? widget.orientation.defaultWidth,
        height: widget.height ?? widget.orientation.defaultHeight,
        child: Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(
                    width: widget.width ?? widget.orientation.defaultWidth,
                    height: widget.height ?? widget.orientation.defaultHeight,
                    child: CircleLoader(),
                  )),
      ),
    );
  }
}

class FilePayloadText extends StatelessWidget {
  final Payload payload;
  final Color? color;
  final double fontSize;
  final FontStyle fontStyle;
  final bool withCount;

  const FilePayloadText({
    Key? key,
    required this.payload,
    this.color,
    this.withCount = true,
    this.fontSize = 20,
    this.fontStyle = FontStyle.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _buildType(),
      style: AppTextStyles.bodySmallBold,
    );
  }

  String _buildType() {
    // if (file != null && payload.isTransfer) {
    //   // Return Mime for Single
    //   if (file!.count == 1 || file!.isAllSingleType) {
    //     return file!.single.mime.value.toString().capitalizeFirst!;
    //   } else if (file!.count > 1) {
    //     return withCount ? payload.toString().capitalizeFirst! + " - ${file!.count}" : payload.toString().capitalizeFirst!;
    //   }
    // }
    return payload.toString().capitalizeFirst!;
  }
}
