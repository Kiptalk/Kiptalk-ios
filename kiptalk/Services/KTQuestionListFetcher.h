//
//  KTQuestionListFetcher.h
//  kiptalk
//
//  Created by Chia, Yi-Wei on 11/5/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KTQuestionListItem.h"

@interface KTQuestionListFetcher : NSObject
- (void)fetch;
- (KTQuestionListItem*)listItemForIndex:(NSUInteger)index;
@end
