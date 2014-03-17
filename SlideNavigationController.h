//
//  SlideNavigationController.h
//  SecondApp
//
//  Created by admin on 14-3-14.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@protocol SlideNavigationControllerDelegate<NSObject>
@optional
-(BOOL) slideNavigationControllerShouldDisplayRightMenu;
-(BOOL) slideNavigationControllerShouldDisplayLeftMenu;
@end
typedef enum
{
    MenuLeft,
    MenuRight
} Menu;
@interface SlideNavigationController : UINavigationController<UINavigationControllerDelegate>
@property(nonatomic) BOOL avoidSwitchingToSameClassViewController;
@property(nonatomic) BOOL enableSwipeGesture;
@property(nonatomic) UIViewController *rightMenu;
@property(nonatomic) UIViewController *leftMenu;
@property(nonatomic) UIBarButtonItem *leftButtonItem;
@property(nonatomic) UIBarButtonItem *rightButtonItem;
+(SlideNavigationController *) shareInstance;
-(void) switchToViewController:(UIViewController*)viewController withCompletion:(void(^)())completion;
@end
