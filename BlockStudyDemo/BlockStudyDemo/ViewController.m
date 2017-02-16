//
//  ViewController.m
//  BlockStudyDemo
//
//  Created by 抬头看见柠檬树 on 2017/2/15.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Block的基础使用方式
     [self baseBlockUse];
}

#pragma mark - block的基本使用方式
- (void)baseBlockUse
{
    // block作用：block是一种特殊的数据类型，用来保存一段代码。block类似于匿名函数
    
    // block声明
    // 无参声明
    void(^emptyBlock)();
    // 有参声明(小括号里写的是参数的类型，多个参数需要逗号隔开)
    void(^nonEmptyBlock)(NSString *,NSString *);
    
    // block定义：3种方式
    // 1.在有参数的情况下，=号后面需要列出参数。
    void(^defineBlock1)(NSString *) = ^(NSString *str){
        NSLog(@"defineBlock1:%@",str);
    };
    // 2.在无参的情况下，=号后面可以隐藏参数
    void(^defineBlock2)() = ^{
        NSLog(@"defineBlock2");
    };
    // 3.查阅资料发现的一种写法，=号后面可以列出返回值，也可以隐藏返回值
    // defineBlock3的类型：NSString *(^)(NSString *)
    NSString *(^defineBlock3)(NSString *) = ^NSString *(NSString *str){
        NSLog(@"defineBlock3:%@",str);
        return str;
    };
    
    // block调用
    defineBlock1(@"我是1");
    defineBlock2();
    defineBlock3(@"我是3");
    
    // block快捷方式（新手福利）: 输入inlineBlock，系统会给出block模板
//    <#returnType#>(^<#blockName#>)(<#parameterTypes#>) = ^(<#parameters#>) {
//        <#statements#>
//    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
