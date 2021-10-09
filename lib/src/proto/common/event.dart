import '../../src.dart';

extension CompleteEventUtils on CompleteEvent {
  /// Checks if Direction of Event is Incoming
  bool get isIncoming {
    return this.direction == CompleteEvent_Direction.INCOMING;
  }

  /// Checks if Direction of Event is Outgoing
  bool get isOutgoing {
    return this.direction == CompleteEvent_Direction.OUTGOING;
  }
}

/// [Status] is the current condition of Sonr RPC Server
enum Status {
  /// [Status.IDLE] - Initial status before host start
  IDLE,

  /// [Status.ACTIVE] - App is running normally
  ACTIVE,

  /// [Status.PAUSED] - App is running in background, refresh operations permitted
  PAUSED,

  /// [Status.STOPPED] - Host is offline and requires restart to continue
  STOPPED
}

/// Option for Share Choice
enum PickOption {
  Media,
  File,
}
