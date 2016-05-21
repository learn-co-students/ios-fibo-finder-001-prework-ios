//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

// "i" is equal to the place in the array

- (NSArray*)arrayWithFibonacciSequenceToIndex:(NSUInteger)placeInFibSequence { // Will return an NSArray. "placeInFibSequence" passes the i'th position Fibonacci number.
    
    NSMutableArray*sequence = [[NSMutableArray alloc] init]; // This creates a new empty dynamic NSMutable array called "sequence" and tells the compilier that it's empty during run time (with "[[NSMutableArray alloc] init];"
    
    for (NSUInteger i = 0; i < placeInFibSequence + 1; i++) { // NSUInteger "i" set to 0 at "placeInFibSequence". If "placeInFibSequence is greater than "placeInFibSequence" add 1. Then increment "i" by 1 (because of "i++") as ling as "placeInFibSequence" is greater than "i" or 0
        
        if (i == 0) {                  // "==" checks if it's equal to "0" ("i" is the iteration) "i" always equals 0 in the                  beginning
            [sequence addObject:@0]; // places a 0 in the first spot
        } else if (i == 1) {         // if "i" is equal to 1 place a 1 in the second spot
            [sequence addObject:@1];
        } else {                                                    // fibonacci sequencing starts here.
            NSNumber *firstNumber = [sequence objectAtIndex:i-1]; // taking a temporary value subtracting 1 from the index
            NSNumber *secondNumber = [sequence objectAtIndex:i-2]; // taking a temporary value subtracting 2 from the index
            
            
            NSUInteger integerSum = [firstNumber unsignedIntegerValue] + [secondNumber unsignedIntegerValue]; // translates to an integer, "intergerSum" (NSUInteger used for arthimetic NSNumber not suitable) unsignedIntegerValue is always going to be positive (you would use it only if you know you're going to have big positive values) signedIntegerValues can be -, 0, or + Where as unsignedIntegerValues can only be 0 or +
            
            //typecasting = changing a variable from one vatiable type to another as long as it meets the conditions.
            
            
            NSNumber *numberSum = @(integerSum); // sets the NSNumber "numberSum" equal to "integerSum" by converting "numberSum" to NSNumber "integerSum". integerSum is turned into an NSNumber by the "@"
            
            [sequence addObject:numberSum]; // "addObject" adds "numberSum" to the end of the NSMutableArray "sequence" (0, 1, 1, 2, 3, 5, 8, 13, etc)
        }
    }
    
    NSLog(@"This is the current sequence %@", sequence); // prints an NSString and the value of the array with "%@". "%@" is replaced by "sequence"
    
    return sequence; // an array named sequence is returned. (ex. 0, 1, 1, 2, 3, 5, 8, 13, etc)
}

@end // fin