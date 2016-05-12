//
//  WLWechatView.m
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import "WLWechatNetworkIndicatorStyleView.h"

@interface WLWechatNetworkIndicatorStyleView ()

@property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UILabel * label;

@end

@implementation WLWechatNetworkIndicatorStyleView

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}


- (void) setup
{
    [self addSubview:self.imageView];
    [self addSubview:self.label];
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self addGestureRecognizer:tap];
}

- (UIImageView *) imageView
{
    if(_imageView == nil) {
        CGFloat imgWH = 120.0f;
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.center.x-imgWH*0.5, self.center.y-imgWH,imgWH, imgWH)];
        _imageView.image = [UIImage imageNamed:@"WebView_LoadFail_Refresh_Icon"];
    }
    return _imageView;
}

- (UILabel *) label
{
    if(_label == nil) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.imageView.frame), self.frame.size.width, 15)];
        _label.text = @"暂无数据，轻触屏幕重新加载";
        _label.font = [UIFont systemFontOfSize:15.0f];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor blackColor];
    }
    return  _label;
}

- (void) tap:(UITapGestureRecognizer *) sender
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(wechatNetworkIndicatorStyleViewDidTaped:)]) {
        [self.delegate wechatNetworkIndicatorStyleViewDidTaped:self];
    }
}


@end
