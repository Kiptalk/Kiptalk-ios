//
//  KiptalkService.h
//  kiptalk
//
//  Created by Armuro on 10/29/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KTQuestion.h"
#import "KTExpression.h"
#import "KTComment.h"
#import "KTUser.h"

@interface KTWebService : NSObject


//submit a question with the question and user instance
- (void) submitQuestion: (KTQuestion *) question;

//user submits an expression
- (void) submitExpression: (KTExpression *) expression ToQuestion: (KTQuestion *) question;

//user submits a comment
- (void) submitComment: (KTComment *) comment;


//user follows a question
- (void) followQuestion:(KTQuestion *) question;


/** Social **/

//user social
- (void) followUser: (KTUser *) user;

//user increases karma
- (void) increaseUserKarma:(KTUser *) user withPoint: (NSUInteger) point;

//user decreases karma
- (void) decreaseUserKarma: (NSUInteger) point;

//user increases credit
- (void) increaseUserCredit: (NSUInteger) credit;

//user decreases credit
- (void) decreaseUserCredit: (NSUInteger) credit;


/** Operation on Expressions **/

//user likes an expression
- (void) likeExpression:(KTExpression *) expression;

//user collects an expression
- (void) collectExpression:(KTExpression *)expression;

//user adds a comment to an expression
- (void) addCommentToExpression:(KTExpression *) expression withComment:(KTComment *) comment;

//user flags an expression
- (void) flagExpression: (KTExpression *) expression;



@end
