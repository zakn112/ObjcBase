//
//  Bird.h
//  ObjcBase
//
//  Created by Андрей Закусов on 29.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;

- (instancetype)initWithName:(NSString *)name whithAge: (NSNumber *)agel;


@end

NS_ASSUME_NONNULL_END
