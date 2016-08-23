//
//  UIView+SetStyle.m
//  YaoWeiNong
//
//  Created by ceing on 16/6/20.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import "UIView+SetStyle.h"

@implementation UIView (SetStyle)


-(void)viewSetStyleWithView:(UIView *)view {

    view.layer.cornerRadius = 5.0;
    view.layer.borderColor = [UIColor grayColor].CGColor;
    view.layer.borderWidth = 0.3;
    
}



-(void)viewSetStyleCircleWithView:(UIView *)view{

    view.layer.cornerRadius = view.frame.size.width/2.0;
    view.layer.borderColor = [UIColor grayColor].CGColor;
    view.layer.borderWidth = 0.3;
    
}



-(void)viewAddPaoPaoTipView:(UIView *)view AddNeedShowCount:(int)count AddIndex:(int)index{

    CGRect rightFrame;
    CGRect leftFrame;
    
    float W = view.frame.size.width/count;
    
   
    leftFrame = CGRectMake(0, 0, view.frame.size.width/count*index-W/2.0, view.frame.size.height);
    rightFrame = CGRectMake(view.frame.size.width/count*index-W/2.0, 0, view.frame.size.width - (view.frame.size.width/count*index-W/2.0), view.frame.size.height);
    
    
    UIImageView *IV_Left = [[UIImageView alloc] initWithFrame:leftFrame];
    IV_Left.image = [self ResizingImg:[UIImage imageNamed:@"paopaoTopLeft"]];
    [view sendSubviewToBack:IV_Left];
    [view addSubview:IV_Left];

    
    
    UIImageView *IV_Right = [[UIImageView alloc] initWithFrame:rightFrame];
    IV_Right.image = [self ResizingImg:[UIImage imageNamed:@"paopaoTopRight"]];
    [view sendSubviewToBack:IV_Right];

    [view addSubview:IV_Right];
    
}



-(UIImage *)ResizingImg:(UIImage *)image {

    // 设置端盖的值
    CGFloat top =  image.size.height * 0.5;
    CGFloat left =  image.size.width * 0.5;
    CGFloat bottom = image.size.height * 0.5;
    CGFloat right =  image.size.width * 0.5;
    
    // 设置端盖的值
    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
    // 设置拉伸的模式
    UIImageResizingMode mode = UIImageResizingModeStretch;
    
    // 拉伸图片
    UIImage *newImage = [ image resizableImageWithCapInsets:edgeInsets resizingMode:mode];

    return newImage;
    
}


-(void)viewSetStyleShadowWithView:(UIView *)view{

    view.layer.shadowOpacity=0.3;
    view.layer.shadowColor = [UIColor grayColor].CGColor;
    [view.layer setShadowPath:[[UIBezierPath bezierPathWithRect:view.bounds] CGPath]];
    
}


@end
