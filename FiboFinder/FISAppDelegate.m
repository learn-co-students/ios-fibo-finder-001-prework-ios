//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index; {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSInteger fibonacci = [sequence [i - 1] integerValue] + [sequence [i - 2] integerValue];
//Subscipting sequence (by utilizing i-1 & i-2) to generate the next number in the fibonacci sequence. I then added the integerValue of said two NSNumbers.
            
            
            [sequence addObject:@(fibonacci)];
//Originally left out @ sign as well as paranthesis around fibonacci, this was causing the build to fail.
            
        }
        
    }
    
    return sequence;
}



@end
