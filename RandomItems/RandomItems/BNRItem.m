//
//  BNRItem.m
//  RandomItems
//
//  Created by James ORourke on 24/09/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"


@implementation BNRItem


- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        // Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initialized object
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (void) setContainedItem:(BNRItem *)containedItem {
    
    _containedItem = containedItem;
    self.containedItem.container = self;
}


- (void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}
@end

