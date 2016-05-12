//
//  WLNetworkReloaderView.h
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//


#import <UIKit/UIKit.h>

@protocol WLNetworkReloaderViewDelegate;
@interface WLNetworkReloaderView : UIView

@property (nonatomic,weak) id <WLNetworkReloaderViewDelegate> delegate;
@end

@protocol WLNetworkReloaderViewDelegate <NSObject>


@end