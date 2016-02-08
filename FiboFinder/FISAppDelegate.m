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

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSInteger)index;{
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:(@0)];
        }
        else if (i == 1){
            [sequence addObject:(@1)];
        }

        else {
            NSNumber *x = [sequence objectAtIndex:(i-1)];
            NSNumber *y = [sequence objectAtIndex:(i-2)];
            NSUInteger intX = [x unsignedIntegerValue];
            NSUInteger intY = [y unsignedIntegerValue];
            
            NSUInteger fibonacciAddition = intX + intY;
            NSNumber *fibonacciAdditionNumber = @(fibonacciAddition);
            [sequence addObject:fibonacciAdditionNumber];}
        }
    
    return sequence;}

@end
