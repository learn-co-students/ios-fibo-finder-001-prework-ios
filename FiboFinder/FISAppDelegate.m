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
-(NSArray *)arrayWithFibonacciSequenceToIndex: (NSUInteger)index;
{
    NSMutableArray *sequence = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < index + 1; i++)
    {
        if (i == 0)
            {
                [sequence addObject: @0];
            }
        else if (i == 1)
        {
            [sequence addObject: @1];
        }
        else
        {
            NSInteger iMinusOne = [sequence[i-1] integerValue];
            NSInteger iMinusTwo = [sequence[i-2] integerValue];
            NSInteger nextNumber = iMinusOne + iMinusTwo;
            [sequence addObject: @(nextNumber)];
        }
        
        //[sequence addObject: @(i)];
    }
    NSLog(@"%@", sequence);
    return sequence;
}
@end
