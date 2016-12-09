//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//Navigate to the FISAppDelegate.m implementation file. Use autocomplete to define the method implementation to return nil so that the build will succeed. Run the tests with ⌘ Uto see that they fail.

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger )index {
    NSMutableArray *sequence = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            [sequence addObject: @0];
        } else if (i ==1) {
            [sequence addObject: @1];
        } else {
            NSInteger nextIndexInFiboSequence = [sequence[i - 1] unsignedIntegerValue] + [sequence[i - 2] unsignedIntegerValue];
            [sequence addObject:@(nextIndexInFiboSequence)];
    }
    }
    NSLog(@"Sequence: %@", sequence);
    return sequence;
}

@end


