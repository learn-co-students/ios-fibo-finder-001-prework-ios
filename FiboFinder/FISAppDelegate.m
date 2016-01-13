//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSArray*)arrayWithFibonacciSequenceToIndex:(NSUInteger)index; {
    NSMutableArray *sequence= [[NSMutableArray alloc] init];
    for(NSUInteger i=0;i<index+1;i++) {
        NSNumber *fibStart=@(i);
        if([fibStart isEqualToNumber:@0]) {
            [sequence addObject:fibStart];
            }
        else if([fibStart isEqualToNumber:@1]) {
             [sequence addObject:fibStart];
        }
        else {
            NSNumber *fibOne=sequence[i-1];
            NSNumber *fibTwo=sequence[i-2];
            NSUInteger fibOneInt=[fibOne integerValue];
            NSUInteger fibTwoInt=[fibTwo integerValue];
            NSUInteger nextNumber= fibOneInt + fibTwoInt;
            NSNumber *nextNumberObject=@(nextNumber);
            [sequence addObject:nextNumberObject];
        }
    }
    return sequence;
}



@end
