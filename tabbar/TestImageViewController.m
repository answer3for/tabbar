//
//  TestImageViewController.m
//  test
//
//  Created by yin on 2020/7/3.
//  Copyright © 2020 yin. All rights reserved.
//

#import "TestImageViewController.h"

@interface TestImageViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation TestImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"viewDidLoad");
    
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    UILabel *CityLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, bgView.frame.size.width, 44)];
    CityLabel.textColor = UIColor.whiteColor;
    CityLabel.numberOfLines = 0;
    CityLabel.textAlignment = NSTextAlignmentCenter;
    CityLabel.font = [UIFont systemFontOfSize:17];
    [bgView addSubview:CityLabel];
    CityLabel.text = @"北京-上海";
    self.navigationItem.titleView = bgView;
    
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftItem)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 30, 44);
    [rightButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
    rightButton.backgroundColor = [UIColor clearColor];
    [rightButton setTitle:@"扫描" forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(clickScanButton) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *scanButton = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItems = @[scanButton];
    
    
    [self addTableView];
    // Do any additional setup after loading the view.
}

- (void)clickLeftItem {
    [self.tabBarController.navigationController popViewControllerAnimated:YES];
}

- (void)clickScanButton {
    NSLog(@"点击扫描按钮");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear");
}




- (void)addTableView {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 88, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];;
    return cell;;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
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
