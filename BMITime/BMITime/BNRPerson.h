//
//  BNRPerson.h
//  BMITime
//
//  Created by James ORourke on 21/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    float _heightInMeters;
    float _weightInKilos;
}

- (float) heightInMeters;
- (void) setHeighInMeters: (float) h;
- (int) weightInKilos;
- (void) setWeightInKilos: (float) w;

- (float) bodyMassIndex;


@end
