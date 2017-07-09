//
//  ViewController.m
//  ExpandableTableView
//
//  Created by ilyas Uyanik on 7/8/17.
//  Copyright © 2017 ilyas. All rights reserved.
//

#import "ViewController.h"
#import "Section.h"
#import "ExpandableHeaderFoorterView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize expandableTableView,movies;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    movies = [[NSArray alloc] initWithObjects:
              (NSArray*)[[Section alloc ] init:@"Istanbul" movieNames:@[@"Uskudar", @"Sariyer"] isExpanded:false],
              (NSArray*)[[Section alloc ] init:@"Bursa" movieNames:@[@"Osmangazi", @"Mudanya", @"Nilufer"]
               isExpanded:false],
              (NSArray*)[[Section alloc ] init:@"Antalya" movieNames:@[@"Alanya", @"Kas"] isExpanded:false], nil
              ];
    //[[Section alloc] init:"Animation" : moviesNames: @[@"The", @"Incredible"]: isExpanded: false]

   // id a = [[Section alloc ] init:@"hi" movieNames:@[@"hi", @"b"] isExpanded:false];
            
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return movies.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ((Section*)movies[section]).movies.count ;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 44;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(((Section*)movies[indexPath.section]).expanded)
    {
      return 44;
    } else {
        return 0;
    }
    //CGFloat cg = ((Section*)movies[indexPath.section]).expanded ? 44: 0;
    return 44;
    //((Section*)movies[indexPath.section]).expanded ? 44: 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 2;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    ExpandableHeaderFoorterView* headerView = [[ExpandableHeaderFoorterView alloc] initWithCustom:((Section*)movies[section]).genre withSection:(int)section withDelegate:self];
    return (ExpandableHeaderFoorterView*)headerView;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text =  ((Section*)movies[indexPath.section]).movies[indexPath.row];
    return cell;
}

-(void)toggleSection:(ExpandableHeaderFoorterView *)headerView withSection:(int)section
{

    ((Section*)movies[section]).expanded = !((Section*)movies[section]).expanded;
    
    [expandableTableView beginUpdates];
    
    for (int i= 0; i< ((Section*)movies[section]).movies.count; i++)
    {
        NSArray* rowsToReload = [NSArray arrayWithObjects:[NSIndexPath indexPathForRow:i inSection:section], nil];
        [expandableTableView reloadRowsAtIndexPaths:rowsToReload
 withRowAnimation:UITableViewRowAnimationFade];
    }
    
    [expandableTableView endUpdates];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
