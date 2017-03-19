//
//  UIBarButtonItem+TKExtension.m
//  ChuShou
//
//  Created by 时空矩人 on 2017/3/10.
//  Copyright © 2017年 时空矩人. All rights reserved.
//

#import "UIBarButtonItem+TKExtension.h"

@implementation UIBarButtonItem (TKExtension)

+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:highImage forState:UIControlStateHighlighted];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [button sizeToFit];
    
    UIView *view = [[UIView alloc] initWithFrame:button.frame];
    [view addSubview:button];
    
    return [[self alloc] initWithCustomView:view];
}

+ (instancetype)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage targer:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selImage forState:UIControlStateSelected];
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn sizeToFit];
    
    UIView *view = [[UIView alloc] initWithFrame:btn.frame];
    [view addSubview:btn];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

@end
