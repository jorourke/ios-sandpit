//
//  main.c
//  Doubles
//
//  Created by James ORourke on 15/08/2014.
//  Copyright (c) 2014 Cloud Advantage. All rights reserved.
//

#include <stdio.h>
#include <objc/objc.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s programming as I could fit into %d days.\n", student, course, numDays);
}


int main(int argc, const char * argv[])
{

    congratulateStudent("Kate", "Objective-C",  5);
    congratulateStudent("James", "Python", 12);

}

