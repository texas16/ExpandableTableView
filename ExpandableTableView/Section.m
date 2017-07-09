//
//  Section.m
//  ExpandableTableView
//
//  Created by ilyas Uyanik on 7/8/17.
//  Copyright © 2017 ilyas. All rights reserved.
//

#import "Section.h"

@implementation Section
@synthesize genre, movies,expanded;

-(id) init :(NSString*) genre movieNames: (NSArray*) movies isExpanded:(BOOL) expanded
{
    self = [super init];
    if (!self) return nil;
    self.movies = movies;
    self.genre = genre;
    self.expanded = expanded;
    return self;
}

@end
