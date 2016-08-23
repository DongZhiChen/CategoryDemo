//
//  UIButton+AddSelectedImg.m
//  YaoWeiNong
//
//  Created by ceing on 16/6/21.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import "UIButton+AddSelectedImg.h"

@implementation UIButton (AddSelectedImg)

-(void)buttonSetImageToRight{

    CGFloat labelWidth   = self.titleLabel.bounds.size.width;
    // 取出 imageView 的宽度
    CGFloat imageWidth   = self.imageView.bounds.size.width;
    imageWidth           = self.imageView.image ? imageWidth:0;
    // 设置 titleLabel 的内边距
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, 0, imageWidth);
    // 设置 imageView 的内边距
    self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth);
  
}


@end
