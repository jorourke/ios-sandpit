//
//  main.c
//  Coolness
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>
#import <readline/readline.h>


int main(int argc, const char * argv[])
{

    // insert code here...
    printf("Who is cool? ");
    
    const char *name = readline(NULL);
    
    printf("%s is cool\n", name);
    return 0;
}

