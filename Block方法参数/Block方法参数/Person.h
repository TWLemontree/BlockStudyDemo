//
//  Person.h
//  Block方法参数
//
//  Created by 抬头看见柠檬树 on 2017/2/21.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)wantToEat:(void(^)(NSString *))block;

@end
