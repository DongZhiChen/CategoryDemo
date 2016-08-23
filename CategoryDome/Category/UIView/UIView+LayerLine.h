//
//  UIView+LayerLine.h
//  DXS
//
//  Created by ceing on 16/7/28.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

typedef NS_ENUM(NSInteger, LayerLineType) {
    
    LayerLineTypeTop = 1<<1,///顶部线条
    LayerLineTypeLeft = 1<<2,///左边线条
    LayerLineTypeBottom = 1<<3,///底部线条
    LayerLineTypeRight = 1<<4,///右边线条
    
};



@interface UIView (LayerLine)

/**
 *  边框位置
 */
@property (nonatomic,assign) LayerLineType layerLineType;

/**
 *  边框高度，针对左右两边
 */
@property (nonatomic, strong) NSString *layerHeight;


@end
