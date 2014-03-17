//
//  ViewController.h
//  SecondApp
//
//  Created by admin on 14-3-4.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tour.h"

@interface ViewController : UIViewController
{
    Tour *productTourView;
}
@property(weak,nonatomic) IBOutlet UIButton *button1;
@property(weak,nonatomic) IBOutlet UIButton *button2;
@property(weak, nonatomic) IBOutlet UIButton *button3;
@property(weak, nonatomic) IBOutlet UIButton *button4;
@property(weak, nonatomic) IBOutlet UIButton *button5;
@property(weak, nonatomic) IBOutlet UIButton *button6;
@property(weak, nonatomic) IBOutlet UIButton *buttonNode;
@property(weak, nonatomic) IBOutlet UILabel *appTitle;
-(IBAction)buttonNodeAction:(id)sender;
@end
