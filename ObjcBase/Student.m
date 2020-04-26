//
//  Student.m
//  ObjcBase
//
//  Created by Андрей Закусов on 26.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName:(NSString *)name withSurname: (NSString *)surname
{
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
    }
    return self;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", _surname, _name];
}

-(void) setStudentAge: (int) age {
    _age = [NSNumber numberWithInt: age];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@, возраст %@", _surname, _name, _age];
}

@end
