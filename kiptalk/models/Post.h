//
//  Post.h
//  kiptalk
//
//  Created by Armuro on 10/26/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (strong, nonatomic) NSString *postID;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSDate *createdTime;
@property (strong, nonatomic) NSDate *lastModifiedTime;


@end
