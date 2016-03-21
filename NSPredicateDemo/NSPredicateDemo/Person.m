//
//  Person.m
//  NSPredicateDemo
//
//  Created by yuanye on 16/3/21.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (id)personWithName:(NSString *)name
                 age:(NSNumber *)age {
    Person *person = [[Person alloc] init];
    person.name = name;
    person.age = age;
    return person;
}

@end
