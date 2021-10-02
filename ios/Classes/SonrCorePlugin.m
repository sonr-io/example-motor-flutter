#import "SonrCorePlugin.h"
#if __has_include(<sonr_plugin/sonr_plugin-Swift.h>)
#import <sonr_plugin/sonr_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sonr_plugin-Swift.h"
#endif

@implementation SonrCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSonrCorePlugin registerWithRegistrar:registrar];
}
@end
