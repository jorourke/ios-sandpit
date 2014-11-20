//
//  BNRPerson.m
//  BMITime
//
//  Created by James ORourke on 21/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float) heightInMeters
{
    return _heightInMeters;
}
- (void) setHeighInMeters: (float) h
{
    _heightInMeters = h;
}
- (int) weightInKilos
{
    return _weightInKilos;
    
}
- (void) setWeightInKilos: (float) w
{
    _weightInKilos = w;
}

- (float) bodyMassIndex
{
    return _weightInKilos / (_heightInMeters * _weightInKilos);
}
@end
