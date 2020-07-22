//
//  Person.h
//  iOS9-MemoryManagement
//
//  Created by Paul Solt on 11/13/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@interface Person : NSObject

// TODO: Establish ownership for the car

// assign = weak
// assign is the default in MRC

// retain = strong
// strong is the default in ARC

@property (nonatomic, retain) Car *car;

- (instancetype)initWithCar:(Car *)car;

@end
