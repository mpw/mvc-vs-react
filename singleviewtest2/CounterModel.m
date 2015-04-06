//
//  CounterModel.m
//  singleviewtest2
//
//  Created by Marcel Weiher on 4/6/15.
//  Copyright (c) 2015 Ustun Ozgur. All rights reserved.
//

#import "CounterModel.h"

@implementation CounterModel
{
    int counter;
    int countMax;
    NSString *_name;
}

-(instancetype)init
{
    self=[super init];
    counter=0;
    countMax=10;
    return self;
}

-(int)downCounter
{
    return countMax - counter;
}


-(int)upCounter
{
    return counter;
}

-(BOOL)isAtMax
{
    return counter == countMax;
}


-(BOOL)isAtMin
{
    return counter == 0;
}


-(void)modelDidChange
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ModelDidChange" object:nil];
}

-(BOOL)isValidCounterValue:(int)newCount
{
    return newCount >=0 && newCount <= countMax;
}

-(void)countBy:(int)increment
{
    int newCount=counter+increment;
    if ([self isValidCounterValue:newCount]) {
        counter=newCount;
        [self modelDidChange];
    }
}

-(void)countUp
{
    [self countBy:1];
}

-(void)countDown
{
    [self countBy:-1];
}

-(NSString*)name
{
    return _name;
}

-(void)setName:(NSString *)name
{
    _name=name;
    [self modelDidChange];
}

@end
