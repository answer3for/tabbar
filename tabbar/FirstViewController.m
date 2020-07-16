//
//  FirstViewController.m
//  test
//
//  Created by yin on 2020/7/8.
//  Copyright © 2020 yin. All rights reserved.
//

#import "FirstViewController.h"
#import "ViewController.h"
#import "TestImageViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController *vc = [[ViewController alloc] init];
    vc.title = @"01";
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    TestImageViewController *imageVC = [[TestImageViewController alloc] init];
    imageVC.title = @"02";
    UINavigationController *imageNavi = [[UINavigationController alloc] initWithRootViewController:imageVC];
    
    
    self.viewControllers = @[navi, imageNavi];
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
