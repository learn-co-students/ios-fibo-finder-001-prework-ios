//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index { // will return an array
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init]; // that array is made mutable and named sequence
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSNumber *firstNumber = [sequence objectAtIndex:i-1];
            NSNumber *secondNumber = [sequence objectAtIndex:i-2];
            
            
            NSUInteger integerSum = [firstNumber unsignedIntegerValue] + [secondNumber unsignedIntegerValue]; // translate to an integer
            
            
            NSNumber *numberSum = @(integerSum); // convert to a NSNumber
            
            [sequence addObject:numberSum];
        }
    }
    
    NSLog(@"This is the current sequence %@", sequence); // print a string
    
    return sequence; // an array named sequence is returned.
}

@end // fin