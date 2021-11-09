import 'package:flutter/material.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

extension ProgressEventUtils on ProgressEvent {
  String get snackTitle {
    if (direction == Direction.INCOMING) {
      return "Receiving";
    } else {
      return "Sending";
    }
  }

  String get snackMessage {
    if (direction == Direction.INCOMING) {
      return "${this.current} of ${this.total}";
    } else {
      return "${this.current} of ${this.total}";
    }
  }

  IconData get snackIcon {
    if (direction == Direction.INCOMING) {
      return Icons.file_download;
    } else {
      return Icons.file_upload;
    }
  }
}
