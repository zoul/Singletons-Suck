#import "MasterController.h"
#import "ChildController.h"
#import "Factory.h"

@implementation MasterController

- (void) viewDidLoad
{
    [super viewDidLoad];
    [[self navigationItem] setTitle:@"Master"];
}

- (IBAction) loadChildController: (id) sender
{
    // Note that by “outsourcing” the object creation to the Factory, we don’t have to know
    // anything about the child controller’s creation. We don’t have to suppply the dependencies
    // and if the initialization code for the child controller changes, the code below stays.
    // In certain cases we don’t even have to know the precise type of the child controller.
    // This is encapsulation in practice.
    [[self navigationController] pushViewController:[_factory buildChildController] animated:YES];
}

@end
