//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index; {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        
        if (i == 0) {
            
            [sequence addObject:@0];
            
        } else if (i == 1) {
            
            [sequence addObject:@1];
// Everything above was pretty much a given in the lab.
            
        } else {
            
            NSNumber *first = sequence[i-2];
            NSNumber *second = sequence[i-1];
            
            NSNumber *finalSum = @([first integerValue] + [second integerValue]);
// Important to understand that NSNumber serve almost as a NSString, that's why I was able to add these integerValues and addObject to my mutable array.
            
            [sequence addObject:finalSum];
            
            NSLog(@"\n\n\n\n\n\n%@\n\n\n\n\n", sequence);
            
        }
    }
    
    return sequence;
}


@end
