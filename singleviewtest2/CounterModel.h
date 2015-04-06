//
//  CounterModel.h
//  singleviewtest2
//
//  Created by Marcel Weiher on 4/6/15.
//  Copyright (c) 2015 Ustun Ozgur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CounterModel : NSObject

-(int)upCounter;
-(int)downCounter;

-(void)countUp;
-(void)countDown;

-(BOOL)isAtMax;
-(BOOL)isAtMin;


@property (nonatomic,strong) NSString *name;


@end
