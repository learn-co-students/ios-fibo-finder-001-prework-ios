//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSUInteger)fibonacciSequence:(NSUInteger)n;

- (NSArray*)arrayWithFibonacciSequenceToIndex:(NSUInteger)index;

@end
