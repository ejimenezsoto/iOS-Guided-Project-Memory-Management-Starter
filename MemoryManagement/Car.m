//
//  Car.m
//  iOS9-MemoryManagement
//
//  Created by Paul Solt on 11/13/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "Car.h"
#import "LSILog.h"

@implementation Car

- (instancetype)initWithMake:(NSString *)make
{
    self = [super init];
    if (self) {
        NSLog(@"-[Car init]: %@", make);
        _make = [make copy];
    }
    return self;
}

// TODO: Implement autoreleased class car method
+ (instancetype)carWithMake:(NSString *)make
{
    Car *car = [[Car alloc] initWithMake:make];
    return [car autorelease];
    
    
}

- (void)dealloc
{
    NSLog(@"-[Car dealloc]: %@", self);
    // TODO: Implement dealloc with MRC
    
    // Release anything that the car is retaining
    [_make release];
    
    [super dealloc];
}

- (NSString *)description
{
    // TODO: Implement a standard autoreleasing method.
    NSString *description = [[NSString alloc] initWithFormat:@"Car: %@", self.make];
    return description;
}

@end
