//
//  main.c
//  Turkey
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float weight;
    
    weight = 14.2;
    
    printf("The turkey weight is %.02f.\n", weight);
    
    float cookingTime;
    
    cookingTime = 15.0 + 15 * weight;
    
    printf("Cook it for %.02f minutes.\n", cookingTime);
    
    return 0;
}

