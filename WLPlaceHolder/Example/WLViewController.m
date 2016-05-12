//
//  ViewController.m
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import "WLViewController.h"
#import "MJRefresh.h"
#import "WLNetworkReloaderView.h"
#import "UITableView+WLEmptyPlaceHolder.h"

@interface WLViewController ()

@property (nonatomic,strong) NSArray * dataSource;
/**
 *  标记数据源是否有数据。
 */
@property (nonatomic,assign) BOOL dataFlag;

@property (nonatomic,strong)  WLNetworkReloaderView *networkIndicatorView;

@end

@implementation WLViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(headerRefreshing)];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellID"];
}

- (void) headerRefreshing
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.dataFlag = !self.dataFlag;
        self.dataSource = nil;
        
        [self.tableView reloadData];
        [self.tableView.mj_header endRefreshing];
    });
}


- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [tableView tableViewDisplayView:self.networkIndicatorView ifNecessaryForRowCount:self.dataSource.count];
    return  self.dataSource.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellID = @"CellID";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.textLabel.text = [NSString stringWithFormat:@"cell Row = %ld",indexPath.row];
    return  cell;
}


- (NSArray *) dataSource
{
    if (!self.dataFlag) { // 测试用
        NSInteger count = 20;
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:count];
        for (NSInteger i = 0; i<count; i++) {
            [array addObject:@(i)];
        }
        return array;
    }
    return  nil;
}


- (WLNetworkReloaderView *) networkIndicatorView
{
    if(_networkIndicatorView == nil) {
        _networkIndicatorView = [[WLNetworkReloaderView alloc] initWithFrame:self.tableView.bounds];
    }
    return _networkIndicatorView;
}

@end
