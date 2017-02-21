//
//  Person.m
//  Block方法参数
//
//  Created by 抬头看见柠檬树 on 2017/2/21.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)wantToEat:(void (^)(NSString *))block
{
    NSLog(@"我饿了!");
    
    if (block) {
        block(@"橘子");
    }
}

@end
