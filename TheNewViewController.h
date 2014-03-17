//
//  TheNewViewController.h
//  SecondApp
//
//  Created by admin on 14-3-12.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TheReadBookViewController.h"

@interface TheNewViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (nonatomic,strong) NSMutableArray *bookNames;
@property (nonatomic, strong) NSMutableArray *searchBookNames;
@property (nonatomic,retain) NSString *dir;//存贮路径
@property (nonatomic,retain) NSArray *contents;//路径下的内容
@end
