//
//  main.m
//  DateList
//
//  Created by James ORourke on 21/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *date = [NSDate date];
        NSDate *tomorrow = [date dateByAddingTimeInterval:24*3600];
        NSDate *yesterday = [date dateByAddingTimeInterval:-24*3600];

        NSArray *datelist = @[date, tomorrow, yesterday];
        NSLog(@"%@\n", datelist);
        
        NSLog(@"%@\n", datelist[0]);
        
        NSLog(@"There are %lu dates\n", [datelist count]);
        
        for (NSDate *d in datelist) {
            NSLog(@"date %@\n", d);
        }
        
        NSMutableArray *datelistm = [NSMutableArray array];
        
        [datelistm addObject:date];
        [datelistm addObject:tomorrow];
        [datelistm addObject:yesterday];
        
        [datelistm removeObjectAtIndex:0];
        
        NSLog(@"%@\n", datelistm);
         
        
        
        
    }
    return 0;
}

