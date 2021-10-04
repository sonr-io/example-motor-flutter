import 'dart:io';
import 'dart:typed_data';

import 'package:sonr_app/style/style.dart';
import 'package:video_player/video_player.dart';

class FileItemContent extends StatelessWidget {
  final FileItem item;

  const FileItemContent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (item.mime.type) {
      case MIME_Type.IMAGE:
        return _FileItemImageBox(fileItem: item, width: Get.width, height: 460, fit: BoxFit.fitWidth);
      case MIME_Type.VIDEO:
        return _FileItemVideoBox(fileItem: item, width: Get.width, height: 460);
      default:
        return _FileItemIconBox(fileItem: item, iconSize: 42, width: Get.width, height: 460);
    }
  }
}

/// Builds Icon View from Metadata
class _FileItemIconBox extends StatelessWidget {
  /// Transfer Metadata Protobuf
  final FileItem fileItem;
  final double iconSize;
  final double width;
  final double height;
  const _FileItemIconBox({Key? key, required this.fileItem, required this.iconSize, required this.width, required this.height}) : super(key: key);
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
class _FileItemImageBox extends StatefulWidget {
  /// Transfer Metadata Protobuf
  final FileItem fileItem;
  final double width;
  final double height;
  final BoxFit fit;

  const _FileItemImageBox({Key? key, required this.fileItem, required this.width, required this.height, required this.fit}) : super(key: key);

  @override
  _FileItemImageBoxState createState() => _FileItemImageBoxState();
}

class _FileItemImageBoxState extends State<_FileItemImageBox> {
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
class _FileItemVideoBox extends StatefulWidget {
  /// Transfer Metadata Protobuf
  final FileItem fileItem;
  final double? width;
  final double? height;
  final bool autoplay;
  final bool allowScreenSleep;
  final bool looping;
  final MediaOrientation orientation;
  const _FileItemVideoBox({
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

class _FileItemVideoBoxState extends State<_FileItemVideoBox> {
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
