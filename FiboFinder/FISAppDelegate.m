//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"%lu",[self fibonacciSequence:12]);
    
    // Override point for customization after application launch.
    return YES;
}

- (NSUInteger)fibonacciSequence:(NSUInteger)n {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return [self fibonacciSequence:n -1] + [self fibonacciSequence:n -2];
    }
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray * sequence = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i <= index; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSUInteger iMinus1 = [(NSNumber*)sequence[i-1] integerValue];
            NSUInteger iMinus2 = [(NSNumber*)sequence[i-2] integerValue];
            NSLog(@"%lu", iMinus1 + iMinus2);
            [sequence addObject:@(iMinus1 + iMinus2)];
        }
    }
    return sequence;
}

@end
