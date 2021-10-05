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
