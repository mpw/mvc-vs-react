//
//  AppDelegate.m
//  singleviewtest2
//
//  Created by Ustun Ozgur on 4/5/15.
//  Copyright (c) 2015 Ustun Ozgur. All rights reserved.
//

#import "AppDelegate.h"
#import "CounterModel.h"

@interface AppDelegate ()



@end

@implementation AppDelegate

-(instancetype)init
{
    self=[super init];
    self.counters=[CounterModel new];
    return self;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

@end
