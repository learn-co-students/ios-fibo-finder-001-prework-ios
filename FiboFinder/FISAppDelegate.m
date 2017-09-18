//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSNumber *firstNumber = [sequence objectAtIndex:i-1];
            NSNumber *secondNumber = [sequence objectAtIndex:i-2];
            
            // translate to an integer to do math ? this is bonkers to me
            NSUInteger integerSum = [firstNumber unsignedIntegerValue] + [secondNumber unsignedIntegerValue];
            
            // convert to a NSNumber for some reason, because this is an object?
            NSNumber *numberSum = @(integerSum);
            
            [sequence addObject:numberSum];
        }
    }
    
    NSLog(@"This is the current sequence %@", sequence);
    
    return sequence;
}

@end
