//
//  Car.h
//  ObjcBase
//
//  Created by Андрей Закусов on 06.05.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject <NSCoding>

@property (nonatomic, strong) NSString *brand;
@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *price;

@end

NS_ASSUME_NONNULL_END
