//
//  Person.m
//  oc中结构体
//
//  Created by basic_10 on 15/12/13.
//  Copyright © 2015年 heima. All rights reserved.
/*
 单利实现的步骤：
 1.定义一个静态成员，在内存中只有一份
 2.重写allocWithZone：
 3.从写copyWithZone：
 4.提供 一个全局访问的方法，以shareXXXXX
 */

#import "Person.h"

// 在全局只存在一份
static Person *_instance;

@implementation Person

// 调用alloc方法的时候会调用allocWithZone;
+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
        system("say 哈哈哈，我真只来了一次啊，你个王八蛋");
    });
    return  _instance;
}

// 调用copy方法的时候会调用copyWithZone：
-(id)copyWithZone:(NSZone *)zone
{
    
    return _instance;
}

+(instancetype)sharePerson

{
   
    // dis
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[Person alloc] init];
    });
    
    return _instance;
}


// 如果是MRC模式
-(id)retain{
    
    return self; // 或者返回_instance
    
}

-(NSUInteger)retainCount{
    
    return NSUIntegerMax;
}

// oneway -> 线程之间通信的标示
-(oneway void)release{
    
    
}
-(id)autorelease{
    
    return self;
}


@end
