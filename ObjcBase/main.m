//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flock.h"

int calculate(NSString *method, int a, int b) {
    [method retain];
    [method release];
    
    if ([method isEqualToString:@"+"]) {
        return a + b;
    }
    else if ([method isEqualToString:@"-"]) {
        return a - b;
    }
    else if ([method isEqualToString:@"*"]) {
        return a * b;
    }
    else if ([method isEqualToString:@"/"]) {
        return a / b;
    }
    else if ([method isEqualToString:@"%"]) {
        return a % b;
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return a + b;
    
}

int sum(int a, int b) {
    return calculate(@"+", a, b);
}

int sub(int a, int b) {
    return calculate(@"-", a, b);
}

int mul(int a, int b) {
    return calculate(@"*", a, b);
}

int division(int a, int b) {
    return calculate(@"/", a, b);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *method = @"+";
        int res = calculate(method, 3, 4);
        [method release];
        
        NSLog(@"%i", res);
        
        //Стая птиц
        Flock *flock = [Flock new];
        [flock autorelease];
        [flock initWithName:@"Gflock"];
        
        Bird *bird1 = [Bird new];
        [bird1 autorelease];
        [bird1 initWithName:@"Gugu" whithAge:@"2"];
        
        Bird *bird2 = [Bird new];
        [bird2 autorelease];
        [bird2 initWithName:@"Gigi" whithAge:@"4"];
        
        Bird *bird3 = [Bird new];
        //[bird3 autorelease];
        [bird3 initWithName:@"Gaga" whithAge:@"6"];
        
        
        [flock addBird:bird1];
        [flock addBird:bird2];
        [flock addBird:bird3];
        
        [flock removeBird:bird3];//Вот на этой строке появляется ошибка, как будто объекта уже нет.
        
        [bird3 release];
                  
        
    }
    return 0;
}
