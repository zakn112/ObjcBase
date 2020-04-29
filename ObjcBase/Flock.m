//
//  Flock.m
//  ObjcBase
//
//  Created by Андрей Закусов on 29.04.2020.
//  Copyright © 2020 Андрей Закусов. All rights reserved.
//

#import "Flock.h"

@implementation Flock

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        
        _name = name;
        _birds = [NSMutableArray new];
    }
    return self;
}

- (void) addBird: (Bird *) bird {
    [bird retain];
    [bird release];
    
    [_birds addObject:bird];
    
}

- (void)removeBird: (Bird *) bird {
    [bird retain];
    [bird release];
    
    for (Bird *birdFlock in _birds) {
        if (birdFlock == bird) {
            [_birds removeObject:bird];
            [birdFlock release];
            break;
        }
    }
    
}

- (void)dealloc {
     NSLog(@"Dealloc Flock - %@", _name);
    for (Bird *birdFlock in _birds) {
        [birdFlock release];
    }
    //[_birds release];
    [_name release];
    
    [super dealloc];
}

@end
