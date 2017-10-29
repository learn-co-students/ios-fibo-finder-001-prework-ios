//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSUInteger indexValue = 12;
    NSArray *results = [self arrayWithFibonacciSequenceToIndex:indexValue];
    
    // show results
    for(NSUInteger i=0; i < [results count]; i++){
       NSLog(@"F%li: %@", i, results[i]);
    }
    
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for(NSUInteger i = 0; i < index + 1; i++){
        if(i == 0){
            [sequence addObject:@0];
        } else if (i == 1){
            [sequence addObject:@1];
        } else {
            NSUInteger valueBack2 = [sequence[i-2] unsignedIntegerValue];
            //NSLog(@"value in array at valueBack2: %li", valueBack2);
            NSUInteger valueBack1 = [sequence[i-1] unsignedIntegerValue];
            //NSLog(@"value in array at valueBack1: %li", valueBack1);
            NSNumber *sum = @(valueBack2 + valueBack1);
            [sequence addObject:sum];
        }
    }
    
    return sequence;
}

@end
