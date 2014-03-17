//
//  SlideNavigationController.m
//  SecondApp
//
//  Created by admin on 14-3-14.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "SlideNavigationController.h"
#define MENU_OFFSET 60
#define MENU_SLIDE_ANIMATION_DURATION .3
#define MENU_QUICK_SLIDE_ANIMATION_DURATION .1
#define MENU_IMAGE @"menu-button"
static SlideNavigationController *singletonInstance;
@interface SlideNavigationController ()

@end

@implementation SlideNavigationController
{
    UITapGestureRecognizer *tapRecognizer;
    UIPanGestureRecognizer *panRecognizer;
    CGPoint draggingPoint;
}
+(SlideNavigationController *) shareInstance
{
    return singletonInstance;
}
-(void)awakeFromNib
{
    [self setup];
}
-(id) initWithRootViewController:(UIViewController *)rootViewController
{
    if (self=[super initWithRootViewController:rootViewController]) {
        [self setup];
    }
    return self;
}
-(id) init
{
    if (self==[super init]) {
        [self setup];
    }
    return self;
}
#pragma mark-Initialization-

-(void) setup
{
    self.avoidSwitchingToSameClassViewController=YES;
    singletonInstance=self;
    self.delegate=self;
    
    self.view.layer.shouldRasterize=YES;
    self.view.layer.rasterizationScale=[UIScreen mainScreen].scale;
    [self setEnableSwipeGesture:YES];
    
}

/*#pragma mark -Public Methods-
-(void) switchToViewController:(UIViewController *)viewController withCompletion:(void (^)())completion
{
    if (self.avoidSwitchingToSameClassViewController&&[self.topViewController isKindOfClass:viewController.class]) {
        [self closeMenuWithCompletion:completion];
        return ;
    }
    __block CGRect rect=self.view.frame;
    if ([self isMenuOpen]) {
        [UIView animateWithDuration:MENU_SLIDE_ANIMATION_DURATION delay:0 options:UIViewAnimationCurveEaseOut animations:^{
            rect.origin.x=(rect.origin.x>0)?rect.size.width:-1*rect.size.width;
            self.view.frame=rect;
        }completion:^(BOOL finished)
         {
             [super popToRootViewControllerAnimated:NO];
             [super pushViewController:viewController animated:NO];
             [self closeMenuWithCompletion:^{
                 if (completion) {
                     completion();
                 }
             }];
         }];
    }
    else
    {
        [super popToRootViewControllerAnimated:NO];
        [super pushViewController:viewController animated:YES];
        if (completion) {
            completion();
        }
    }
}
-(NSArray *) popToRootViewControllerAnimated:(BOOL)animated
{
    if ([self ]) {
        [self closeMenuWithCompletion:^{
            [super popToRootViewControllerAnimated:animated];
        }];
    }
        else
        {
            return [super popToRootViewControllerAnimated:animated];
        }
    
    return Nil;
}
-(void) pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self isMenuOpen]) {
        [self closeMenuWithCompletion:^{
            [super pushViewController:viewController animated:animated];
        }];
    }
        else
        {
            [super pushViewController:viewController animated:animated];
        }
    
}
-(NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self isMenuOpen]) {
        [self closeMenuWithCompletion:^{
            [super popToViewController:viewController animated:animated];
        }];
    }
    else
    {
        return [super popToViewController:viewController animated:animated];
    }
    return nil;
}
#pragma mark - Private Methods-
-(UIBarButtonItem*)barButtonItemForMenu:(Menu) menu
{
    SEL selector=(menu==MenuLeft)?@selector(leftMenuSelected:):@selector(rightMenuSelected:);
    UIBarButtonItem *customButton=(menu==MenuLeft)?self.leftButtonItem:self.rightButtonItem;
    if (customButton) {
        customButton.action=selector;
        customButton.target=self;
        return customButton;
    }
    else
    {
        UIImage *image=[UIImage imageNamed:MENU_IMAGE];
        return [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:selector];
    }
}

-(void)closeMenuWithDuration:(float) duration andCompletion:(void)(^)()) completion
{
    [self.topViewController.view removeGestureRecognizer:self.t];
    [UIView animateKeyframesWithDuration:duration delay:0 options:UIViewAnimationCurveEaseOut animations:^{
        CGRect rect=self.view.frame;
        rect.origin.x=0;
        self.view.frame=rect;
    }completion:^(BOOL finished){
        if (completion) {
            completion();
        }
    }];
}
-(
-(void) closeMenuWithCompletion:((void)(^)())completion
{
    [self closeMenuWithDuration:MENU_SLIDE_ANIMATION_DURATION andCompletion:completion];
}
-(BOOL)isMenuOpen
{
    return (self.view.frame.origin.x==0)?NO:YES;
}
-(BOOL) shouldDispalyMenu:(Menu) menu forViewController:(UIViewController*) vc
   {
       if()
   }

*/

@end
