//
//  UILabel+SuitRect.h
//  DXS
//
//  Created by ceing on 16/8/11.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SuitRect)

/**
 *  根据文字设置UILabel
 *
 *  @param message 文字
 *  @param font    字体
 *  @param maxSize 最大size
 *  @param color   文字颜色
 *
 *  @return 返回LableSize
 */
-(CGSize)labelWithMessage:(NSString *)message AddFont:(UIFont *)font AddMaxSize:(CGSize)maxSize AddTextColor:(UIColor *)color;


@end
