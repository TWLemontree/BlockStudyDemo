//
//  ViewController.m
//  Block方法参数
//
//  Created by 抬头看见柠檬树 on 2017/2/21.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc] init];
    [p wantToEat:^(NSString *food) {
        NSLog(@"我想吃%@!",food);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
