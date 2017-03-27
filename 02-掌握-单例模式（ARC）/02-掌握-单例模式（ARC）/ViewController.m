//
//  ViewController.m
//  02-掌握-单例模式（ARC）
//
//  Created by xmg on 15/12/22.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "ViewController.h"
#import "XMGTools.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    XMGTools *t1 = [[XMGTools alloc]init];
    XMGTools *t2 = [[XMGTools alloc]init];
    
    XMGTools *t3 = [XMGTools new];
    XMGTools *t4 = [XMGTools shareTools];
    XMGTools *t5 = [t4 copy];
    
    NSLog(@"%@---%@---%@---%@---%@",t1,t2,t3,t4,t5);
    
//    [UIApplication sharedApplication];
//    [NSFileManager defaultManager];
//    [abc ]
}
@end
