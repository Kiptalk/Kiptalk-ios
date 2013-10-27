//
//  User.h
//  kiptalk
//
//  Created by Armuro on 10/16/13.
//  Copyright (c) 2013 Kiptalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KTLanguage.h"

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

//stores an array of the non-native language(s) of the user
@property (strong, nonatomic) NSMutableArray *nonNativeLanguages;

//stores an array of the language(s) the user is learning
@property (strong, nonatomic) NSMutableArray *targetLanguages;

//stores an array of the native language(s) of the user
@property (strong, nonatomic) KTLanguage *primaryLanguage;

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



@end
