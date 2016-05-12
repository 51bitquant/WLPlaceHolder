//
//  WLWechatView.h
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol WLWechatNetworkIndicatorStyleViewDelegate;
@interface WLWechatNetworkIndicatorStyleView : UIView

@property (nonatomic,weak) id<WLWechatNetworkIndicatorStyleViewDelegate> delegate;

@end

@protocol WLWechatNetworkIndicatorStyleViewDelegate <NSObject>
@optional

- (void) wechatNetworkIndicatorStyleViewDidTaped:(WLWechatNetworkIndicatorStyleView *) wechatStyleView;


@end


