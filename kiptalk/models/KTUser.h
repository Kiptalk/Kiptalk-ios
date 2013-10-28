//
//  User.h
//  kiptalk
//
//  Created by Armuro on 10/16/13.
//  Copyright (c) 2013 Kiptalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KTLanguage.h"
#import "KTExpression.h"
#import "KTQuestion.h"
#import "KTComment.h"


@interface KTUser : NSObject


//stores the unique id of the user
@property (strong, nonatomic) NSString *userID;

//stores the first name of the user
@property (strong, nonatomic) NSString *lastName;

//stores the last name of the user
@property (strong, nonatomic) NSString *middletName;

//stores the middle name of the user
@property (strong, nonatomic) NSString *firstName;

//stores the screen name of the user
@property (strong, nonatomic) NSString *screenName;

//stores the url to the profile image of the user
@property (strong, nonatomic) NSString *profileImageUrl;

//stores the url of the user
@property (strong, nonatomic) NSString *url;

//stores the age of the user
@property (nonatomic) NSUInteger age;


/* Language and Areas*/

//stores an array of the native language(s) of the user
@property (strong, nonatomic) NSMutableArray *nativeLanguages;

//stores an array of the language(s) the user specify that they can answer
@property (strong, nonatomic) NSMutableArray *LanguagesToAnswer;

//stores an array of the language(s) the user is learning
@property (strong, nonatomic) NSMutableArray *targetLanguages;

//stores the country of origin of the user
@property (strong, nonatomic) NSString *countryOfOrigin;

//stores the city of origin of the user
@property (strong, nonatomic) NSString *cityOfOrigin;

//stores the current country where the user is living in
@property (strong, nonatomic) NSString *currentLivedInCountry;

//stores the current city there the user is living in
@property (strong, nonatomic) NSString *currentLivedInCity;

//stores the current country where the user is physically in
@property (strong, nonatomic) NSString *currentCountry;

//stores the current city there the user is physically in
@property (strong, nonatomic) NSString *currentCity;

//stores the latitude of the user
@property (nonatomic) double latitude;

//stores the longitude of the user
@property (nonatomic) double longitude;

//stores an array of the interests of topics that user will be subscribing to.
@property (strong, nonatomic) NSMutableArray *interests;



/*Social & Privacy */

//stores the user status
@property (strong, nonatomic) NSString *status;

//stores an array of the userids of whom the user is following
@property (strong, nonatomic) NSMutableArray *followings;

//stores an array of the userids of who follows the user
@property (strong, nonatomic) NSMutableArray *followers;

//stores the number of users the user is following
@property (nonatomic) NSUInteger numberOfFollowings;

//stores the number of the users that follow the user
@property (nonatomic) NSUInteger numberOfFollowers;

//stores the questions that the user have asked.
@property (strong, nonatomic) NSMutableDictionary *questions;

//stores the answers that the user has provided for questions
@property (strong, nonatomic) NSMutableDictionary *expressions;

//stores the answers that the user has collected from questions.
@property (strong, nonatomic) NSMutableDictionary *collectedExpressions;

//stores the karma value of the user
@property (readonly, nonatomic) int karma;

//stores the credit value of the user
@property (readonly, nonatomic) int credit;

//stores the rank of the user based on his/her karma
@property (readonly, nonatomic) NSUInteger userKarmaRank;



/** Operation on Expressions **/

//user likes an expression
- (void) likeExpression:(KTExpression *) expression;

//user collects an expression
- (void) collectExpression:(KTExpression *)expression;

//user adds a comment to an expression
- (void) addCommentToExpression:(KTExpression *) expression withComment:(KTComment *) comment;

//user flags an expression
- (void) flagExpression: (KTExpression *) expression;



/** Operation on Questions **/


//user asks a question with urgency
-(void) addQuestion: (KTQuestion *) question;

//user answers a question
- (void) addExpression:(KTExpression *)expression toQuestion:(KTQuestion *) question;

//user follows a question
- (void) followQuestion:(KTQuestion *) question;




/** Social **/

//user follows a user
- (void) followUser: (KTUser *)user;

//user increases karma
- (void) increaseKarma: (NSUInteger) point;

//user decreases karma
- (void) decreaseKarma: (NSUInteger) point;

//user increases credit
- (void) increaseCredit: (NSUInteger) credit;

//user decreases credit
- (void) decreaseCredit: (NSUInteger) credit;
                                

/** Profile **/




@end
