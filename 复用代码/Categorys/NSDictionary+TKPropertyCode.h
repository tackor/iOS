//
//  NSDictionary+TKPropertyCode.h
//  RuntimeDemo
//
//  Created by 时空矩人 on 2017/3/18.
//  Copyright © 2017年 时空矩人. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TKPropertyCode)

/**
 * 该方法用于根据.plist文件打印出里面的所以属性
 * 然后只需要将打印的字符串拷贝到对应的模型文件中即可, 快速创建模型,
 * 注意目的是为了便捷创建模型.
 * 
 */
- (void)propertyCode;

@end
