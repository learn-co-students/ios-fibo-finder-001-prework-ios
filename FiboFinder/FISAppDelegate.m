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

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    NSMutableArray *sequence = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
            }
        else if (i == 1){
            [sequence addObject:@1];
        }
        else {
            NSUInteger firstValue = 0;
            firstValue = [sequence[i - 2]unsignedIntegerValue];
            NSUInteger secondValue = 0;
            secondValue = [sequence[i - 1]unsignedIntegerValue];
            NSNumber *newFib = @(firstValue + secondValue);
            [sequence addObject:newFib];
        }
    }
    NSLog(@"%@", sequence);
    return sequence;
}

@end
