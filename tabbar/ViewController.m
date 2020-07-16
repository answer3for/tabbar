//
//  ViewController.m
//  tabbar
//
//  Created by yin on 2020/7/9.
//  Copyright © 2020 yin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 30, 44);
    [rightButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
    rightButton.backgroundColor = [UIColor clearColor];
    [rightButton setTitle:@"编辑" forState:UIControlStateNormal];
    [rightButton setTitle:@"取消" forState:UIControlStateSelected];
    [rightButton addTarget:self action:@selector(editorAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"添加" style:UIBarButtonItemStylePlain target:self action:@selector(clickAddButton)];
    self.navigationItem.rightBarButtonItems = @[editButton, addButton];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"拍照" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftButton)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIButton *pushButton = [[UIButton alloc] initWithFrame:CGRectMake(40, 200, [UIScreen mainScreen].bounds.size.width-80, 50)];
    [pushButton setTitle:@"下一个" forState:UIControlStateNormal];
    [pushButton setBackgroundColor:[UIColor redColor]];
    [pushButton addTarget:self action:@selector(clickPushButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
    // Do any additional setup after loading the view.
}

- (void)clickPushButton {
    [self.navigationController.navigationBar setHidden:YES];
    [self.tabBarController.tabBar setHidden:YES];
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    secondVC.modalPresentationStyle = 0;
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)editorAction:(UIButton *)button {
    NSLog(@"点击取消按钮");
}

- (void)clickAddButton {
    NSLog(@"点击添加按钮");
}

- (void)clickLeftButton {
    NSLog(@"点击拍照按钮");
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:NO];

    [self.tabBarController.tabBar setHidden:NO];

}



@end
