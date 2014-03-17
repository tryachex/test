//
//  Tour.m
//  SecondApp
//
//  Created by admin on 14-3-6.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "Tour.h"
static BOOL tourVisble=YES;
static NSMutableArray *arrayOfAllLocatedTours;
@implementation Tour
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.bubblesArray=[[NSMutableArray alloc] init];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setUserInteractionEnabled:NO];
        
    }
    if (arrayOfAllLocatedTours==nil) {
        arrayOfAllLocatedTours=[[NSMutableArray alloc] init];
    }
    [arrayOfAllLocatedTours addObject:self];
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
-(void)setBubbles:(NSMutableArray *)arrayOfBubbles
{
    self.bubblesArray=arrayOfBubbles;
    
    for (Bubble *bubble in self.bubblesArray) {
        if (bubble.attachedView!=nil) {
            [self addSubview:bubble];
            if (!tourVisble) {
                [bubble setAlpha:0.0 ];
            }
        }
    }
}
-(void) setVisble:(BOOL)visible
{
    tourVisble=visible;
    [self refreshBubblesVisibility];
}
-(BOOL)isVisible
{
    return tourVisble;
}
-(void)refreshBubblesVisibility
{
    for (Tour *atour in arrayOfAllLocatedTours) {
        for (Bubble *abubble in atour.bubblesArray) {
            if (tourVisble) {
                [UIView beginAnimations:nil context:nil];
                [UIView setAnimationDuration:0.3];
                [abubble setAlpha:1.0];
                [UIView commitAnimations];
            }
            else
            {
                [UIView beginAnimations:nil context:nil];
                [UIView setAnimationDuration:0.3];
                [abubble setAlpha:0.0];
                [UIView commitAnimations];
            }
        }
    }
}


@end
