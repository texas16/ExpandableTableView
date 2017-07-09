//
//  Section.h
//  ExpandableTableView
//
//  Created by ilyas Uyanik on 7/8/17.
//  Copyright © 2017 ilyas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Section : NSObject

@property (nonatomic, strong) NSString * genre;
@property (nonatomic, strong) NSArray * movies;
@property (nonatomic, assign) BOOL expanded;

-(id) init :(NSString*) genre movieNames: (NSArray*) movies isExpanded:(BOOL) expanded;

@end
