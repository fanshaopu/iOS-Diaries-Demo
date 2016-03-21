//
//  Person.h
//  NSPredicateDemo
//
//  Created by yuanye on 16/3/21.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;

+ (id)personWithName:(NSString *)name
                 age:(NSNumber *)age;
@end
