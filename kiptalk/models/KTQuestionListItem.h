//
//  KTQuestionListItem.h
//  kiptalk
//
//  Created by Chia, Yi-Wei on 11/5/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KTQuestion.h"
#import "KTUser.h"

@interface KTQuestionListItem : NSObject
@property (nonatomic, strong) KTUser * user;
@property (nonatomic, strong) KTQuestion * question;
@end
