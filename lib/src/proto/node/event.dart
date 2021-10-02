import '../proto.dart';

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
