import 'dart:io';
import 'dart:isolate';
import 'package:sonr_plugin/src/proto/proto.dart';
import '../../sonr_plugin.dart';
import 'package:video_compress/video_compress.dart';

const DEFAULT_THUMB_WIDTH = 240;

const VIDEO_FILE_EXTS = ['WEBM', 'MPG', 'MP4', 'AVI', 'MOV', 'M4V', '3GP', '3G2'];

const IMAGE_FILE_EXTS = ['JPG', 'JPEG', 'PNG', 'GIF', 'BMP'];

enum Payload_Type {
  SINGLE_ITEM,
  MEDIA_COLLECTION,
  PHOTO_COLLECTION,
  VIDEO_COLLECTION,
  AUDIO_COLLECTION,
  TEXT_COLLECTION,
  DOCS_COLLECTION,
  MIXED_COLLECTION,
  URL_COLLECTION
}

extension PayloadTypeUtils on Payload_Type {
  String get name => this.toString().split('.').last;

  String prettyName() {
    return this.name.split('_').map((s) => s.toLowerCase()).join(' ');
  }

  bool isMedia() {
    return this == Payload_Type.PHOTO_COLLECTION ||
        this == Payload_Type.MEDIA_COLLECTION ||
        this == Payload_Type.VIDEO_COLLECTION ||
        this == Payload_Type.AUDIO_COLLECTION;
  }
}

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

  Payload_Type get type {
    if (items.length == 1) {
      return Payload_Type.SINGLE_ITEM;
    }
    var types = <Payload_Type>[];
    // Iterate through Items
    for (Payload_Item item in this.items) {
      if (types.any((element) => item.type == element)) {
        continue;
      }
      types.add(item.type);
    }

    // If all items are of the same type, return that type
    if (types.length == 1) {
      return types.first;
    }
    // If all items are either audio, video, or photo, return media
    if (types.every((element) => element.isMedia())) {
      return Payload_Type.MEDIA_COLLECTION;
    }
    return Payload_Type.MIXED_COLLECTION;
  }
}

extension PayloadItemUtils on Payload_Item {
  Payload_Type get type {
    switch (this.mime.type) {
      case MIME_Type.AUDIO:
        return Payload_Type.AUDIO_COLLECTION;
      case MIME_Type.VIDEO:
        return Payload_Type.VIDEO_COLLECTION;
      case MIME_Type.IMAGE:
        return Payload_Type.PHOTO_COLLECTION;
      case MIME_Type.DOCUMENT:
        return Payload_Type.DOCS_COLLECTION;
      case MIME_Type.TEXT:
        return Payload_Type.TEXT_COLLECTION;
      case MIME_Type.URL:
        return Payload_Type.URL_COLLECTION;
      default:
        return Payload_Type.SINGLE_ITEM;
    }
  }
}

class ThumbParams {
  final String path;
  final SendPort sendPort;
  final int width;
  late bool isVideo;
  late File file;
  late String ext;
  late String name;

  ThumbParams({required this.path, required this.sendPort, required this.width}) {
    this.ext = extension(path);
    this.name = basename(path);
    this.isVideo = VIDEO_FILE_EXTS.contains(ext.toUpperCase());
    this.file = File(path);
  }
}

void genThumb(ThumbParams param) async {
  if (param.isVideo) {
    try {
      var thumbnail = await VideoCompress.getByteThumbnail(
        param.path,
        quality: 75,
        position: 1,
      );
      param.sendPort.send(thumbnail);
    } catch (e) {
      param.sendPort.send(null);
    }
  } else {
    param.sendPort.send(null);
  }
}
