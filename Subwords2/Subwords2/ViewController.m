//
//  ViewController.m
//  Subwords2
//
//  Created by James ORourke on 30/10/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"array: %@", [self subwords]);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)subwords
{
    NSMutableArray *array = [NSMutableArray new];
    
    NSString *test = @"her";
    
    for (int i =0; i < test.length; i++)
    {
        
        for (int j =i+1; j < test.length; j++)
        {
            NSString *x = [test substringWithRange:NSMakeRange(i, j)];
            if (isAWord(x)) {
                [array addObject:x];
            }

 
        }
        
        
    }
    
    
    
    return array;
}

@end
