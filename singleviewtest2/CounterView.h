//
//  CounterView.h
//  singleviewtest2
//
//  Created by Ustun Ozgur on 4/5/15.
//  Copyright (c) 2015 Ustun Ozgur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CounterModel;

@interface CounterView : UIView

@property (nonatomic,strong) CounterModel *counters;



- (IBAction)increment:(id)sender;
- (IBAction)decrement:(id)sender;
- (IBAction)handleEditingChanged:(id)sender;

@end
