//
//  ExpandableHeaderFoorterView.m
//  ExpandableTableView
//
//  Created by ilyas Uyanik on 7/8/17.
//  Copyright © 2017 ilyas. All rights reserved.
//

#import "ExpandableHeaderFoorterView.h"


@implementation ExpandableHeaderFoorterView

@synthesize section;
@synthesize headerDelegate;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- (id)customInit:initWithTitle:(NSString*)title withSection: (int) section withDelegate :(id<ExpandableHeaderFooterViewDelegate>)delegate
//{
//    self.textLabel.text = title;
//    self.section = section;
//    self.headerDelegate = delegate;
//    return self;
//}

- (id)initWithCustom:(NSString*)title withSection:(NSInteger)section withDelegate:(id<ExpandableHeaderFooterViewDelegate>)delegate {
    self = [super init];
    if (self) {
        self.textLabel.text = title;
        self.section = section;
        self.headerDelegate = delegate;
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

//- (id)reuseIdentifier:(NSString *)reuseIdentifier
//{
//    
//    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
//        self.selectionStyle = UITableViewCellSelectionStyleNone;
//        
//        // Initialization code
//        msgText = [[UILabel alloc] init];
//        [self.contentView addSubview:msgText];
//    }
//    return self;
//}

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selectHeaderAction:)];
        [self addGestureRecognizer:tapGesture];
    }
    return self;

}

-(void) selectHeaderAction :(UITapGestureRecognizer*) gestureRecognizer
{

    ExpandableHeaderFoorterView* cell = (ExpandableHeaderFoorterView*)gestureRecognizer.view;
    [headerDelegate toggleSection:self withSection: cell.section];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.textLabel.textColor = [UIColor whiteColor];
    self.contentView.backgroundColor = [UIColor darkGrayColor];

}

- (void)toggleSection:(ExpandableHeaderFoorterView*) headerView withSection: (int) section
{



}


@end
