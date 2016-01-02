//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray*) arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    NSUInteger _first = 0;
    NSUInteger _second = 1;
    NSMutableArray *result = [NSMutableArray new];
    
    [result addObject:@(_first)];
    
    for (NSUInteger i=0; i<index; i++) {
        NSUInteger _t;
        _t = _second;
        _second = _second + _first;
        _first = _t;
        [result addObject:@(_first)];
    }
    
    return result;
    }

@end
