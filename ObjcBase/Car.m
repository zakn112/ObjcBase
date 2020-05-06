//
//  Car.m
//  ObjcBase
//
//  Created by Андрей Закусов on 06.05.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.brand = [aDecoder decodeObjectForKey:@"brand"];
        self.color = [aDecoder decodeObjectForKey:@"color"];
        self.price = [aDecoder decodeObjectForKey:@"price"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.brand forKey:@"brand"];
    [aCoder encodeObject:self.color forKey:@"color"];
    [aCoder encodeObject:self.price forKey:@"price"];
}

@end
