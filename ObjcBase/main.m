//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

double average(int a, int b, int c);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int first;
        int second;
        int third;
        
        printf("First number: ");
        scanf("%d", &first);
        printf("Second number: ");
        scanf("%d", &second);
        
        NSLog(@"First number: %d, Second number: %d, summ: %d", first, second, first + second);
        
        printf("Third number: ");
        scanf("%d", &third);
        
        NSLog(@"First number: %d, Second number: %d, Third number: %d, average: %f", first, second, third, average(first, second, third));

    }
    return 0;
}

double average(int a, int b, int c){
    
    return ((double)a + (double)b + (double)c)/3;
}
