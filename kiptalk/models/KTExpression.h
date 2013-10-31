//
//  Expression.h
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTPost.h"
#import "KTComment.h"

@interface KTExpression : KTPost

//word limit, if any
@property (readonly, nonatomic) NSUInteger wordLimit;

//the reference of the question that the current expression is associted with
@property (strong, nonatomic) NSString *questionID;

//the reference of the user that post the expression
@property (strong, nonatomic) NSString *userID;

//the number of likes on the current expression
@property (nonatomic) int numOfLike;

//the number of times the current expression is collected
@property (nonatomic) int numOfCollected;

//the number of comment(s) associated with the current expression
@property (nonatomic) int numOfComment;

//the dictionay that stores the references of the comments associated with the current expression. Keys are the ids of the coments, and the values are the objects of the comments
@property (strong, nonatomic) NSMutableDictionary *comments;


//add an audio file to a question
- (void) addAudio: (NSURL *) withPath;

//add a comment to the current expression
- (void) addComment: (KTComment *) comment;



@end
