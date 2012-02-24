#import "Factory.h"
#import "MasterController.h"
#import "ChildController.h"
#import "Logger.h"

@interface Factory ()
@property(strong) Logger *logger;
@end

@implementation Factory
@synthesize logger;

#pragma mark Private Components

/*
    If the controller’s dependency on the Factory bugs you, note that if the controller
    just needs to create one or two other objects, you can loosen the coupling even more
    by declaring builder properties in the controller:

    typedev void (^ControllerBuilder)(void);
    @property(copy) ControllerBuilder childControllerBuilder;

    …and then in the factory:

    [controller setChildControllerBuilder:^{ [self buildChildController]; }];

    This way the master controller won’t even know that some Factory exists.
*/
- (UIViewController*) buildMainController
{
    MasterController *controller = [[MasterController alloc] initWithNibName:nil bundle:nil];
    [controller setFactory:self];
    return controller;
}

- (UIViewController*) buildNavigationStack
{
    return [[UINavigationController alloc] initWithRootViewController:[self buildMainController]];
}

#pragma mark Public Components

- (ChildController*) buildChildController
{
    ChildController *controller = [[ChildController alloc] initWithNibName:nil bundle:nil];
    [controller setLogger:logger];
    return controller;
}

- (UIWindow*) buildMainWindow
{
    CGRect screenFrame = [[UIScreen mainScreen] bounds];
    UIWindow *window = [[UIWindow alloc] initWithFrame:screenFrame];
    [window setRootViewController:[self buildNavigationStack]];
    return window;
}

#pragma mark Initialization

- (id) init
{
    self = [super init];
    [self setLogger:[[Logger alloc] init]];
    return self;
}

@end
