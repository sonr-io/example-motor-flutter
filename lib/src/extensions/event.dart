import 'package:flutter/material.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

extension ProgressEventUtils on ProgressEvent {
  double adjustedValue() {
    if (this.count > 1) {
      final adj = (this.index + 1) * this.progress;
      return adj / this.count;
    }
    return this.progress;
  }

  String get snackTitle {
    if (direction == Direction.INCOMING) {
      return "Receiving";
    } else {
      return "Sending";
    }
  }

  String get snackMessage {
    if (direction == Direction.INCOMING) {
      return "${this.index} of ${this.count}";
    } else {
      return "${this.index} of ${this.count}";
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
