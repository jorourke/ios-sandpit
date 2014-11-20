//
//  main.c
//  BMICalc
//
//  Created by James ORourke on 17/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>



typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

int main(int argc, const char * argv[])
{

    // insert code here...
    Person james;
    
    james.heightInMeters = 1.82;
    james.weightInKilos = 68;
    printf("James is %.02f meters tall and weights %d kilos\n", james.heightInMeters, james.weightInKilos);
    return 0;
}

