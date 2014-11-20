//
//  main.c
//  Addresses
//
//  Created by James ORourke on 17/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 32;
    
    printf("The address of i is %p\n", &i);
    
    printf("This function starts at %p\n", main);
    
    int j = 1;
    
    int *addressOfJ = &j;
    
    printf("j stores it's value at %p\n", addressOfJ);
    
    i = 17;
    int *addressOfI = &i;
    
    printf("i stores it's value at %p\n", addressOfI);
    
    *addressOfI = 43;
    
    printf("i is now %d\n", *addressOfI);
    printf("i is now %d\n", i);
    
    printf("Size of integer %zu\n", sizeof(i));
    printf("Size of pointer %zu\n", sizeof(addressOfI));

    
    return 0;

}

