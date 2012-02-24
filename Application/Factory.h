@class ChildController;

@interface Factory : NSObject

- (UIWindow*) buildMainWindow;
- (ChildController*) buildChildController;

@end
