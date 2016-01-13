//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//Since the sequence requires the two previous numbers to calculate the next one, we need to prime the sequence. To do this, we're going to need to manually pass in @0 and @1 on the first two iterations of the loop. We can detect the iteration number by checking i against 0 and 1 respectively.
//
//Create an if statement that checks when i is equal to 0. If it is, call the addObject: method on the sequence array with @0 submitted as the argument.
//Chain an else if statement that checks when i is equal to 1. If it is, call the addObject: method on the sequence array with @1 submitted as the argument.
//If you wish to inspect your sequence, insert an NSLog() right before the return statement that prints the sequence array to the console.
//Run the tests with ⌘ U to see that the first two tests pass.

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray *sequence = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < index + 1; i++) {
        if (i == 0) {
            ([sequence addObject:@0]);
        }
        else if (i == 1) {
            ([sequence addObject:@1]);
        }
        else {
            NSUInteger sCount = sequence.count;
            NSNumber *lastNum = (sequence[sCount - 1]);
            NSNumber *secondToLastNum = (sequence[sCount- 2]);
            NSNumber *nextNumber = @([lastNum integerValue] + [secondToLastNum integerValue]);
            [sequence addObject:(nextNumber)];
        }
    }
    return sequence;
}



//Now it's time to implement the algorithm. Chain an else statement to the if and else if statements to set a default behavior for every iteration of the loop after the first two. In order to calculate the next fibonacci number in the sequence, we're going to need to:
//
//-pull the previous two numbers out of the sequence array,
//-Hint: You can subscript an array with an operation, such as i-2.
//-convert them from NSNumbers to integer primitives,
//-calculate the next fibonacci number in the sequence by the finding the sum of the two converted integers, and
//-add the new fibonacci number to the sequence array.

@end

