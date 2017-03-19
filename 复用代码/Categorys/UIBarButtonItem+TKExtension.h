//
//  UIBarButtonItem+TKExtension.h
//  ChuShou
//
//  Created by 时空矩人 on 2017/3/10.
//  Copyright © 2017年 时空矩人. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (TKExtension)

+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;


+ (instancetype)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage targer:(id)target action:(SEL)action;

@end
