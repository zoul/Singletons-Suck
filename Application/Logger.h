/*
    A trivial logging class, showing that you can pass a single shared instance
    between your application’s object without any singleton boilerplate. The shared
    instance will be created by the Factory class, but note that you can freely
    create other isolated instances, for example for testing purposes. That doesn’t
    make that much sense with a logger, but if this was a model class instead,
    it would be quite beneficial to be able to create isolated instances.
*/
@interface Logger : NSObject

- (void) log: (NSString*) fmt, ...;

@end
