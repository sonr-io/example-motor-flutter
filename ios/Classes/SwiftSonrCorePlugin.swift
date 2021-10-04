import Core
import Flutter
import Foundation
import UIKit

public class SwiftSonrCorePlugin: NSObject, FlutterPlugin {
  // ^ Initialize Sonr Plugin Vars ^
  static var methodChannel: FlutterMethodChannel?
  static var eventChannel: FlutterMethodChannel?

  // ^ Register Method channel to dart library ^
  // Initialize Channels
  public static func register(with registrar: FlutterPluginRegistrar) {
    SwiftSonrCorePlugin.methodChannel = FlutterMethodChannel(name: "io.sonr.plugin/action", binaryMessenger: registrar.messenger())

    SwiftSonrCorePlugin.eventChannel = FlutterMethodChannel(name: "io.sonr.plugin/event", binaryMessenger: registrar.messenger())

    // Start plugin
    let instance = SwiftSonrCorePlugin()

    // Register for Methods
    registrar.addMethodCallDelegate(instance, channel: SwiftSonrCorePlugin.methodChannel!)
  }

  // ^ Handle dart library calls ^
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    // Switch by Call Method
    switch call.method {
    // Starts the Node
    case "start":
      let args = call.arguments as! FlutterStandardTypedData
      let data = Core.LibStart(args.data)
      result(FlutterStandardTypedData(bytes: data!))

    // Resumes the Node
    case "resume":
      Core.LibResume()
      result(nil)

    // Pauses the Node
    case "pause":
      Core.LibPause()
      result(nil)

    // Stops the node
    case "stop":
      Core.LibStop()
      result(nil)

    // ! Method not found
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
