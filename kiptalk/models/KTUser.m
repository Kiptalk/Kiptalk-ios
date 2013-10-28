//
//  User.m
//  kiptalk
//
//  Created by Armuro on 10/16/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTUser.h"

@implementation KTUser

/** Operation on Expressions **/

//user likes an expression
- (void) likeExpression:(KTExpression *) expression{
    
}

//user collects an expression
- (void) collectExpression:(KTExpression *)expression{
    
}

//user adds a comment to an expression
- (void) addCommentToExpression:(KTExpression *) expression withComment:(KTComment *) comment{
    
}

//user flags an expression
- (void) flagExpression: (KTExpression *) expression{
    
}



/** Operation on Questions **/


//user asks a question with urgency
-(void) askQuestion: (KTQuestion *) question withTargetLanguage: (KTLanguage *) targetLanguage withUrgency:(BOOL) isUrgent{
    
}

//user answers a question
- (void) answerQuestion:(KTQuestion *) question withExpression:(KTExpression *) expression{
    
}

//user follows a question
- (void) followQuestion:(KTQuestion *) question{
    
}




/** Social **/

//user follows a user
- (void) followUser: (KTUser *)user{
    
}

//user increases karma
- (void) increaseKarma: (NSUInteger) point{
    
}

//user decreases karma
- (void) decreaseKarma: (NSUInteger) point{
    
}

//user increases credit
- (void) increaseCredit: (NSUInteger) credit{
    
}

//user decreases credit
- (void) decreaseCredit: (NSUInteger) credit{
    
}

@end
