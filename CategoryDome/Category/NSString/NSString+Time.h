//
//  NSString+Time.h
//  CategoryDome
//
//  Created by 陈东芝 on 16/8/23.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Time)

/**
 *  当前时间格式 YYYY-MM-dd
 *
 *  @return YYYY-MM-dd
 */
+(NSString *)stringGetPrensentTime;

/**
 *  当前时间格式 YYYYMMddHHmmss
 *
 *  @return YYYYMMddHHmmss
 */
+(NSString *)stringGetPrensentTimeComplete;

/**
 *  当前时间格式 YYYY-MM-dd HH:mm:ss
 *
 *  @return YYYY-MM-dd HH:mm:ss
 */
+(NSString *)stringGetPrensentTimeComplete2;

/**
 *  时间YYYYMMddHHmmss转换YYYY-MM-dd HH:mm:ss
 *
 *  @param date
 *
 *  @return YYYY-MM-dd HH:mm:ss
 */
+(NSString *)stringChangeTimeWithDate:(NSString *)date;

/**
 *  个位数加0
 *
 *  @param count
 *
 *  @return
 */
+(NSString *)stringJudgeCount:(int)count;


@end
