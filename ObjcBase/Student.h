//
//  Student.h
//  ObjcBase
//
//  Created by Андрей Закусов on 26.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

- (instancetype)initWithName:(NSString *)name withSurname: (NSString *)surname;
-(void) setStudentAge: (int) age;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (readonly, nonatomic, strong) NSString *fullName;
@property (readonly, nonatomic, strong) NSNumber *age;


@end

NS_ASSUME_NONNULL_END
