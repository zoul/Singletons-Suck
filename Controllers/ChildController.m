#import "ChildController.h"
#import "Logger.h"

@implementation ChildController
@synthesize logger;

- (void) viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Child"];
}

- (void) viewDidAppear: (BOOL) animated
{
    [super viewDidAppear:animated];
    [logger log:@"Child view appeared (animated: %i).", animated];
}

@end
