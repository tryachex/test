//
//  TheReadBookViewController.m
//  SecondApp
//
//  Created by admin on 14-3-12.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "TheReadBookViewController.h"

@interface TheReadBookViewController ()

@end

@implementation TheReadBookViewController
{
    CGSize winSize;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _TextView.text=_str;
    _TextView.font=[UIFont systemFontOfSize:19];
    _TextView.textColor=[UIColor blackColor];
    _TextView.backgroundColor=
    
    
    [UIColor colorWithPatternImage:[UIImage imageNamed:@"readText.jpg"]];
    _TextView.editable=NO;
    winSize=_TextView.contentSize;
    
    _allPages=_TextView.contentSize.height/430+1;
    _currentPage=1;
    _TextView.contentSize=self.view.frame.size;
    
    self.title=[NSString stringWithFormat:@"%d/%d",_currentPage,_allPages];
    
    UIGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureAction:)];
    tapGesture.delegate=self;
    
    [self.view addGestureRecognizer:tapGesture];
    UISwipeGestureRecognizer *leftswipeGesture=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(:)];
    leftswipeGesture.direction=UISwipeGestureRecognizerDirectionLeft;
    leftswipeGesture.delegate=self;
    [self.view addGestureRecognizer:leftswipeGesture];
    
    UISwipeGestureRecognizer *rightSwipeGesture=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(:)];
    rightSwipeGesture.direction=UISwipeGestureRecognizerDirectionRight;
    rightSwipeGesture.delegate=self;
    [self.view addGestureRecognizer:rightSwipeGesture];
    NSString *cont=[NSString stringWithContentsOfFile:_mCurrentPath];
    NSLog(@"path=%@",_mCurrentPath);
    _TextView.text=cont;
    
}
-(void)tapGestureAction:(UITapGestureRecognizer*) tapGesture
{
    NSLog(@"tapGesture");
    if (_cont++%2==0) {
        [self.navigationController setNavigationBarHidden:YES animated:YES];
    }
    else
    {
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }
}
-(void)lefswipeGestureAction:(UISwipeGestureRecognizer *) swipeGesture
{
    if (_currentPage==_allPages) {
        UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"The World is end" message:@"Here is the last page" delegate:self
    cancelButtonTitle:@"To find another world" otherButtonTitles:nil
                                ];
        [alertView show];
        return;
}
    _currentPage=_currentPage+1;
    NSLog(@"%d",_currentPage);
    self.title=[NSString stringWithFormat:@"%d/%d",_currentPage,_allPages];
    [UIView beginAnimations:Nil context:nil];
    [UIView setAnimationDuration:0.1];
    [_TextView setContentOffset:CGPointMake(0, (_currentPage+1)*430)];
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
    [UIView commitAnimations];
    
    return ;
}
-(void)RightSwipeGestureAction:(UIGestureRecognizer*) swipeGesture
{
    if (_currentPage==1) {
        UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"What you see is the first" message:@"Please find the next" delegate:self cancelButtonTitle:@"Sure" otherButtonTitles:nil];
        [alertView show];
        return ;
    }
    _currentPage=_currentPage-1;
    NSLog(@"%d",_currentPage);
    self.title=[NSString stringWithFormat:@"%d/%d",_currentPage,_allPages];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.1];
    [_TextView setContentOffset:CGPointMake(0, (_currentPage-1)*430)];
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
    
    [UIView commitAnimations];
    return ;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
