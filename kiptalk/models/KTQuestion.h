//
//  Question.h
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTPost.h"
#import "KTExpression.h"
#import "KTLanguage.h"

@interface KTQuestion : KTPost

//the dictionay that stores the references of the expressions associated with the current question. Keys are the ids of the expressions, and the values are the object instance of the expressions
@property (strong, nonatomic) NSMutableDictionary *expressions;

//the reference of the user that asks the question 
@property (strong, nonatomic) NSString *userID;

//whether the current question is urgent
@property (nonatomic) BOOL *isUrgent;

//the number of the expression to the current quesiton
- (int) countExpression;

// add an expression to the expression array of the current question
- (void) addExpression: (KTExpression *) expression;

//remove a specified expression from the expression list of the current question
- (void) removeExpression: (KTExpression *) expression;

//add an audio file to a question
- (void) addAudio: (NSURL *) withPath;

//remove an audio file from a question
- (void) removeAudio: (NSURL *) withPath;

//add a speficied image to the current question
- (void) addImage:(UIImage *)image;

//remove a specified image from the current question
- (void) removeImage:(UIImage *)image;


@end
