//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex: (NSUInteger)index {
    
    NSMutableArray *sequence = [NSMutableArray array];

    NSUInteger i = 0;
    for (i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSNumber *a = sequence[i - 1];
            NSNumber *b = sequence[i - 2];
            
            NSUInteger intA = [a integerValue];
            NSUInteger intB = [b integerValue];
            NSUInteger sum = intA + intB;
            
            NSNumber *newSum = [NSNumber numberWithInteger:sum];
            [sequence addObject:newSum];
        }
    }
    
    
    return  sequence;
}

@end
