//
//  Flock.h
//  ObjcBase
//
//  Created by Андрей Закусов on 29.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *birds;

- (instancetype)initWithName: (NSString *)name;
- (void)addBird: (Bird *) bird;
- (void)removeBird: (Bird *) bird;

@end

NS_ASSUME_NONNULL_END
