//
//  ViewController.m
//  MemoryManagement
//
//  Created by Paul Solt on 1/29/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Person.h"
#import "LSILog.h"

@interface ViewController ()

@property Car *car;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO: Disable ARC in settings
    
    NSLog(@"Hi");
    
    NSString *helloWorld = [[NSString alloc] initWithString:@"Hello World!"];
    
    NSLog(@"%@", helloWorld);
    
    [helloWorld release];
    
    // ------
    
    // +1
    NSMutableArray *myStrings = [[NSMutableArray alloc] init];
    
    for (NSInteger index = 0; index < 10; index++) {
        NSMutableString *string = [[NSMutableString alloc] initWithString:@"Some String here"];
        
        [myStrings addObject:string];
        
        [string release];
    }
    NSLog(@"%@", myStrings);
    
    // ----- AutoRelease
    
    Car *myCar = [Car carWithMake:@"Honda Civic"];
    
    NSLog(@"%@", myCar.make);
    
    self.car = myCar;
    [myCar retain];
    
    Person *enzo = [[Person alloc] initWithCar:myCar];
    
    Car *newCar = [[Car alloc] initWithMake:@"Subaru Forester"]; // 1

    enzo.car = newCar; // 2
    
    [newCar release]; // 1
    
    enzo.car = enzo.car; // 0
    
    NSLog(@"%@", enzo.car);
    
    [myCar release];
    
}


@end
