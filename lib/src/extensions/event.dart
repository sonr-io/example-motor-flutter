import 'package:flutter/material.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

extension ProgressEventUtils on ProgressEvent {
  double adjustedValue() {
    if (this.total > 1) {
      final adj = (this.current + 1) * this.progress;
      return adj / this.total;
    }
    return this.progress;
  }

  String get snackTitle {
    if (direction == Direction.INCOMING) {
      return "Receiving";
    } else {
      return "Sharing";
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
