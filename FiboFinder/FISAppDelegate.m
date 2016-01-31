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
    for(NSUInteger i = 0; i < index + 1;i++){
        if (i == 0){
            [sequence addObject:@0];
        }else if (i == 1){
            [sequence addObject:@1];
        }else{
            NSInteger fibNumberOne = [sequence[i-1] integerValue];
            NSInteger fibNumberTwo = [sequence[i-2] integerValue];
            
            
            //NSNumber fibNumberOne = [sequence[i-1] integerValue];
            //NSNumber fibNumberTwo = [sequence[i-2] integerValue];
            
            NSInteger fibonacciNumber = fibNumberOne + fibNumberTwo;
            //NSNumber fibonacciNumber = fibNumberOne + fibNumberTwo
            
            
            [sequence addObject: @(fibonacciNumber)];
           // NSLog(@"%@",sequence);

        }
        
    }
    NSLog(@"%@",sequence);
    return sequence;
}
@end
