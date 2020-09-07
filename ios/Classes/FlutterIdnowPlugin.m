#import "FlutterIdnowPlugin.h"
#if __has_include(<flutter_idnow/flutter_idnow-Swift.h>)
#import <flutter_idnow/flutter_idnow-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_idnow-Swift.h"
#endif

@implementation FlutterIdnowPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIdnowPlugin registerWithRegistrar:registrar];
}
@end
