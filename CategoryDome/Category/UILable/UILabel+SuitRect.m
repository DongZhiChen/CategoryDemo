//
//  UILabel+SuitRect.m
//  DXS
//
//  Created by ceing on 16/8/11.
//  Copyright © 2016年 tcm. All rights reserved.
//

#import "UILabel+SuitRect.h"

@implementation UILabel (SuitRect)



-(CGSize)labelWithMessage:(NSString *)message AddFont:(UIFont *)font AddMaxSize:(CGSize)maxSize AddTextColor:(UIColor *)color{
    
    NSDictionary *dictFont = @{NSFontAttributeName:font};

    CGSize size            = [message boundingRectWithSize:CGSizeMake(maxSize.width,maxSize.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:dictFont context:nil].size;

    self.numberOfLines     = 0;
    self.text              = message;
    self.font              = font;
    self.textColor         = color;

    CGRect frame           = self.frame;
    frame.size             = size;
    self.frame             = frame;

    return size;
    
}



@end
