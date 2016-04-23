//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

// Objectives:
// 1. Practice storing and retrieving NSNumber values in a collection.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    NSNumber *zero = @0;
    NSNumber *one = @1;
    for (NSUInteger i = 0; i<(index+1); i++) {
        if (i == 0) {
            [sequence addObject:zero];
            NSLog(@"%@", sequence);
        } else if (i == 1) {
            [sequence addObject:one];
            NSLog(@"%@", sequence);
        } else {
            // Unfortunately, this else-statement does not statisfy the final test. 
            NSNumber *firstQuantity = sequence[i-1];
            NSNumber *secondQuantity = sequence[i-2];
            NSUInteger firstQuantityInt = [firstQuantity unsignedIntegerValue];
            NSUInteger secondQuantityInt = [secondQuantity unsignedIntegerValue];
            NSInteger nextSumInt = firstQuantityInt + secondQuantityInt;
            NSNumber *nextSum = @(nextSumInt);
            [sequence addObject:nextSum];
            NSLog(@"%@", sequence);
        }
    }
    NSLog(@"%@", sequence);
    return sequence;
}

@end
