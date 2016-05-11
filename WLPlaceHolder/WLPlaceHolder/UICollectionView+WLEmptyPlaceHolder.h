//
//  UICollectionView+WLEmptyPlaceHolder.h
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (WLEmptyPlaceHolder)

//添加一个方法
- (void) collectionViewDisplayView:(UIView *) displayView ifNecessaryForRowCount:(NSUInteger) rowCount;
@end
