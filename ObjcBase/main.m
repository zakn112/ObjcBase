//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

int calculate(NSString *method, int a, int b) {
    
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


BOOL isEnglishChar(NSString *ch){
    
    NSRange range = [@"qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM" rangeOfString:ch];
    if (range.length == 0) {
        return NO;
    }else{
        return YES;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *ch = @"П";
        
        if (isEnglishChar(ch)) {
            NSLog(@"Символ %@ входит в английский алфавит\n", ch);
        }else{
            NSLog(@"Символ %@ не входит в английский алфавит\n", ch);
        }
        
        int a = 10;
        int b = 2;
        
        NSLog(@"%i + %i = %i\n", a, b, sum(a, b));
        NSLog(@"%i - %i = %i\n", a, b, sub(a, b));
        NSLog(@"%i * %i = %i\n", a, b, mul(a, b));
        NSLog(@"%i / %i = %i\n", a, b, division(a, b));
        
    }
    return 0;
}
