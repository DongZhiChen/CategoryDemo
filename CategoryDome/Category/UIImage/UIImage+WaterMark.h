//
//  UIImage+WaterMark.h
//  DXS
//
//  Created by ceing on 16/8/11.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WaterMark)


#pragma mark - 添加logo水印 -
/**
 *  添加logo水印
 *
 *  @param wartMark 水印图片
 *  @param frame    水印图片位置 frame.y 反过来
 *
 *  @return 合成图片
 */
-(UIImage *)imageAddWaterMarkImage:(UIImage *)wartMark WithWaterMarkRect:(CGRect)frame;

#pragma mark - 添加文字水印 -
/**
 *  文字水印
 *
 *  @param title 文字
 *  @param frame 位置 frame.y 反过来
 *
 *  @return 合成图片
 */
-(UIImage *)imageAddWaterMarkTitle:(NSString *)title addWaterMarkRect:(CGRect)frame;

/**
 *  文字水印
 *
 *  @param title 文字
 *  @param color 文字颜色
 *  @param font  文字字体
 *  @param frame 位置 frame.y 反过来
 *
 *  @return 合成图片
 */
-(UIImage *)imageAddWaterMarkTitle:(NSString *)title addTitleColor:(UIColor *)color addTitleFont:(UIFont *)font WithWaterMarkRect:(CGRect)frame;

#pragma mark - 屏幕截取 -

/**
 *  截图
 *
 *  @param size       截去图片大小
 *  @param screenView 截取的视图
 *
 *  @return 截图
 */
+ (UIImage *)imageCutOutScreenWithSize:(CGSize) size addScreenView:(UIView *)screenView;



@end


