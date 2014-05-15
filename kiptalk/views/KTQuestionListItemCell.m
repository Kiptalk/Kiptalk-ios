//
//  KTQuestionCell.m
//  kiptalk
//
//  Created by Chia, Yi-Wei on 11/5/13.
//  Copyright (c) 2013 Armuro. All rights reserved.
//

#import "KTQuestionListItemCell.h"
#import "KTStrings.h"

#define horizontal_margin 20.0f
#define vertical_mergin 20.0f
#define left_region_width 100.0f

@interface KTQuestionListItemCell()
@end

@implementation KTQuestionListItemCell

/*- (id)initWithQuestionListItem:(KTQuestionListItem *)qlistItem {
    self = [super init];
    if (self) {
        _questionListItem = qlistItem;
    }
    return self;
}*/

/*- (void)layoutSubviews {
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat finalCellHeight = question_list_item_cell_height - vertical_mergin*2;
    CGFloat containerWidth = screenWidth - horizontal_margin*2;
    UIView * container = [[UIView alloc] initWithFrame:CGRectMake(horizontal_margin, vertical_mergin, containerWidth, finalCellHeight)];
    
    UIView * leftRegionContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, left_region_width, finalCellHeight)];
    [container addSubview:leftRegionContainer];
    
    UIImageView * profileView;
    UILabel * answerCountLabel;
    UILabel * answerTitleLabel;

    UIImage * profileImage = [UIImage imageNamed:@"profilepic.jpg"];
    profileView = [[UIImageView alloc] initWithImage:profileImage];
    [leftRegionContainer addSubview:profileView];
    answerCountLabel = [[UILabel alloc] init];
    answerCountLabel.text = @"3";
    [answerCountLabel sizeToFit];
    [leftRegionContainer addSubview:answerCountLabel];
    answerTitleLabel = [[UILabel alloc] init];
    answerTitleLabel.text = str_following_multiple_answer_title;
    [answerTitleLabel sizeToFit];
    [leftRegionContainer addSubview:answerTitleLabel];
    
    
    UIView * rightRegionContainer = [[UIView alloc] initWithFrame:CGRectMake(left_region_width, 0, containerWidth - left_region_width, finalCellHeight)];
    [container addSubview:rightRegionContainer];
    UILabel * userNameTitleLabel;
    UIImageView * clockImageView;
    UILabel * timeLabel;
    UILabel * questionTextView;
    UILabel * tagTextView;
    UILabel * languageTagView;
    userNameTitleLabel = [[UILabel alloc] init];
    userNameTitleLabel.text = @"Yi-Wei Chia";
    [userNameTitleLabel sizeToFit];
    [rightRegionContainer addSubview:userNameTitleLabel];
}*/

/*- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}*/

@end
