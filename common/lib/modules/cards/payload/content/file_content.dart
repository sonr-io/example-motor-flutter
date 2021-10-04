import 'dart:io';

import 'package:sonr_app/components/button.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:video_player/video_player.dart';

class FileItemContent extends StatelessWidget {
  final FileItem item;

  const FileItemContent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (item.mime.type) {
      case MIME_Type.IMAGE:
        return ImageBox(file: File(item.path));
      case MIME_Type.VIDEO:
        return VideoBox(file: File(item.path));
      default:
        return DefaultFileBox(item: item);
    }
  }
}

class DefaultFileBox extends StatelessWidget {
  final FileItem item;

  const DefaultFileBox({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: AppRadii.radiusCard,
          color: Get.theme.cardColor,
          boxShadow: [AppShadows.depth2],
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              AppBar(
                leading: Text(item.mime.type.name, style: AppTextStyles.bodyCaptionBold),
                actions: [
                  Text(
                    item.size.toString(),
                    style: AppTextStyles.bodyCaptionRegular,
                  ),
                ],
                title: Text(item.name),
                shadowColor: Get.theme.canvasColor.withOpacity(
                  Get.isDarkMode ? 0.75 : 0.4,
                ),
                elevation: 1,
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 200,
                child: _buildFileIcon(item.mime),
              ),
              SizedBox(height: 12),
              NeutralButton(
                icon: SimpleIcons.Open,
                label: 'Open File',
                onPressed: () {
                  OpenFile.open(item.path);
                },
              )
            ],
          ),
        ));
  }

  Widget _buildFileIcon(MIME mime) {
    MIME_Type type = mime.type;
    String ext = mime.subtype;

    if (type == MIME_Type.IMAGE) {
      return ComplexIcons.ViralPost.dots(
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
      );
    } else if (type == MIME_Type.VIDEO) {
      return ComplexIcons.Video.dots(
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
      );
    } else if (type == MIME_Type.AUDIO) {
      return ComplexIcons.Clip.dots(
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
      );
    } else if (type == MIME_Type.TEXT) {
      return ComplexIcons.Document.dots(
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
      );
    } else if (type == MIME_Type.DOCUMENT) {
      if (ext == 'pdf') {
        return ComplexIcons.PdfDocument.dots(
          color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
        );
      } else if (ext == 'ppt') {
        return ComplexIcons.PowerpointDocument.dots(
          color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
        );
      } else if (ext == 'xls') {
        return ComplexIcons.ExcelDocument.dots(
          color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
        );
      } else {
        return ComplexIcons.LockedFolder.dots(
          color: AppColors.neutrals1,
        );
      }
    } else {
      return ComplexIcons.Document.dots(
        color: Get.isDarkMode ? AppColors.neutrals1 : AppColors.neutrals7,
      );
    }
  }
}

class ImageBox extends StatelessWidget {
  final File file;
  final BoxFit? fit;
  const ImageBox({Key? key, required this.file, this.fit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadii.radiusCard,
        image: DecorationImage(
          image: FileImage(file),
          fit: fit ?? BoxFit.cover,
        ),
      ),
    );
  }
}

class VideoBox extends StatelessWidget {
  final File file;
  final BoxFit? fit;

  const VideoBox({Key? key, required this.file, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VideoPlayerController _controller = VideoPlayerController.file(file);
    return ObxValue<RxBool>((RxBool isInitialized) {
      _initializeVideoPlayer(_controller, isInitialized);
      return GestureDetector(
        onTap: () => OpenFile.open(file.path),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: AppRadii.radiusCard,
          ),
          child: Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : CircleLoader()),
        ),
      );
    }, false.obs);
  }

  _initializeVideoPlayer(VideoPlayerController controller, RxBool ready) async {
    await controller.initialize();
    controller.setVolume(0);
    controller.play();
    ready(true);
  }
}
