#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ReactNativeReactionsFbModule, NSObject)

RCT_EXTERN_METHOD(Toastshow:(NSString *)message withDuration:(NSNumber)duration)

@end
