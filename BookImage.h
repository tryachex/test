//
//  BookImage.h
//  SecondApp
//
//  Created by admin on 14-3-9.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookModal.h"
@protocol BookImageDelegate;
@interface BookImage : UIButton
{
    BookModal *bookModel;
    UIImageView *_bookImage;
}
@property(nonatomic,retain) UIImageView *bookImage;
@property(strong, nonatomic) id<BookImageDelegate>delegate;
-(id)initWithFrame:(CGRect)frame imageName:(NSString *)imagename;

@end
@protocol BookImageDelegate <NSObject>

-(void) bookImageDidClicked:(BookImage*) bookImage;

@end

