//
//  main.c
//  BeerSong
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles) {
    
    if (numberOfBottles == 0) {
        
        printf("There are simply no more bottles of beer on the wall\n\n");
    } else {
        printf("%d bottles of beer on the wall, %d bottles of beer\n", numberOfBottles, numberOfBottles);

        int oneFewer ;
        oneFewer = numberOfBottles - 1;
        printf("Take one bottle down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
        
        singSongFor(oneFewer);
        printf("Put a bottle in the recycling, %d empty bottles in the bin\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{

    singSongFor(99);
    return 0;
}

