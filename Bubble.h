//
//  Bubble.h
//  SecondApp
//
//  Created by admin on 14-3-6.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum
{
    arrowPositionNode,
    arrowPositionFirst,
    arrowPositionSecond,
    arrowPositionThird,
    arrowPositionFourth,
    arrowPositionFifth,
    arrowPositionSixth
} arrowPosition;

@interface Bubble : UIView
{
    NSArray *stringArray;
    int maxWidth;
}
@property(nonatomic,strong) UIView *attachedView;
@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *description;
@property(nonatomic,assign) arrowPosition arrowposition;
@property(nonatomic,strong) UIColor *color;
-(id) initWithAttachedView:(UIView*)view title:(NSString *)title description:(NSString*)description arrowPosition:(arrowPosition) arrowPosition andColor:(UIColor *) color;
-(CGSize)size;
-(CGRect)frame;


@end
