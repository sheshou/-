//
//  main.m
//  单利设计模式
//
//  Created by basic_10 on 15/12/13.
//  Copyright © 2015年 heima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *p4 = [Person sharePerson];
        Person *p1 = [Person new];
        Person *p2 = [[Person alloc]init];
        Person *p3 = [p2 copy];
        
        NSLog(@"p1 = %p, p2 = %p, p3 = %p, p4= %p",p1, p2,p3, p4);
    
    }
    return 0;
}
