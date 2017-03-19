//
//  UIView+TKExtension.h
//  ChuShou
//
//  Created by 时空矩人 on 2017/3/10.
//  Copyright © 2017年 时空矩人. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TKExtension)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

/** 从xib中创建一个控件 */
+ (instancetype)viewFromXib;

@end
