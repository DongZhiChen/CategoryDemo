//
//  UIView+lockAnimation.m
//  S.Message_NEW
//
//  Created by lee on 20/1/2015.
//  Copyright (c) 2015年 sanchun. All rights reserved.
//

#import "UIView+lockAnimation.h"

@implementation UIView (lockAnimation)

-(void)lockAnimationForView:(UIView*)view
{
    CALayer *viewLayer           = [view layer];
    CGPoint posLbl               = [viewLayer position];
    CGPoint y                    = CGPointMake(posLbl.x-10, posLbl.y);
    CGPoint x                    = CGPointMake(posLbl.x+10, posLbl.y);
    CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setTimingFunction:[CAMediaTimingFunction
                                  functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFromValue:[NSValue valueWithCGPoint:x]];
    [animation setToValue:[NSValue valueWithCGPoint:y]];
    [animation setAutoreverses:YES];
    [animation setDuration:0.08];
    [animation setRepeatCount:3];
    [viewLayer addAnimation:animation forKey:nil];
}


@end
