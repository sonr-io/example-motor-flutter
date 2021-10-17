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
      Core.SonrStart(args.data)
      result(nil)

    // Resumes the Node
    case "resume":
      Core.SonrResume()
      result(nil)

    // Pauses the Node
    case "pause":
      Core.SonrPause()
      result(nil)

    // Stops the node
    case "stop":
      Core.SonrStop()
      result(nil)

    // ! Method not found
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
