#import "ChildController.h"
#import "Logger.h"

@implementation ChildController

- (void) viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Child"];
}

- (void) viewDidAppear: (BOOL) animated
{
    [super viewDidAppear:animated];
    [_logger log:@"Child view appeared (animated: %i).", animated];
}

@end
