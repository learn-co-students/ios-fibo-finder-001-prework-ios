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
    
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for(NSUInteger i =0; i < index +1; i++)
    {
        NSNumber *indexZero = @0;
        NSNumber *indexOne = @1;
        
        
        if(i ==0)
        {
            [sequence addObject:indexZero];
        }
        else if ( i==1 )
        {
            [sequence addObject:indexOne];
        }
        else
        {
            NSInteger valueOneBeforeInt = [sequence[i-1] integerValue];
            NSInteger valueTwoBeforeInt = [sequence[i-2] integerValue];
            NSInteger SumOfPreviousTwoValuesInt = valueOneBeforeInt + valueTwoBeforeInt;
            NSNumber *SumofPreviousTwoValues = @(SumOfPreviousTwoValuesInt);
            
            [sequence addObject:SumofPreviousTwoValues];
        }
    }
    
    return sequence;
}

@end
