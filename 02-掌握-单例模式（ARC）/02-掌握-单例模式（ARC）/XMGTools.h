//
//  XMGTools.h
//  02-掌握-单例模式（ARC）
//
//  Created by xmg on 15/12/22.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGTools : NSObject<NSCopying,NSMutableCopying>

//提供类方法
/*
 01 表明身份,表明这是一个单例
 02 注意点:命名规范:share+类名|default+类名|share|类名
 */

+(instancetype)shareTools;
@end
