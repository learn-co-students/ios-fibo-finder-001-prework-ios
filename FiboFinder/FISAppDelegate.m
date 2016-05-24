//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i < index+1; i++) {
        if (i == 0) {
            [sequence addObject: @0];
            //to see what it is at this moment, because experiencing errors
            NSLog(@"%@", sequence[0]);
        }
        else if (i==1) {
            [sequence addObject: @1];
            //to see what it is at this moment, because experienceing errors
            NSLog(@"%@", sequence[1]);
        }
        else {
            //could possibly do this in less steps, if more time come back in and label as nsinteger, and then set it equal to the integervalue.
            
            NSNumber *indexLessTwo = sequence[i-2];
            NSNumber *indexLessOne = sequence[i-1];
            
            NSUInteger indexIntOne = [indexLessOne unsignedIntegerValue];
            NSUInteger indexIntTwo = [indexLessTwo unsignedIntegerValue];
            NSNumber *sumOfPreviousTwo = @(indexIntOne + indexIntTwo);
            
            NSLog(@"%lu is the first, and %lu is the second", indexIntOne, indexIntTwo);
            
            [sequence addObject: sumOfPreviousTwo];
            
            //  NSUInteger intIndexLessOne = [indexLessOne integerValue];
            //  NSUInteger intIndexLessTwo = [indexLessTwo integerValue];
            
            
        }
        NSLog(@"%@", sequence[i]);
        
    }
    
    //return sequence
    return sequence;
}
@end
