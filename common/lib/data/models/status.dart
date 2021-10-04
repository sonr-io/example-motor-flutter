
import 'package:sonr_app/style/style.dart';

enum AppState {
  /// App has Just Begun
  Started,

  /// App has been resumed from Background Process
  Resumed,

  /// App has been paused or inactive
  Paused,

  /// App has been detached from Stack.
  Stopped,
}

extension AppLifecycle on AppState {
  /// Static Method converts `AppLifeCycleState` into `AppState` Enum.
  static AppState toAppState(AppLifecycleState state, {bool resumed = false}) {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumed) {
          return AppState.Resumed;
        } else {
          return AppState.Started;
        }
      case AppLifecycleState.inactive:
        return AppState.Paused;
      case AppLifecycleState.paused:
        return AppState.Paused;
      case AppLifecycleState.detached:
        return AppState.Stopped;
    }
  }
}
