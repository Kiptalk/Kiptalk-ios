//
//  KiptalkService.m
//  kiptalk
//
//  Created by Armuro on 10/29/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTWebService.h"

@implementation KTWebService

- (void) submitQuestion: (KTQuestion *) question{
    
    //get userid and session id of the user for posting the question
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *userID = [defaults objectForKey:@"userID"];
    NSString *sessionID = [defaults objectForKey:@"sessionID"];
    
    //post question to URL
    
    
    //the response will contain the question id
    
}

- (void) submitExpression: (KTExpression *) expression withQuestion: (KTQuestion *) question{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *userID = [defaults objectForKey:@"userID"];
    NSString *sessionID = [defaults objectForKey:@"sessionID"];
    
    //post data to URL
    
    
    //the response will contain the expression id
    
}

- (void) submitComment: (KTComment *) comment {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *userID = [defaults objectForKey:@"userID"];
    NSString *sessionID = [defaults objectForKey:@"sessionID"];
    
    //post data to URL
    
    
    //the response will contain the comment id
    
}



@end
