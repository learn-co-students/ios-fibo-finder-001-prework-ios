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
            
            NSInteger nextNumber = [sequence [i-1] integerValue] + [sequence [i-2] integerValue];
//This one line was listed under 3 different steps in the lesson. Subscript from the array to create two NSNumbers, convert the NSNumbers to integer primitives & then add the two numbers together.
            
            [sequence addObject:@(nextNumber)];
//When you want to addObject: with a NSInteger you have to include the @( ).
            
        }
    }
    
    NSLog(@"\n\n\n\n\n\n\n%@", sequence);
    
    return sequence;
}

@end