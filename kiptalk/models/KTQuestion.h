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

//the number of the expression to the current quesiton
- (int) countExpression;

// add an expression to the expression array of the current question
- (void) addExpression: (KTExpression *) expression;

//remove a specified expression from the expression list of the current question
- (void) removeExpression: (KTExpression *) expression;

- (void) addAudio: (NSURL *) withPath;

- (void) removeAudio: (NSURL *) withPath;


//add an image to the current question after the quesdtion is submitted
- (void) addImage:(UIImage *)image;

- (void) removeImage:(UIImage *)image;



@end
