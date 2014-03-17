//
//  RatingView.m
//  SecondApp
//
//  Created by admin on 14-3-9.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "RatingView.h"

@implementation RatingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void) setRating:(CGFloat)rating
{
    rating=_rating;
    CGRect rect=CGRectMake(foregroundImageView.frame.origin.x, foregroundImageView.frame.origin.y, backgroundImageView.frame.size.width*(_rating/10),foregroundImageView.frame.size.height);
    foregroundImageView.frame=rect;
}
-(UIView*) creatView
{
    UIImage *bgImage=[UIImage imageNamed:@"StarsBackground1.png"];
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bgImage.size.width, bgImage.size.height)];
    backgroundImageView=[[UIImageView alloc] initWithImage:bgImage];
    [view addSubview:backgroundImageView];
    
    UIImage *fgImage=[UIImage imageNamed:@"StarsForeground1.png"];
    foregroundImageView=[[UIImageView alloc] initWithImage:fgImage];
    
    foregroundImageView.contentMode=UIViewContentModeBottomLeft;
    foregroundImageView.clipsToBounds=YES;
    [view addSubview:foregroundImageView];
    return view;
}

@end
