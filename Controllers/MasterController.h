@class Factory;

@interface MasterController : UIViewController

@property(strong) Factory *factory;

- (IBAction) loadChildController: (id) sender;

@end
