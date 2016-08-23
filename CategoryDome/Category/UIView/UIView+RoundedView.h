//
//  UIView+RoundedView.h
//  DXS
//
//  Created by ceing on 16/7/28.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger ,RoundedSeat) {

    RoundedSeatTopRight = 1 << 1,///右上圆角
    RoundedSeatTopLeft = 1 << 2,///左上圆角
    RoundedSeatBottomRight = 1 << 3,///右下圆角
    RoundedSeatBottomLeft = 1 << 4///左下圆角
    
};


@interface UIView (RoundedView)

/**
 *  视图设置圆角
 *
 *  @param roundedSeat 圆角位置
 *  @param size        圆角大小
 */
-(void)viewSetRoundedSeat:(RoundedSeat)roundedSeat WithSize:(CGSize)size;

@end
