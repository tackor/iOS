//
//  UIColor+TKExtension.m
//  ChuShou
//
//  Created by 时空矩人 on 2017/3/10.
//  Copyright © 2017年 时空矩人. All rights reserved.
//

#import "UIColor+TKExtension.h"

@implementation UIColor (TKExtension)

+ (UIColor *) colorWithHex:(int)s {
    
    UIColor *color = [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s & 0xFF00) >>8))/255.0 blue:((s & 0xFF))/255.0 alpha:1.0];
    
    return color;
}

+ (UIColor *) colorWithHexAlpha:(long)s {
    
    UIColor *color = [UIColor colorWithRed:(((s & 0xFF000000) >> 32))/255.0 green:(((s & 0xFF0000) >>16))/255.0 blue:((s & 0xFF00 >> 8))/255.0 alpha:(((s & 0xFF)))/255.0];
    
    return color;
}

@end
