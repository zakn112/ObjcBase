//
//  main.m
//  ObjcBase
//
//  Created by Андрей Закусов on 12.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "objc/runtime.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        
        unsigned int count;
        objc_property_t *properties = class_copyPropertyList([car class], &count);
        
        for (int i = 0; i < count; i++) {
            objc_property_t property = properties[i];
            const char *name = property_getName(property);
           
            printf("Введите %s\n", name);
            char strN[50] = {0};
            scanf("%s", strN);
            
            [car setValue:[NSString stringWithUTF8String:strN] forKey:[NSString stringWithUTF8String:name]];
            
        }
        free(properties);
        
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:car];
        NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/Car.txt"];
        [data writeToFile:path atomically:YES];

    }
    return 0;
}
