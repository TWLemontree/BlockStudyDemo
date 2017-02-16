//
//  ViewController.m
//  Block使用（保存代码）
//
//  Created by 抬头看见柠檬树 on 2017/2/15.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "CellItem.h"

#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height

// BlockType：Block的类型
// typedef void(^BlockType)();

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

// Block属性：1.怎么声明就怎么定义Block属性；2.定义一个Block类型，然后用这个类型声明。
@property (nonatomic, strong) void(^blockName)();

//@property (nonatomic, strong) BlockType blockName;

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, strong) NSArray *cellItems;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Block的第一种用法，方法之间传值。但是下面的Demo没有意义，我们直接在test2方法中调用test1方法就好，这样更简单。
    /*
    // 声明Block
    [self test1];
    
    // 使用Block
    [self test2];
     */
    
    // 我们用另一个Demo来演示，通过Block在方法间传值，简化代码增加可读性。
    
    // 1.创建tableView
    [self setupTableView];
    
    // 2.编写tableView的代理方法和数据源方法
    // 思路：点击cell，执行特定的动作。可读性较差的写法就是无限嵌套 if else 来完成，但是我们可以封装一个cellItem对象，并且将要执行的动作保存在一个Block之中，这样写会大大增强代码的可读性。
    // 额，这个方法名，，，算了，懒得改了
    CellItem *item1 = [CellItem cellWithTitle:@"执行动作1"];
    item1.block = ^{
        NSLog(@"这里执行动作1");
    };
    
    CellItem *item2 = [CellItem cellWithTitle:@"执行动作2"];
    item2.block = ^{
        NSLog(@"这里执行动作2");
    };
    
    CellItem *item3 = [CellItem cellWithTitle:@"执行动作3"];
    item3.block = ^{
        NSLog(@"这里执行动作3");
    };
    
    _cellItems = @[item1,item2,item3];
    
}


#pragma mark - Demo2
- (void)setupTableView
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, screen_width, screen_height - 20) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    _tableView = tableView;
}

#pragma mark ====== UITableViewDataSource & UITableViewDelegate ======

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _cellItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    // 可读性差的写法
//    if (indexPath.row == 0) {
//        cell.textLabel.text = @"执行动作1";
//    } else if (indexPath.row == 1) {
//        cell.textLabel.text = @"执行动作2";
//    } else if (indexPath.row == 2) {
//        cell.textLabel.text = @"执行动作3";
//    }
    
    CellItem * item = _cellItems[indexPath.row];
    cell.textLabel.text = item.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 可读性差的写法
    //    if (indexPath.row == 0) {
    //    } else if (indexPath.row == 1) {
    //    } else if (indexPath.row == 2) {
    //    }
    
    CellItem *item = _cellItems[indexPath.row];
    item.block();
}

#pragma mark - Demo1

- (void)test1
{
    self.blockName = ^{
        NSLog(@"在一个方法中定义，在另一个方法中使用");
    };
}

- (void)test2
{
    self.blockName();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
