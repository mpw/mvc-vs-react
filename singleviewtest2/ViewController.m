#import "ViewController.h"
#import "CounterView.h"
#import "AppDelegate.h"

@interface ViewController ()

// Model (or state variables)

@end

@implementation ViewController



- (void)viewDidLoad {
    self.counterView.counters = [(AppDelegate*)[[UIApplication sharedApplication] delegate] counters];
}


@end
