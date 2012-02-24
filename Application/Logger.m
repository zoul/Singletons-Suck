#import "Logger.h"

@implementation Logger

- (void) log: (NSString*) fmt, ...
{
    va_list arglist;
    va_start(arglist, fmt);
    NSLogv(fmt, arglist);
    va_end(arglist);
}

@end
