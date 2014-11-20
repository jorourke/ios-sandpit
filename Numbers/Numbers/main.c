//
//  main.c
//  Numbers
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>


int main(int argc, const char * argv[])
{

    int x = 255;
    printf("x is %d.\n", x);
    printf("x in octal is %o.\n", x);
    printf("x in hexidecimal is %x.\n", x);

    
    long y = 255;
    printf("y is %ld.\n", y);
    printf("y in octal is %lo.\n", y);
    printf("y in hexidecimal is %lx.\n", y);
    
    printf("3 * 5 + 4 * 10 = %d\n", 3 * 5 + 4 * 10);
    
    printf("11 / 3 is %d, remainder %d\n", 11/3, 11%3);
    
    int k = -12312312;
    printf("Abs y is %d\n", abs(k));
    
    int f = 4;
    f++;
    printf("4++ is %d\n", f);
    //    printf("Hello, World!\n");
    
    float f1 = sin((double)1);
    
    printf("sing(1) = %.03f\n", f1);
    
    return 0;
}

