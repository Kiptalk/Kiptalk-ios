//
//  KTQuestionCell.h
//  kiptalk
//
//  Created by Chia, Yi-Wei on 11/5/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KTQuestionListItem.h"

#define question_list_item_cell_reuse_id @"KTQuestionListItemCell"
#define question_list_item_cell_height 120.0f

@interface KTQuestionListItemCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UIImageView * profileImg;
@property (nonatomic, strong) IBOutlet UILabel * answerCountsLabel;
@property (nonatomic, strong) IBOutlet UILabel * userNameLabel;
@property (nonatomic, strong) IBOutlet UILabel * contentLabel;
@property (nonatomic, strong) IBOutlet UILabel * languageLabel;
@property (nonatomic, strong) IBOutlet UILabel * timeLabel;
@property (nonatomic, strong) KTQuestionListItem * questionListItem;
//- (id)initWithQuestionListItem:(KTQuestionListItem*)qlistItem;
@end
