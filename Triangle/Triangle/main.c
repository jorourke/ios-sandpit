//
//  main.c
//  Triangle
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>

static float triangleTotal = 180.f;

float remainingAngle(float angleOne, float angleTwo) {
    
    return (angleOne + angleTwo) < triangleTotal ? (triangleTotal - (angleOne + angleTwo)): -1;
    
}

int main(int argc, const char * argv[])
{

    float angleA = 14.0;
    float angleB = 30.0;
    float angleC = remainingAngle(angleA, angleB);
    if (angleC > 0) {
        printf("Angle 1: %f, angle 2: %f - that means angle 3: %f\n", angleA, angleB, angleC);
        return 0;
    } else {
        return -1;
    }
 }

