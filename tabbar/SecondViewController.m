//
//  SecondViewController.m
//  test
//
//  Created by yin on 2020/7/8.
//  Copyright © 2020 yin. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "TestImageViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController *vc = [[ViewController alloc] init];
    vc.title = @"11";
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    TestImageViewController *imageVC = [[TestImageViewController alloc] init];
    imageVC.title = @"12";
    UINavigationController *imageNavi = [[UINavigationController alloc] initWithRootViewController:imageVC];
    
    
    self.viewControllers = @[imageNavi, navi];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
