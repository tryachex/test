//
//  ViewController.m
//  SecondApp
//
//  Created by admin on 14-3-4.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.appTitle setFont:[UIFont fontWithName:@"BebasNeue" size:40]];
    productTourView=[[Tour alloc] initWithFrame:self.view.frame];
    Bubble *bubbleButton1=[[Bubble alloc]
                           initWithAttachedView:_button1 title:@"111"
                           description:@"dsadasd"
                        arrowPosition:arrowPositionFirst andColor:nil
                           ];
    Bubble *bubbleButton2=[[Bubble alloc] initWithAttachedView:_button2 title:@"222" description:@"aaaaa" arrowPosition:arrowPositionSecond andColor:nil];
    Bubble *bubbleButton3=[[Bubble alloc] initWithAttachedView:_button3 title:@"333" description:@"qqqq" arrowPosition:arrowPositionThird andColor:nil];
    Bubble *bubbleButton4=[[Bubble alloc] initWithAttachedView:_button4 title:@"444" description:@"wwwww" arrowPosition:arrowPositionFourth andColor:nil];
    Bubble *bubbleButton5=[[Bubble alloc] initWithAttachedView:_button5 title:@"555" description:@"hhhhhh" arrowPosition:arrowPositionFifth andColor:nil];
    Bubble *bubbleButton6=[[Bubble alloc] initWithAttachedView:_button6 title:@"666" description:@"PPPPPP" arrowPosition:arrowPositionSixth andColor:nil];
    NSMutableArray *bubbleArray=[[NSMutableArray alloc] initWithObjects:bubbleButton1,bubbleButton2,bubbleButton3,bubbleButton4,bubbleButton5,bubbleButton6, nil];
    [productTourView setBubbles:bubbleArray];
    [self.view addSubview:productTourView];
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"past.jpg"]];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)buttonNodeAction:(id)sender
{
    [productTourView setVisble:![productTourView isVisible]];
}
@end
