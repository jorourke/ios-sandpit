//
//  FBQuizViewController.m
//  Quiz
//
//  Created by James ORourke on 16/09/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import "FBQuizViewController.h"

@interface FBQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation FBQuizViewController
- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
    
}

- (instancetype) initWithNibName:(NSString *) nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"
                           ];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"
                         ];
    }
    return self;
}


@end
