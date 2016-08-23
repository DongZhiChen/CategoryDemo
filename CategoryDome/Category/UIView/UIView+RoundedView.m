//
//  UIView+RoundedView.m
//  DXS
//
//  Created by ceing on 16/7/28.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import "UIView+RoundedView.h"

@implementation UIView (RoundedView)


-(void)viewSetRoundedSeat:(RoundedSeat)roundedSeat WithSize:(CGSize)size{

    UIRectCorner corners    = 0;

    
    
    if(roundedSeat & RoundedSeatTopLeft){

    corners                 = UIRectCornerTopLeft;

    }

    
    if(roundedSeat & RoundedSeatBottomLeft){

        if(corners == 0){

    corners                 = UIRectCornerBottomLeft;

        }else{

    corners                 = corners | UIRectCornerBottomLeft;

        }


    }
    
    
    if(roundedSeat & RoundedSeatTopRight){

        if(corners == 0){

    corners                 = UIRectCornerTopRight;

        }else{

    corners                 = corners | UIRectCornerTopRight;

        }

    }
    
    
    if(roundedSeat & RoundedSeatBottomRight){

        if(corners == 0){

    corners                 = UIRectCornerBottomRight;

        }else{

    corners                 = corners | UIRectCornerBottomRight;

        }
    }

    
   
    /*--------绘制圆角---------------*/
    UIBezierPath *maskPath  = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:size];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame         = self.bounds;
    maskLayer.path          = maskPath.CGPath;
    self.layer.mask         = maskLayer;

}

@end
