//
//  ViewController.m
//  Block方法返回值
//
//  Created by 抬头看见柠檬树 on 2017/2/21.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.test(@"1").test(@"2");
}

- (ViewController *(^)(NSString *))test
{
    return ^ViewController *(NSString *value){
        
        NSLog(@"%@",value);
        
        return self;
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
