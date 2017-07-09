# ExpandableTableView
This is a subclass of UITableView where you can expand the header. Download the project and see the example.

// All you need is to update to the following in the ViewController.m

movies = [[NSArray alloc] initWithObjects:
              (NSArray*)[[Section alloc ] init:@"Istanbul" movieNames:@[@"Uskudar", @"Sariyer"] isExpanded:false],
              (NSArray*)[[Section alloc ] init:@"Bursa" movieNames:@[@"Osmangazi", @"Mudanya", @"Nilufer"]
               isExpanded:false],
              (NSArray*)[[Section alloc ] init:@"Antalya" movieNames:@[@"Alanya", @"Kas"] isExpanded:false], nil
              ];

![image1](https://user-images.githubusercontent.com/17837522/27990405-b3cff0e6-641b-11e7-9c6a-4f8130304336.PNG)

![image2](https://user-images.githubusercontent.com/17837522/27990412-df844796-641b-11e7-9fee-8e52cdb7c118.PNG)

