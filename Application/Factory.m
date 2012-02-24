#import "Factory.h"
#import "MasterController.h"
#import "ChildController.h"

@implementation Factory

- (UIViewController*) buildMainController
{
    MasterController *controller = [[MasterController alloc] initWithNibName:nil bundle:nil];
    [controller setFactory:self];
    return controller;
}

- (ChildController*) buildChildController
{
    return [[ChildController alloc] initWithNibName:nil bundle:nil];
}

- (UIViewController*) buildNavigationStack
{
    return [[UINavigationController alloc] initWithRootViewController:[self buildMainController]];
}

- (UIWindow*) buildMainWindow
{
    CGRect screenFrame = [[UIScreen mainScreen] bounds];
    UIWindow *window = [[UIWindow alloc] initWithFrame:screenFrame];
    [window setRootViewController:[self buildNavigationStack]];
    return window;
}

@end
