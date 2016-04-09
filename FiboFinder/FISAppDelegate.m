//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *fibonacci = [[NSMutableArray alloc] initWithArray:@[@0, @1]];
    
    if (index == 0) {
        return @[@0];
    } else if (index == 1) {
        return @[@0, @1];
    } else {
        for (NSUInteger i = 2; i <= index; i++) {
            UInt64 lastFibonacci = [fibonacci[i - 1] unsignedLongLongValue];
            UInt64 secondToLastFibonacci = [fibonacci[i - 2] unsignedLongLongValue];
            // UInt64 & unsignedLongLongValue are used so last test (48th fibonacci value > 2^32) will pass on 32-bit systems
            // Assuming running 64-bit we can just use NSUInteger & unsignedIntegerValue just fine
            // Yeah, ask me how on Earth I happened to run this on 32-bit in a first place, lol
            // And you are evil, it took me a while to figure out what's wrong and how to fix it
            // Not as evil as in collection practices #2 in Web Development Fundamentials though
            // Where were problems with hashes and hashes were not explained AT ALL at the time
            // So I had to study hashes and figure evrything out on my own
            // Anyway, nobody gonna read this
            // Correct me if I'm wrong, lol
            NSNumber *nextFibonacci = @(lastFibonacci + secondToLastFibonacci);
            [fibonacci addObject:nextFibonacci];
        }
        return fibonacci;
    }
}

@end
