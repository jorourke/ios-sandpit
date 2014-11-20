//
//  main.m
//  BMITime
//
//  Created by James ORourke on 21/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPerson *james = [[BNRPerson alloc] init];
        [james setHeighInMeters:1.8f];
        [james setWeightInKilos:68.f];
        
        NSLog(@"Body weight index is %f\n", [james bodyMassIndex]);
        
    }
    return 0;
}

