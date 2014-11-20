//
//  main.c
//  Heap
//
//  Created by James ORourke on 17/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>



int main(int argc, const char * argv[])
{

    float *startOfBuffer;
    
    startOfBuffer = malloc(1000 * sizeof(float));
    
    printf("start of buffer %p\n", startOfBuffer);
    
    free(startOfBuffer);
    
    startOfBuffer = NULL;
    
    return 0;
}

