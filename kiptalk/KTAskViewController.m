//
//  AskViewController.m
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTAskViewController.h"
#import "KTUser.h"
#import "KTQuestion.h"
#import "KTWebService.h"

@interface KTAskViewController ()

@property (weak, nonatomic) IBOutlet UITextView *questionContentTextView;


@end

@implementation KTAskViewController


- (void) updateUI{
    
    NSLog(@"update the UI");
}


//this function enlables camera and add the new taken photo to the questionContextTextView
- (IBAction)takePhoto{
    
    
    [self updateUI];
    
}

- (IBAction)chooseImage:(UIButton *)sender {
    
    
    
    
    [self updateUI];
}

- (IBAction)recordAudio {

    [self updateUI];

}



- (IBAction)submitQuestion {
    
    //create a Question
    KTQuestion *question = [[KTQuestion alloc] init];
    
    //construction question
    
    //TODO: check whether text is empty
    question.content = self.questionContentTextView.text;
    
    //TODO: check media, image and add to the question
    
    
    
    //use KTWebService to submit the question
    KTWebService *service = [[KTWebService alloc] init];
    
    //submit question
    [service submitQuestion:question];
    
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
