//
//  UIColor+ChangeColor.h
//  custom
//
//  Created by 陈东芝 on 16/7/31.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ChangeColor)

/**
 *  UIColor 转 RGB值
 *
 *  @param color
 *
 *  @return @［r,g,b］
 */
+(NSArray *)colorChnageColorToRGB:(UIColor *)color;


/**
 *  16进制转RGB
 *
 *  @param hexColor
 *
 *  @return
 */
+ (UIColor*) colorWithHex:(long)hexColor;
/**
 *  16进制转RGB
 *
 *  @param hexColor 16进制颜色
 *  @param opacity  透明度
 *
 *  @return
 */
+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;

/**
 *  16进制转RGB
 *
 *  @param stringToConvert 16进制color
 *
 *  @return 
 */
+(UIColor *) hexStringToColor: (NSString *) stringToConvert;



@end
