//
//  ViewController.m
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import "WLViewController.h"

@interface WLViewController ()

@end

@implementation WLViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellID"];
}



- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return  10;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  1;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellID = @"CellID";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.textLabel.text = [NSString stringWithFormat:@"cell Row = %ld",indexPath.row];
    return  cell;
}



@end
