#import "AutocompletePlugin.h"
#if __has_include(<autocomplete/autocomplete-Swift.h>)
#import <autocomplete/autocomplete-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "autocomplete-Swift.h"
#endif

@implementation AutocompletePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAutocompletePlugin registerWithRegistrar:registrar];
}
@end
