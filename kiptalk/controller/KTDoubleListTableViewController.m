//
//  KTDoubleListTableViewController.m
//  kiptalk
//
//  Created by Chia, Yi-Wei on 2/25/14.
//  Copyright (c) 2014 Armuro. All rights reserved.
//

#import "KTDoubleListTableViewController.h"
#import "KTQuestionListFetcher.h"
#import "KTQuestionListItem.h"
#import "KTQuestionListItemCell.h"
#import "KTStrings.h"

#define double_choices_cell_height 60.0f
#define double_choices_cell_padding 15.0f
#define screen_width 320.0f

@interface KTDoubleChoicesTableViewCell : UITableViewCell
@property (nonatomic) UISegmentedControl * segmentControl;
- (id)initWithSelectedIndex:(NSUInteger)selectedIndex;
- (void)addTarget:(id)target action:(SEL)action;
@end

@implementation KTDoubleChoicesTableViewCell

- (id)initWithSelectedIndex:(NSUInteger)selectedIndex {
    self = [super init];
    if (self) {
        _segmentControl = [[UISegmentedControl alloc] initWithItems:@[@"To Learn", @"To Anser"]];
        _segmentControl.selectedSegmentIndex = selectedIndex;
        
        NSDictionary *attributes = @{
                                     NSFontAttributeName: [UIFont systemFontOfSize:20.0f]
                                     };
        [_segmentControl setTitleTextAttributes:attributes forState:UIControlStateNormal];
        CGFloat controlWidth = (screen_width - double_choices_cell_padding * 2) / 2;
        [_segmentControl setWidth:controlWidth forSegmentAtIndex:0];
        [_segmentControl setWidth:controlWidth forSegmentAtIndex:1];
    }
    return self;
}

- (void)addTarget:(id)target action:(SEL)action {
    [self.segmentControl addTarget:target action:action forControlEvents:UIControlEventValueChanged];
}

- (void)layoutSubviews {
    CGSize size = self.bounds.size;
    CGSize scSize = self.segmentControl.frame.size;
    CGRect frame = CGRectMake( (size.width - scSize.width) / 2, (size.height - scSize.height) / 2, scSize.width, scSize.height);
    self.segmentControl.frame = frame;
    [self addSubview:self.segmentControl];
}

@end

@interface KTDoubleListTableViewController ()
@property (nonatomic) NSUInteger selectedIndex;
@property (nonatomic) KTQuestionListFetcher * firstQuestionListFetcher;
@property (nonatomic) KTQuestionListFetcher * secondQuestionListFetcher;
@end

@implementation KTDoubleListTableViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _firstQuestionListFetcher = [[KTQuestionListFetcher alloc] init];
        _secondQuestionListFetcher = [[KTQuestionListFetcher alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];
}

- (void)handleSegmentedControlChange:(id)sender {
    if ([sender isKindOfClass:[UISegmentedControl class]]) {
        UISegmentedControl * segmentedControl = (UISegmentedControl*)sender;
        self.selectedIndex = segmentedControl.selectedSegmentIndex;
        [self.tableView reloadData];
    }
}

#pragma mark UITableViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return SectionTotal;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case DoubleChoicesSection:
            return 1;
        case QuestionListSection:
            return self.selectedIndex == 0 ? 2 : 6;
        default:
            return 0;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case DoubleChoicesSection:
            return double_choices_cell_height;
        case QuestionListSection:
            return question_list_item_cell_height;
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == DoubleChoicesSection) {
        KTDoubleChoicesTableViewCell * doubleChoicesCell = [[KTDoubleChoicesTableViewCell alloc] initWithSelectedIndex:(self.selectedIndex)];
        [doubleChoicesCell addTarget:self action:@selector(handleSegmentedControlChange:)];
        return doubleChoicesCell;
    } else if (indexPath.section == QuestionListSection) {
        KTQuestionListItemCell * listItemCell = [tableView dequeueReusableCellWithIdentifier:question_list_item_cell_reuse_id];
        NSUInteger index = indexPath.row;
        KTQuestionListItem * listItem = self.selectedIndex == 0 ? [self.firstQuestionListFetcher listItemForIndex:index] : [self.secondQuestionListFetcher listItemForIndex:index];
        
        if (!listItemCell) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"KTQuestionListItemCell" owner:self options:nil];
            listItemCell = (KTQuestionListItemCell *)[nib objectAtIndex:0];
        }
        listItemCell.questionListItem = listItem;
        return listItemCell;
    }
    
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case DoubleChoicesSection:
            return NO;
        case QuestionListSection:
            return YES;
        default:
            return NO;
    }
}

@end