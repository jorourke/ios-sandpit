//
//  main.m
//  TimeAfterTime
//
//  Created by James ORourke on 19/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object now lives at %p\n", now);
        NSLog(@"The date is %@\n", now);
        double secondsSince1970 = [now timeIntervalSince1970];
        NSLog(@"Seconds since 1970 %f\n", secondsSince1970);
        
        NSDate *futureDate = [now dateByAddingTimeInterval:100000];
        
        NSLog(@"Future date is %@\n", futureDate);
 
        NSCalendar *cal = [NSCalendar currentCalendar];
        
        NSLog(@"Current calendar is %@", [cal calendarIdentifier]);
        
//        NSHost *host = [NSHost currentHost];
//        NSLog(@"This host is %@\n", [host localizedName]);
//        NSLog(@"This host is %@\n", [host name]);
//        NSLog(@"This host is %@\n", [host addresses]);
        
        unsigned long dayOfMonth = [cal ordinalityOfUnit:NSDayCalendarUnit
                                                  inUnit:NSMonthCalendarUnit
                                                 forDate:futureDate];
        
        NSLog(@"Day of month for future date is %lu", dayOfMonth);
        
        NSDateComponents *dc = [[NSDateComponents alloc] init];
        
        [dc setMonth:6];
        [dc setYear:1974];
        [dc setDay:19];

        NSLog(@"dc as string %@\n", dc);
        
        NSCalendar *cal1 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [cal1 dateFromComponents:dc];

        double secondsSinceBirth = [[NSDate date] timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I've been alive for %f seconds\n", secondsSinceBirth);
        
   
    }
    return 0;
}

