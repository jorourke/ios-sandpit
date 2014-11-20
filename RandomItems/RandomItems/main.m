//
//  main.m
//  RandomItems
//
//  Created by James ORourke on 24/09/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items addObject:@"Four"];
        [items insertObject:@"Zero" atIndex:0];
        
        
        for (int i = 0; i < [items count]; i++) {
            
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        NSLog(@"------------------------------------");
        for (NSString *item in items) {
            
            NSLog(@"%@", item);
        }
        
        BNRItem *iitem = [[BNRItem alloc] init];
        
        [iitem setItemName:@"Red Sofa"];
        NSLog(@"%@, %@, %@, %d", [iitem itemName], [iitem dateCreated], [iitem serialNumber], [iitem valueInDollars]);
        
        NSArray *arr1 = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
        for (NSString *i in arr1) {
            NSLog(@"%@", i);
            
        }
        for (int m = 0; m <= 9; m++) {
            NSLog(@"%@", arr1[m]);
        }
        NSMutableArray *mutArr = [[NSMutableArray alloc] init];
//        
//        for (int n = 0; n <= 10; n++) {
//            BNRItem *it = [[BNRItem alloc] init];
//            [it setItemName:[NSString stringWithFormat:@"%@ %d", @"Item Number: ",  n]];
//            [mutArr addObject:it];
//           
//        }
        BNRItem *it = [[BNRItem alloc] init];
        [it setItemName:@"Backpack"];
        BNRItem *it2 = [[BNRItem alloc] init];
        [it2 setItemName:@"Socks"];
        
        [it setContainedItem:it2];
        
        [mutArr addObject:it];
        [mutArr addObject:it2];
        
        it = nil;
        it2 = nil;
        
        for (BNRItem *item in mutArr) {
            NSLog(@"%@", item);
        }

        
        NSLog(@"About to set items to nil....");
        mutArr = nil;
        NSLog(@"Finished setting to nil...");
        
        
        
    }
    return 0;
}
