//
//  ViewController.m
//  Block跨界面传值
//
//  Created by 抬头看见柠檬树 on 2017/2/21.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "RedViewController.h"

/*
    Demo思路：点击VC屏幕，跳转到RedVC；点击RedVC屏幕，返回VC，并传来一个值
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches
          withEvent:(UIEvent *)event
{
    RedViewController *redVc = [[RedViewController alloc] init];
    redVc.view.backgroundColor = [UIColor redColor];
    
    redVc.block = ^(NSString *value){
        NSLog(@"这是从redVc传递过来的值:%@",value);
    };
    
    [self presentViewController:redVc animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
