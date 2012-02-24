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
