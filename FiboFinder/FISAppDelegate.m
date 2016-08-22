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



- (NSArray *) arrayWithFibonacciSequenceToIndex:(NSInteger)index;{
    
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < index +1; i++){
    
    
    
        
        
        if (i==0){
            
            
            [sequence addObject:@0];
        }
        
        else if (i==1){
            
            [sequence addObject:@1];
            
            
        }
        
        if (i > 1){
            
            
            long long int fib = [[sequence objectAtIndex:i-2] longLongValue] + [[sequence objectAtIndex:i-1] longLongValue];
            
            
            [sequence addObject:[NSNumber numberWithInteger:fib]];

            
        }
        
    
       
            
    }
    
    
    
    
    
    
    



    
    
    return sequence;
}

@end
