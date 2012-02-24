#import "MasterController.h"
#import "ChildController.h"
#import "Factory.h"

@implementation MasterController
@synthesize factory;

- (void) viewDidLoad
{
    [super viewDidLoad];
    [[self navigationItem] setTitle:@"Master"];
}

- (IBAction) loadChildController: (id) sender
{
    [[self navigationController] pushViewController:[factory buildChildController] animated:YES];
}

@end
