//
//  AppDelegate.h
//  singleviewtest2
//
//  Created by Ustun Ozgur on 4/5/15.
//  Copyright (c) 2015 Ustun Ozgur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CounterModel;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CounterModel *counters;

@end

