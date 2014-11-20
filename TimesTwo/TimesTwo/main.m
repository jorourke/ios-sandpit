//
//  main.m
//  TimesTwo
//
//  Created by James ORourke on 20/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *currentTime = [NSDate date];
        NSLog(@"Current time's value is %p\n", currentTime);
        
        sleep(2);
        
        currentTime = [NSDate date];
        
        NSLog(@"Current time's value is %p\n", currentTime);
        
        NSString *msg = @"\u2661 New York";
        NSLog(@"%@\n", msg);
        
        NSLog(@"Length is %lu\n", (unsigned long)[msg length]);
        
        NSLog(@"%@\n", [msg uppercaseString]);
        
        NSString *filePath = @"/Users/james/Documents/workspace/fitbugg-ios-test/TimesTwo/test.txt";
        
        NSError *err = [[NSError alloc] init];
        
        NSString *test = [NSString stringWithContentsOfFile:filePath encoding:NSASCIIStringEncoding error: &err];

        NSLog(@"%@\n", [test uppercaseString]);
        
        NSString *source = @"abcdefghijklmnopqrstuvwxyz";
        
        NSRange result = [source rangeOfString:@"lmno" options: NSCaseInsensitiveSearch];
        
        NSString *substr = [source substringWithRange: result];
        
        NSLog(@"result of search start %lu, length %lu\n", (unsigned long)result.location, (unsigned long)result.length);
        NSLog(@"Substring: %@\n", substr);

    }
    return 0;
}

