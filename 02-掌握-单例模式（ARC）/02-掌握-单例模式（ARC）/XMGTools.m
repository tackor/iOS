//
//  XMGTools.m
//  02-掌握-单例模式（ARC）
//
//  Created by xmg on 15/12/22.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XMGTools.h"

@implementation XMGTools

static XMGTools *_instance;

//重写该方法,保证永远都只分配一次空间
+(instancetype)allocWithZone:(struct _NSZone *)zone
{
//    @synchronized(self) {
//        if (_instance == nil) {
//            _instance = [super allocWithZone:zone];
//        }
//    }
    
    //只会执行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    
    return _instance;
}

+(instancetype)shareTools
{
    return [[self alloc] init];
}

-(id)copyWithZone:(NSZone *)zone
{
    return _instance;
}

-(id)mutableCopyWithZone:(NSZone *)zone
{
    return _instance;
}
@end
