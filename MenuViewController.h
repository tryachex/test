//
//  MenuViewController.h
//  SecondApp
//
//  Created by admin on 14-3-15.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"
#import <sqlite3.h>
#import "BookMarkTableViewController.h"

@interface MenuViewController : UIViewController

@property(nonatomic) UIBarButtonItem *searchBarButton;
@property(nonatomic) UIBarButtonItem *addBBookmarkBarButton;
@property(nonatomic) UIBarButtonItem *fontsize;
@property(nonatomic) UIBarButtonItem *fontColor;
@property(nonatomic) UIBarButtonItem *timeBarButton;
@property(nonatomic) sqlite3 *dataBase;
@property(nonatomic) BookMarkTableViewController *bookmarksTVC;
-(void) searchTxr:(id)sender;
-(void) addOneBookMark:(id)sender;
-(void) gotBookmarks:(id)sender;
@end
