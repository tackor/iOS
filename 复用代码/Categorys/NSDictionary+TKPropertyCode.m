//
//  NSDictionary+TKPropertyCode.m
//  RuntimeDemo
//
//  Created by 时空矩人 on 2017/3/18.
//  Copyright © 2017年 时空矩人. All rights reserved.
//

#import "NSDictionary+TKPropertyCode.h"

@implementation NSDictionary (TKPropertyCode)

-(void)propertyCode {
    
    NSMutableString *codes = [NSMutableString string];
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        NSString *code;
        
        if ([obj isKindOfClass:NSClassFromString(@"_NSCFBoolean")]) { // NSNumber
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) NSInteger %@", key];
        } else if ([obj isKindOfClass:[NSString class]]) {  // NSString
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSString %@", key];
        } else if ([obj isKindOfClass:[NSArray class]]) { // NSArray
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSArray %@", key];
        } else if ([obj isKindOfClass:[NSDictionary class]]) { // NSDictionary
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSDictionary %@", key];
        } else if ([obj isKindOfClass:[NSNumber class]]) { // BOOL
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) BOOL %@", key];
        }
        
        [codes appendFormat:@"\n%@\n", code];
        
    }];
    
    NSLog(@"%@", codes);
}

@end
