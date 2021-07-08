//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES; 
}

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    
    NSMutableArray *sequence = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject:@0];
        } else if (i == 1){
            [sequence addObject:@1];
        } else{
            int previousNumb1 = [[sequence objectAtIndex:i-2] intValue];
            int previousNumb2 = [[sequence objectAtIndex:i-1] intValue];
            
            int fibo = previousNumb1 + previousNumb2;
            [sequence addObject:[NSNumber numberWithInt:fibo]];
        }
    }
    NSLog(@"%@",sequence);
    
    return sequence;
}
@end
