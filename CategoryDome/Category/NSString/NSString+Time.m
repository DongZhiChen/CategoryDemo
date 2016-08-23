//
//  NSString+Time.m
//  CategoryDome
//
//  Created by 陈东芝 on 16/8/23.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "NSString+Time.h"

@implementation NSString (Time)


#pragma mark - 个位补0 －

+(NSString *)stringJudgeCount:(int)Number{
    
    
    if(Number < 10){
        
        return [NSString stringWithFormat:@"0%d",Number];
        
    }else{
        
        return [NSString stringWithFormat:@"%d",Number];
    }
    
    
}




#pragma mark - Time -

+(NSString *)stringGetPrensentTime{
    
    NSDate *currentDate            = [NSDate date];//获取当前时间，日期
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd"];
    NSString *dateString           = [dateFormatter stringFromDate:currentDate];

    return dateString;
    
}


+(NSString *)stringGetPrensentTimeComplete2{
    
    NSDate *currentDate            = [NSDate date];//获取当前时间，日期
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSString *dateString           = [dateFormatter stringFromDate:currentDate];
    
    return dateString;
    
}


+(NSString *)stringGetPrensentTimeComplete{
    
    NSDate *currentDate            = [NSDate date];//获取当前时间，日期
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYYMMddHHmmss"];
    NSString *dateString           = [dateFormatter stringFromDate:currentDate];
    
    return dateString;
    
}


+(NSString *)stringChangeTimeWithDate:(NSString *)date{
    
    NSString *year  = [date substringWithRange:NSMakeRange(0, 4)];
    NSString *month = [date substringWithRange:NSMakeRange(4, 2)];
    NSString *day   = [date substringWithRange:NSMakeRange(6, 2)];
    NSString *hour  = [date substringWithRange:NSMakeRange(8, 2)];
    NSString *Min   = [date substringWithRange:NSMakeRange(10, 2)];
    NSString *sec   = [date substringWithRange:NSMakeRange(12, 2)];
    
    return [NSString stringWithFormat:@"%@-%@-%@ %@:%@:%@",year,month,day,hour,Min,sec];
    
    
}


@end
