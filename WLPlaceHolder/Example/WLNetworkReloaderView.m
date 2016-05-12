//
//  WLNetworkReloaderView.m
//  WLPlaceHolder
//
//  Created by 王林 on 16/5/11.
//  Copyright © 2016年 com.ptj. All rights reserved.
//

#import "WLNetworkReloaderView.h"

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
    
    CGFloat imgW = 173.0f;
    CGFloat imgH = 105.0f;
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.center.x-imgW*0.5,self.center.y-imgH, imgW, imgH)];
    [self addSubview:imageView];
    imageView.image = [UIImage imageNamed:@"no-wifi"];
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(imageView.frame), self.frame.size.width, 15)];
    [self addSubview:label];
    label.text = @"网络不太顺畅哦~";
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:15];
    UIButton * reloadBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:reloadBtn];
    
    CGFloat btnW = 100.0f;
    CGFloat btnH = 50.0f;
    reloadBtn.frame = CGRectMake(self.center.x-btnW * 0.5, CGRectGetMaxY(label.frame), btnW, btnH);
    reloadBtn.layer.borderWidth = 0.5;
    reloadBtn.layer.cornerRadius = 3.0;
    reloadBtn.layer.borderColor = [UIColor blackColor].CGColor;
    
}

@end
