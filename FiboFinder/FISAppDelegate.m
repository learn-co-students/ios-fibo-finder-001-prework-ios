//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < (index + 1); i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1) {
            [sequence addObject:@1];
        } else {
            
            // compute the next number in the fibonacci sequence
            
            // extract two array entries and convert to NSNumber objects
            
            NSNumber *fibOne = sequence[i-1];
            NSNumber *fibTwo = sequence[i-2];
            
            // convert NSNumber objects to primitives
            
            NSInteger fibOneInt = 0;
            NSInteger fibTwoInt = 0;
            
            fibOneInt = [fibOne integerValue];
            fibTwoInt = [fibTwo integerValue];
            
            // calculate value of next fibonacci sequence using primitives
            
            NSInteger fibNextInt = fibOneInt + fibTwoInt;
            
            // add the new fibonacci number to the <sequence> array
            
            // convert fibNextInt primitive to fibNext NSNumber object that can be added to <sequence> array
            
            NSNumber *fibNext = @(fibNextInt);
            
            // add fibNext object/value to <sequence> array
            
            [sequence addObject:fibNext];
            
        }
            
    }
    
    // NSLog(@"sequence is: %@",sequence);
    
    return sequence;
}

@end
