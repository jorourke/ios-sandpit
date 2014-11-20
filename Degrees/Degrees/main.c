//
//  main.c
//  Degrees
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float lastTemperature;

float fahrenheitFromCelcius(float celcius) {
    
    lastTemperature = celcius;
    float far = celcius * 1.8 + 32;
    printf("%.02f in celcius is %.02f fahrenheit\n", celcius, far);
    return far;
    
}

int main(int argc, const char * argv[])
{

    fahrenheitFromCelcius(10.f);
    
    printf("The last temperature converted was %.02f\n", lastTemperature);
    return EXIT_SUCCESS;
}

