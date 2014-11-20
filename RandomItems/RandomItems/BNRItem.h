//
//  BNRItem.h
//  RandomItems
//
//  Created by James ORourke on 24/09/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{

}


@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;
@property (nonatomic) int valueInDollars;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic, readonly, strong) NSDate *dateCreated;


// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype) initWithItemName:(NSString *) name;


@end