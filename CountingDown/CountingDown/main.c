//
//  main.c
//  CountingDown
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for (int i = 99; i >= 0; i -= 3) {
        
        printf("i = %d\n", i);
        if (i% 5== 0) {
            printf("Found one\n");
        }
    }
    return 0;
   
}

