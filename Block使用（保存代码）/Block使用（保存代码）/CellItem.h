//
//  cellItem.h
//  Block使用（保存代码）
//
//  Created by 抬头看见柠檬树 on 2017/2/16.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellItem : NSObject

@property (nonatomic, strong) NSString *title;

// block的属性定义，按照block的声明去写就好。inlineBlock黑魔法可以帮助你回忆block的书写格式，妈妈再也不用担心我不会写block了！
@property (nonatomic, strong) void(^block)();

// 初始化Item的方法
+ (instancetype)cellWithTitle:(NSString *)title;

@end
