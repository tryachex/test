//
//  Tour.h
//  SecondApp
//
//  Created by admin on 14-3-6.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Bubble.h"

@interface Tour : UIView
@property(nonatomic, strong) NSMutableArray *bubblesArray;
-(void) setBubbles:(NSMutableArray *)arrayOfBubbles;
-(void) setVisble:(BOOL) visible;
-(BOOL) isVisible;
@end
