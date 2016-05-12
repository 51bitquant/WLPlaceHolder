//
//  WLNetworkReloaderView.m
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import "WLNetworkReloaderView.h"

@interface WLNetworkReloaderView ()

@property (nonatomic,strong) UILabel * label;
@property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIButton * reloadBtn;

@end

@implementation WLNetworkReloaderView

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        self.backgroundColor = [UIColor redColor];
        [self setup];
    }
    return  self;
}


- (void) setup
{
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.imageView];
    [self addSubview:self.label];
    [self addSubview:self.reloadBtn];
}


- (UIImageView *) imageView
{
    if(_imageView == nil) {
        CGFloat imgW = 173.0f;
        CGFloat imgH = 105.0f;
        _imageView  = [[UIImageView alloc] initWithFrame:CGRectMake(self.center.x-imgW*0.5,self.center.y-imgH, imgW, imgH)];
        _imageView.image = [UIImage imageNamed:@"no-wifi"];
    }
    
    return  _imageView;
}

- (UILabel *) label
{
    if(_label == nil) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.imageView.frame)+10, self.frame.size.width, 15)];
        _label.text = @"网络不太顺畅哦~";
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor blackColor];
        _label.font = [UIFont systemFontOfSize:15];
    }
    return  _label;
}

- (UIButton *) reloadBtn
{
    if(_reloadBtn == nil) {
        _reloadBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        CGFloat btnW = 100.0f;
        CGFloat btnH = 40.0f;
        _reloadBtn.frame = CGRectMake(self.center.x-btnW * 0.5, CGRectGetMaxY(self.label.frame)+10, btnW, btnH);
        [_reloadBtn setTitle:@"重新加载" forState:UIControlStateNormal];
        [_reloadBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _reloadBtn.layer.borderWidth = 0.5;
        _reloadBtn.layer.cornerRadius = 3.0;
        _reloadBtn.layer.borderColor = [UIColor blackColor].CGColor;
        [_reloadBtn addTarget:self action:@selector(btnDidClicked:) forControlEvents:UIControlEventTouchDown];
    }
     return _reloadBtn;
}


// 按钮方法。
- (void) btnDidClicked:(UIButton *) sender
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(networkReloaderView:DidClickedReloadBtn:)]) {
        [self.delegate networkReloaderView:self DidClickedReloadBtn:sender];
    }
}

@end
