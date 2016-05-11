//
//  UITableView+WLEmptyPlaceHolder.m
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import "UITableView+WLEmptyPlaceHolder.h"

@implementation UITableView (WLEmptyPlaceHolder)
//添加一个方法
- (void) tableViewDisplayView:(UIView *) displayView ifNecessaryForRowCount:(NSUInteger) rowCount
{
    if (rowCount == 0) {
        self.backgroundView = displayView;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    } else {
        self.backgroundView = nil;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
}

@end
