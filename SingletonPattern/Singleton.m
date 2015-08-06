//
//  Singleton.m
//  SingletonPattern
//
//  Created by YouXianMing on 15/8/6.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "Singleton.h"

#define  STR_SINGLETON  @"STR_SINGLETON"

static Singleton *_sharedSingleton = nil;

@implementation Singleton

+ (Singleton *)sharedInstance {

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _sharedSingleton = (Singleton *)STR_SINGLETON;
        _sharedSingleton = [[Singleton alloc] init];
    });

    return _sharedSingleton;
}

- (instancetype)init {
    
    NSString *string = (NSString *)_sharedSingleton;
    if ([string isKindOfClass:[NSString class]] && [string isEqualToString:STR_SINGLETON]) {
        
        self = [super init];
        if (self) {
            
        }
        
        return self;
        
    } else {
    
        return nil;
    }
}

@end
