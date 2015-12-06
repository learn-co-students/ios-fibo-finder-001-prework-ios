//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i <= index; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            double nextNumber = [sequence[i-2] doubleValue] + [sequence[i-1] doubleValue];
            [sequence addObject:@(nextNumber)];
        }
    }
    NSLog(@"%lu", NSUIntegerMax);
    NSLog(@"%@", sequence);
    
    return sequence;
}

@end
