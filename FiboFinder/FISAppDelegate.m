//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // test it!
    NSUInteger testNumber = 7;
    [self arrayWithFibonacciSequenceToIndex:testNumber];
    
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject: @0];
        } else if (i == 1) {
            [sequence addObject: @1];
        } else {
            NSUInteger oneBefore = [sequence[i - 1] integerValue];
            NSUInteger twoBefore = [sequence[i - 2] integerValue];
            NSNumber *newNumber = @(oneBefore + twoBefore);
            [sequence addObject:newNumber];
        }
    }
    
    NSLog(@"%@", sequence); 
    return sequence;
}


@end
