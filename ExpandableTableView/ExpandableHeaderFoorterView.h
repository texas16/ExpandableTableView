//
//  ExpandableHeaderFoorterView.h
//  ExpandableTableView
//
//  Created by ilyas Uyanik on 7/8/17.
//  Copyright © 2017 ilyas. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ExpandableHeaderFoorterView;


@protocol ExpandableHeaderFooterViewDelegate <NSObject>

@required
- (void)toggleSection:(ExpandableHeaderFoorterView*) headerView withSection: (int) section;

@end


@interface ExpandableHeaderFoorterView : UITableViewHeaderFooterView

@property (nonatomic, weak) id <ExpandableHeaderFooterViewDelegate> headerDelegate;
@property (nonatomic, assign) int section;

- (id)initWithCustom :(NSString*)title withSection: (int) section withDelegate :(id<ExpandableHeaderFooterViewDelegate>)delegate;


@end
