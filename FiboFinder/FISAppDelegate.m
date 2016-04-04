//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */
-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    //Fibonacci using dynamic programming approach (not space efficient)
    for (NSUInteger i =0; i< index+1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        }
        else if (i == 1) {
            [sequence addObject:@1];
        }else {
            NSNumber *nMinusTwo = sequence[i-2];
            NSNumber *nMinusOne = sequence[i-1];
            NSUInteger nMinusTwoInt = [nMinusTwo integerValue];
            NSUInteger nMinusOneInt = [nMinusOne integerValue];
            NSUInteger sum = nMinusTwoInt + nMinusOneInt;
            [sequence addObject:@(sum)];
        }
    }
    
    
    return sequence;
}

@end
