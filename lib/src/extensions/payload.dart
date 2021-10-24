import 'dart:io';
import 'dart:isolate';
import 'package:image/image.dart' as img;
import 'package:sonr_plugin/src/proto/proto.dart';
import '../../sonr_plugin.dart';
import 'package:video_compress/video_compress.dart';

const DEFAULT_THUMB_WIDTH = 240;

const VIDEO_FILE_EXTS = ['WEBM', 'MPG', 'MP4', 'AVI', 'MOV', 'M4V', '3GP', '3G2'];

const IMAGE_FILE_EXTS = ['JPG', 'JPEG', 'PNG', 'GIF', 'BMP'];

extension PayloadUtils on Payload {
  /// A method returns a human readable string representing a file _size
  String prettySize([int round = 1]) {
    /**
   * [size] can be passed as number or as string
   *
   * the optional parameter [round] specifies the number
   * of digits after comma/point (default is 2)
   */
    var divider = 1024;
    int _size = this.size.toInt();
    try {
      _size = int.parse(size.toString());
    } catch (e) {
      throw ArgumentError('Can not parse the size parameter: $e');
    }

    if (_size < divider) {
      return '$_size B';
    }

    if (_size < divider * divider && _size % divider == 0) {
      return '${(_size / divider).toStringAsFixed(0)} KB';
    }

    if (_size < divider * divider) {
      return '${(_size / divider).toStringAsFixed(round)} KB';
    }

    if (_size < divider * divider * divider && _size % divider == 0) {
      return '${(_size / (divider * divider)).toStringAsFixed(0)} MB';
    }

    if (_size < divider * divider * divider) {
      return '${(_size / divider / divider).toStringAsFixed(round)} MB';
    }

    if (_size < divider * divider * divider * divider && _size % divider == 0) {
      return '${(_size / (divider * divider * divider)).toStringAsFixed(0)} GB';
    }

    if (_size < divider * divider * divider * divider) {
      return '${(_size / divider / divider / divider).toStringAsFixed(round)} GB';
    }

    if (_size < divider * divider * divider * divider * divider && _size % divider == 0) {
      num r = _size / divider / divider / divider / divider;
      return '${r.toStringAsFixed(0)} TB';
    }

    if (_size < divider * divider * divider * divider * divider) {
      num r = _size / divider / divider / divider / divider;
      return '${r.toStringAsFixed(round)} TB';
    }

    if (_size < divider * divider * divider * divider * divider * divider && _size % divider == 0) {
      num r = _size / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(0)} PB';
    } else {
      num r = _size / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(round)} PB';
    }
  }
}

class ThumbParams {
  final String path;
  final SendPort sendPort;
  final int width;
  late bool isVideo;
  late bool isImage;
  late File file;
  late String ext;
  late String name;

  ThumbParams({required this.path, required this.sendPort, required this.width}) {
    final parts = path.split(".");
    this.ext = parts[parts.length - 1];
    this.name = parts[0];
    this.isVideo = VIDEO_FILE_EXTS.contains(ext.toUpperCase());
    this.isImage = IMAGE_FILE_EXTS.contains(ext.toUpperCase());
    this.file = File(path);
  }
}

void genThumb(ThumbParams param) async {
  if (param.isImage) {
    var bytes = await param.file.readAsBytes();
    var image = img.decodeImage(bytes);
    if (image != null) {
      var thumbnail = img.copyResize(image, width: param.width);
      param.sendPort.send(img.encodePng(thumbnail));
    } else {
      param.sendPort.send(null);
    }
  } else if (param.isVideo) {
    VideoCompress.getByteThumbnail(param.path, quality: 75).then((value) {
      param.sendPort.send(value);
    });
  } else {
    param.sendPort.send(null);
  }
}
