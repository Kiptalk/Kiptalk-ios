//
//  Question.h
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTPost.h"

@interface KTQuestion : KTPost

//the dictionay that stores the references of the expressions associated with the current question. Keys are the ids of the expressions, and the values are the object instance of the expressions
@property (strong, nonatomic) NSMutableDictionary *expressions;

@end
