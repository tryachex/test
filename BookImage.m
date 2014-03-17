//
//  BookImage.m
//  SecondApp
//
//  Created by admin on 14-3-9.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "BookImage.h"

@implementation BookImage
@synthesize  bookImage=_bookImage;
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame imageName:(NSString *)imagename
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundImage:[UIImage imageNamed:imagename] forState:UIControlStateNormal ];
        self.frame=frame;
        UITapGestureRecognizer *tapPress=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickItem:)];
        tapPress.numberOfTapsRequired=1;
        [self addGestureRecognizer:tapPress];
        
        UILongPressGestureRecognizer *longPress=[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressesLong:)];
        [self addGestureRecognizer:longPress];
    }
    return self;
}
-(void) clickItem:(id) sender
{
    [delegate bookImageDidClicked:self];
}
-(void) pressedLong:(UILongPressGestureRecognizer*) gestureRecognizer
{
    switch (gestureRecognizer.state) {
        case UIGestureRecognizerStateBegan:
            NSLog(@"长按开始");
            self.alpha=0.5;
            break;
            case  UIGestureRecognizerStateEnded:
            NSLog(@"长按结束");
            self.alpha=1;
            break;
            case UIGestureRecognizerStateFailed:
            NSLog(@"长按失败");
            break;
            case UIGestureRecognizerStateChanged:
            NSLog(@"长按变化中");
            break;
        default:
            break;
    }
}
@end
