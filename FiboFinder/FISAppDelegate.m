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

-(NSArray *)arrayWithFibonacciSequenceToIndex: (NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        
        if(i == 0) {
            [sequence insertObject:@(0) atIndex: 0];
        }
        else if(i == 1) {
            [sequence insertObject: @(1) atIndex:1];
            }
        else {
            NSUInteger nMinusOne = [[sequence objectAtIndex: i-1] unsignedIntegerValue];
            NSUInteger nMinusTwo = [[sequence objectAtIndex: i-2] unsignedIntegerValue];
            NSUInteger newFibInteger = (nMinusOne + nMinusTwo);
            [sequence addObject: @(newFibInteger)];
        }
        
    }
    NSLog(@"%@", sequence);
    return sequence;
}


@end
