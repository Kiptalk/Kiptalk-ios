//
//  AskViewController.m
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTAskViewController.h"

@interface AskViewController ()

@property (weak, nonatomic) IBOutlet UITextView *questionContentTextView;


@end

@implementation AskViewController


- (void) updateUI{
    
    NSLog(@"update the UI");
}


//this function enlables camera and add the new taken photo to the questionContextTextView
- (IBAction)takePhoto{
    
    
    [self updateUI];
    
}


- (IBAction)recordAudio {

    [self updateUI];

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
