//
//  ViewController.m
//  NSPredicateDemo
//
//  Created by yuanye on 16/3/21.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *persons;
@property (nonatomic, strong) NSArray *array1;
@property (nonatomic, strong) NSArray *array2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self predicateComparation];
    
//    [self predicateRange];
    
//    [self predicateLogic];
    
//    [self predicateRelateToNSString];
    
//    [self predicateSomeSpecial];
    
    [self predicateExample];
}

#pragma mark - Method
/**
 *  比较运算符
 */
- (void)predicateComparation {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age >= 55"];
    [self logResultWithPredicate:predicate];
}

/**
 *  集合运算符
 */
- (void)predicateRange {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age BETWEEN {11, 55}"];
    
//    NSArray *between = @[@11, @55];
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age BETWEEN %@",between];
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name IN {'Seven', 'Eight', 'Nine'}"];
    
    [self logResultWithPredicate:predicate];
}

/**
 *  逻辑表达式
 */
- (void)predicateLogic {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = 'One' && age = 11"];
    [self logResultWithPredicate:predicate];
}

/**
 *  字符串间运算符
 */
- (void)predicateRelateToNSString {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS[cd] 'F'"];
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name LIKE[cd] 'T*'"];
    
    [self logResultWithPredicate:predicate];
}

/**
 *  %K : 字段占位符 (K必须是大写)
 *  %@ : 值占位符
 *  $VALUE的用法 : VALUE只是一个普通字符串，当做标识使用，可以任意替换，但要统一
 */
- (void)predicateSomeSpecial {
    NSString *nameStr = @"name";
    NSString *valueStr = @"Seven";
    NSPredicate *predicate0 = [NSPredicate predicateWithFormat:@"%K CONTAINS %@", nameStr, valueStr];
    [self logResultWithPredicate:predicate0];
    
    NSPredicate *pred1 = [NSPredicate predicateWithFormat:@"%K > $VALUE", @"age"];
    NSPredicate *predicate1 = [pred1 predicateWithSubstitutionVariables:@{@"VALUE" : @1}];
    [self logResultWithPredicate:predicate1];
}

/**
 *  运用实例
 */
- (void)predicateExample {
    
    // 取出self.array2中  self.array2 & self.array1都不包含的元素
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"NOT (SELF IN %@)", self.array1];
    NSLog(@"%@", [self.array2 filteredArrayUsingPredicate:predicate]);
    
    // 取出self.array1 & self.array2 都包含的元素
    predicate = [NSPredicate predicateWithFormat:@"SELF IN %@", self.array1];
    NSLog(@"%@", [self.array2 filteredArrayUsingPredicate:predicate]);
    
    // 取出self.array1中  self.array2 & self.array1都不包含的元素
    predicate = [NSPredicate predicateWithFormat:@"NOT (SELF IN %@)", self.array2];
    NSLog(@"%@", [self.array1 filteredArrayUsingPredicate:predicate]);
    
}

#pragma mark - Public
/**
 *  打印结果
 *
 *  @param predicate predicate 实例
 */
- (void)logResultWithPredicate:(NSPredicate *)predicate {
    NSArray *filterArray = [self.persons filteredArrayUsingPredicate:predicate];
    if (filterArray.count == 0) return;
    for (Person *person in filterArray) {
        NSLog(@"personName:%@ - personAge:%@", person.name, person.age);
    }
}

#pragma mark - Lazy
- (NSArray *)persons {
    if (!_persons) {
        _persons = @[
                    [Person personWithName:@"One" age:@11],
                    [Person personWithName:@"Two" age:@22],
                    [Person personWithName:@"Three" age:@33],
                    [Person personWithName:@"Four" age:@44],
                    [Person personWithName:@"Five" age:@55],
                    [Person personWithName:@"Six" age:@66],
                    [Person personWithName:@"Seven" age:@77],
                    [Person personWithName:@"Eight" age:@88],
                    [Person personWithName:@"Nine" age:@99]
                    ];
    }
    return _persons;
}

- (NSArray *)array1 {
    if (!_array1) {
        _array1 = @[@"ab", @"abc", @1];
    }
    return _array1;
}

- (NSArray *)array2 {
    if (!_array2) {
        _array2 = @[@"a", @"ab", @"abc", @"abcd"];
    }
    return _array2;
}

@end
