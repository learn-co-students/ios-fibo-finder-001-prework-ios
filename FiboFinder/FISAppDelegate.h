//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your method here.
 Navigate to the FISAppDelegate.h header file. Declare one method called arrayWithFibonacciSequenceToIndex: which takes one NSUInteger argument called index and returns an NSArray.
 
 */

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSInteger)index;

@end
