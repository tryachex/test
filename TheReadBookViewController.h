//
//  TheReadBookViewController.h
//  SecondApp
//
//  Created by admin on 14-3-12.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookMarkTableViewController.h"
#import "MenuViewController.h"

@interface TheReadBookViewController : UIViewController<UITextViewDelegate,UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *TextView;
@property(nonatomic) int currentPage;
@property(nonatomic) int allPages;
@property (nonatomic, strong) NSString *str;
@property(nonatomic) BOOL right;
@property(nonatomic) int cont;
@property(nonatomic)   CGFloat mScrollY;
@property(nonatomic) CGFloat mFontSize;
@property(nonatomic) CGFloat mTxtViewHeight;
@property(nonatomic) BOOL mIsInSColling;
@property(nonatomic) BOOL mIsInSearching;
@property(nonatomic) NSString *mCurrentPath;
@property(nonatomic) NSString *mBookName;
@property(nonatomic) NSString *mCurrentKeyWord;
@property(nonatomic) NSArray *realColorArray;
@property(nonatomic) BookMarkTableViewController *bookmarksTVC;
-(void) autoScrolling:(id)sender;
-(void) updateTimer:(NSTimer *) theTimer;
-(void) setCustomMenu;
-(NSString *) dataFilePath;
@end
