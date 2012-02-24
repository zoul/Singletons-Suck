#import "AppDelegate.h"
#import "Factory.h"

@implementation AppDelegate
@synthesize window;

- (BOOL) application: (UIApplication*) application didFinishLaunchingWithOptions: (NSDictionary*) launchOptions
{
    Factory *factory = [[Factory alloc] init];
    [self setWindow:[factory buildMainWindow]];
    [window makeKeyAndVisible];
    return YES;
}

@end
