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
    for (NSUInteger i =0; i < index+1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        }
        else if (i == 1) {
            [sequence addObject:@1];
        }
        else {
            NSNumber *one = sequence[i-1];
            NSNumber *two = sequence[i-2];
            NSInteger oneInt = [one integerValue];
            NSInteger twoInt = [two integerValue];
            NSInteger nextFibInt = oneInt + twoInt;
            NSNumber *nextFib = @(nextFibInt);
            [sequence addObject:nextFib];
        }
    }
    NSLog(@"%@", sequence);
    return sequence;
}

@end
