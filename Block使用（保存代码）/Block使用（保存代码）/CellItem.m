//
//  cellItem.m
//  Block使用（保存代码）
//
//  Created by 抬头看见柠檬树 on 2017/2/16.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "CellItem.h"

@implementation CellItem

+ (instancetype)cellWithTitle:(NSString *)title
{
    CellItem *item = [[CellItem alloc] init];
    
    item.title = title;
    
    return item;
}

@end
