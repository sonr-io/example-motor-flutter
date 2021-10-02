import '../proto.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

extension MimeUtil on MIME {
  // Method isFile() returns true if the MIME type is a file.
  bool isFile() => !this.isUrl;

  // isAudio returns true if the MIME type is an audio type.
  bool get isAudio => this.type == MIME_Type.AUDIO;

  // isDocument returns true if the MIME type is a document type.
  bool get isDocument => this.type == MIME_Type.DOCUMENT;

  /// isImage returns true if the MIME type is a image.
  bool get isImage => this.type == MIME_Type.IMAGE;

  // isText returns true if the MIME type is a text type.
  bool get isText => this.type == MIME_Type.TEXT;

  // isOther returns true if the MIME type is some other type.
  bool get isOther => this.type == MIME_Type.OTHER;

  // isUrl returns true if the MIME type is a URL.
  bool get isUrl => this.type == MIME_Type.URL;

  // isVideo returns true if the MIME type is a video.
  bool get isVideo => this.type == MIME_Type.VIDEO;
}

extension PayloadExtension on Payload_Item {
  /// Open opens the item in Browser or in the default app.
  Future<bool> open() async {
    // Open File
    if (this.mime.isFile()) {
      final result = await OpenFile.open(this.file.path);
      return result.type == ResultType.done;
    }
    // Launch URL
    else {
      // Check if the URL is valid
      final launchable = await canLaunch(this.url.link);
      if (launchable) {
        final result = await launch(this.url.link);
        return result;
      }

      // Url is not valid
      else {
        return false;
      }
    }
  }
}
