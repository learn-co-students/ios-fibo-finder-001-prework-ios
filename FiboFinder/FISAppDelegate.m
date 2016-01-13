//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray *sequence = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            ([sequence addObject:@0]);
        }
        else if (i == 1) {
            ([sequence addObject:@1]);
        }
        else {
            NSUInteger sCount = sequence.count;
            NSNumber *lastNum = (sequence[sCount - 1]);
            NSNumber *secondToLastNum = (sequence[sCount- 2]);
            NSNumber *nextNumber = @([lastNum integerValue] + [secondToLastNum integerValue]);
            [sequence addObject:(nextNumber)];
        }
    }
    return sequence;
}

@end

