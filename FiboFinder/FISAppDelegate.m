//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *) arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    NSMutableArray *sequence = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < (index + 1); i++) {
        
        if (i == 0){
            [sequence addObject:@0];
        }else if(i == 1){
            [sequence addObject:@1];
        }else {
            
NSUInteger nextObject = [sequence[(i-1)] integerValue] + [sequence[(i-2)] integerValue];
            [sequence addObject:@(nextObject)];
        }
    }
    return sequence;
}

@end
