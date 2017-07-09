//
//  ViewController.h
//  ExpandableTableView
//
//  Created by ilyas Uyanik on 7/8/17.
//  Copyright © 2017 ilyas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExpandableHeaderFoorterView.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, ExpandableHeaderFooterViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *expandableTableView;
@property (strong, nonatomic) NSArray* movies;

@end

