//
//  KTQuestionListFetcher.m
//  kiptalk
//
//  Created by Chia, Yi-Wei on 11/5/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTQuestionListFetcher.h"

@interface KTQuestionListFetcher()
@property (nonatomic, strong) NSMutableArray * questionList;
@end

@implementation KTQuestionListFetcher

- (id)init {
    self = [super init];
    if (self) {
        _questionList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)fetch {
    
}

- (KTQuestionListItem *)listItemForIndex:(NSUInteger)index {
    return [[KTQuestionListItem alloc] init];
}
@end
