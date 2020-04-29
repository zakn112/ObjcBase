//
//  Bird.m
//  ObjcBase
//
//  Created by Андрей Закусов on 29.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithName:(NSString *)name whithAge: (NSNumber *)age {
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        
        [age retain];
        [age release];
        
        _name = name;
        _age = age;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Bird - %@", _name);
    [_name release];
    [_age release];
    [super dealloc];
}
@end
